-- alt --

local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()
local altDown = false

mouse.Button1Down:Connect(function()
if mouse.Target then
if altDown == true then
mouse.Target:Destroy()
end
end
end)

mouse.KeyDown:Connect(function(key)
if key:byte() == 52 and altDown == false then
altDown = true
spawn(function()
while altDown == true do
wait()
end
end)
end
end)

mouse.KeyUp:Connect(function(key)
if key:byte() == 52 then
altDown = false
end
end)
