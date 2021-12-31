addCommandHandler("servertext3d", function(thePlayer)
    local x, y, z = getElementPosition(thePlayer)
    --[treść] [x] [y] [z] [r] [g] [b] [a] [rozmiar] [dystans]
    exports.text3d:addServer3DText("Tekst dla wszystkich graczy, odświeża się po dodaniu nowego tekstu i po połączeniu nowego gracza, strona server'a.", x, y, z, 255, 255, 255, 255, 2, 50)
end)