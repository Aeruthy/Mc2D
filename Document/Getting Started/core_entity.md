# Getting Started with Mc2D.entity Extension
Using the 'Mc2D.entity' Extension, You will be able to Create 
and Manage Entities Using Tags with Ports.

# Examples Of Mc2D.entity
A Brief Example of Using Mc2D.entity:
```lua
function love.load()
   -- Summon with Your Port, To learn More About Ports, There will be-
   -- Some Documents For those aswell.
   Mc2D.entity:SummonByPort("MainTag", ControllableEntityPort, {})
   -- In this Entity, The Port used Allows it to Move Freely.

   -- To Set What Shape of Object That is Getting Drawn.
   -- (OutDrawnLine is A Port Made for Line Related Drawings).
   Mc2D.entity:SetDrawAttribute("MainTag", {OutDrawnLine, 25, 25})
   -- You Need to Pass the MainTag of your Entity, In This Case
   -- It's "MainTag".

   -- This is Where it Gets Spicy.
   -- This is How you Program Your Entities, (Movement, etc)
   Mc2D.entity:ControlMobLogic("MainTag", function(tick)
      -- Do What you Want in Here.
   end
end

function love.update(dt)
   Mc2D:UPDATE(dt)
end

function love.draw()
   Mc2D:SRAW()
end
```
This Code Allows you To Draw a Object In The Screen With the Mc2D.entity Module, 

Depending on how many Arguments you
Supplied to The Last Arg of SetDrawAttribute, It Will Depend if The Object is a Circle or Not.
