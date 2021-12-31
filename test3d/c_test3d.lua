addCommandHandler("clienttext3d", function()
    local x, y, z = getElementPosition(localPlayer)
    --[treść] [x] [y] [z] [r] [g] [b] [a] [rozmiar] [dystans]
    exports.text3d:addLocal3DText(localPlayer, "Tekst tylko dla jednego gracza, strona client'a.", x, y, z, 255, 255, 255, 255, 2, 50)
end)