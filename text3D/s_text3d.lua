local text3D = {}

addEventHandler("onPlayerJoin", root, function()
    triggerClientEvent(source, "3dtext:synchronize3DText", source, text3D)
end)

function addServer3DText (...)
    local args = {...}
    if #args < 10 then return
        outputDebugString("text3DServer: Argumenty funkcji: [treść] [x] [y] [z] [r] [g] [b] [a] [rozmiar] [dystans]", 3, 255, 0, 0)
    end
    for i=2, 10 do
        args[i] = tonumber(args[i])
    end

    table.insert(text3D, {args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], args[10]})
    triggerClientEvent(root, "3dtext:synchronize3DText", root, text3D)
end