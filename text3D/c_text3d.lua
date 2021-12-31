local text3D = {}
local text3DClient = {}

addEvent("3dtext:synchronize3DText", true)
addEventHandler("3dtext:synchronize3DText", root, function(args)
    text3D = {}
    text3D = args
    for i, v in ipairs(text3DClient) do
        table.insert(text3D, {v[1], v[2], v[3], v[4], v[5], v[6], v[7], v[8], v[9], v[10]})
    end
end)

local function dxDraw3DText(text, x, y, z, red, blue, green, alpha, size, maxDistance) 
    if text and x and y and z and red and blue and green and alpha and size and maxDistance then 
        local a, b, c = getElementPosition (localPlayer) 
        local thex, they, thez = getScreenFromWorldPosition( x, y, z ) 

        if a and b and c and thex and they and thez <= maxDistance then 
            if thex and they then 
                dxDrawText( text, thex, they, _, _, tocolor(red, blue, green, alpha), size, "default", "center", "center" ) 
            end 
        end 
    end 
end

addEventHandler("onClientRender", root, function()
    for i, v in ipairs(text3D) do
        dxDraw3DText(v[1], v[2], v[3], v[4], v[5], v[6], v[7], v[8], v[9], v[10]) 
    end
end)

function addLocal3DText(thePlayer, ...)
    local args = {...}
    if #args < 10 then return
        outputDebugString("text3DClient: Argumenty funkcji: [treść] [x] [y] [z] [r] [g] [b] [a] [rozmiar] [dystans]", 3, 255, 0, 0)
    end
    for i=2, 10 do
        args[i] = tonumber(args[i])
    end

    table.insert(text3DClient, {args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10]})
    table.insert(text3D, {args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10]})
end