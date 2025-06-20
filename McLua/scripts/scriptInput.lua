_G.mod = {}
mod.inp = " "
function _G.InputBindPort()
    return "InputBind:StaticDown"
end

function _G.InputTouchOncePort()
    return "InputBind:OnceTapStop"
end

function mod:InputChord(action, inputPort, key)
    if not inputPort then return end
    local address = { inputPort(), key }

    if address[1] == "InputBind:StaticDown" then
        if love.keyboard.isDown(address[2]) then
            action()
        end
    end

    if address[1] == "InputBind:OnceTapStop" then
        if mod.inp == key then
            action()
            mod.inp = " "
        end
    end
end

function love.keypressed(key)
    mod.inp = key
end

return mod