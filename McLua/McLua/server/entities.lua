_G.mob = {}
mob.Mobs = {}

function _G.ControllableEntityPort()
    return "Port:ControlEntity"
end

function _G.EntityPort()
    return "Port:EntityNonFree"
end

function _G.OutlineDrawnMode()
    return "line"
end

function mob:SummonByPort(MainTag, port, attr)
    local temp = { tags = {} }
    temp.position = { x = 100, y = 100 }
    if not port or not port and not MainTag then 
        print("[!]: Error Raised! A Mob with No Port or MainTag is not Valid.")
        return 
    end

    if port() == "Port:EntityNonFree" then
        temp.attr = attr
        temp.port = port()
        temp.tags[1] = MainTag
        print("[@]: Made Entity at " .. port() .. ", Success.")
    elseif port() == "Port:ControlEntity" then
        if not attr then 
            print("[!]: Error Raised! A Mob with "..port().." Cannot Be Made without <attr>.")
            return
        end
        temp.attr = attr
        temp.port = port()
        temp.tags[1] = MainTag
        print("[@]: Made Entity at " .. port() .. ", Success.")
    end

    table.insert(self.Mobs, temp)
end

function mob:ControlMobLogic(MainTag, logic)
    for i, v in ipairs(self.Mobs) do
        if v.tags[1] == MainTag then
            print("[@]: Updated Script Logic of Entity with "..MainTag.." At ".. v.port)
            v.attr.script = logic
        end
    end
end

function mob:SetDrawAttribute(MainTag, Data)
    for i, v in ipairs(self.Mobs) do
        if v.tags[1] == MainTag then
            print("[@]: Overriden Drawing of Entity with "..MainTag.." At ".. v.port)
            v.attr.sraw = function()
                DataName = Data[1]()
                love.graphics.rectangle(DataName, v.position.x, v.position.y, Data[2], Data[3])
            end
        end
    end
end

return mob