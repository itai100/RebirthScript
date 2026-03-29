local PlayerSection = MainTab:CreateSection("Player / Fun")

local player = game.Players.LocalPlayer

-- 🪶 FLY
MainTab:CreateButton({
   Name = "Fly",
   Callback = function()
       local char = player.Character or player.CharacterAdded:Wait()
       local hrp = char:WaitForChild("HumanoidRootPart")

       local bv = Instance.new("BodyVelocity")
       bv.Velocity = Vector3.new(0,0,0)
       bv.MaxForce = Vector3.new(9e9,9e9,9e9)
       bv.Parent = hrp

       local bg = Instance.new("BodyGyro")
       bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
       bg.CFrame = hrp.CFrame
       bg.Parent = hrp

       game:GetService("RunService").RenderStepped:Connect(function()
           bv.Velocity = workspace.CurrentCamera.CFrame.LookVector * 60
           bg.CFrame = workspace.CurrentCamera.CFrame
       end)
   end,
})

-- ❌ STOP FLY
MainTab:CreateButton({
   Name = "Stop Fly",
   Callback = function()
       local char = player.Character
       if char then
           local hrp = char:FindFirstChild("HumanoidRootPart")
           if hrp then
               for _,v in pairs(hrp:GetChildren()) do
                   if v:IsA("BodyVelocity") or v:IsA("BodyGyro") then
                       v:Destroy()
                   end
               end
           end
       end
   end,
})

-- 🦘 SUPER JUMP
MainTab:CreateButton({
   Name = "Super Jump",
   Callback = function()
       local hum = player.Character:WaitForChild("Humanoid")
       hum.JumpPower = 120
   end,
})

-- 🔁 RESET JUMP
MainTab:CreateButton({
   Name = "Normal Jump",
   Callback = function()
       local hum = player.Character:WaitForChild("Humanoid")
       hum.JumpPower = 50
   end,
})

-- ⚡ SPEED
MainTab:CreateButton({
   Name = "Speed 100",
   Callback = function()
       local hum = player.Character:WaitForChild("Humanoid")
       hum.WalkSpeed = 100
   end,
})

-- 🐢 NORMAL SPEED
MainTab:CreateButton({
   Name = "Normal Speed",
   Callback = function()
       local hum = player.Character:WaitForChild("Humanoid")
       hum.WalkSpeed = 16
   end,
})

-- ♾️ INFINITE JUMP
local infJump = false

MainTab:CreateButton({
   Name = "Toggle Infinite Jump",
   Callback = function()
       infJump = not infJump
   end,
})

game:GetService("UserInputService").JumpRequest:Connect(function()
   if infJump then
       local hum = player.Character:FindFirstChildOfClass("Humanoid")
       if hum then
           hum:ChangeState("Jumping")
       end
   end
end)

-- 👻 NOCLIP
local noclip = false

MainTab:CreateButton({
   Name = "Toggle Noclip",
   Callback = function()
       noclip = not noclip
   end,
})

game:GetService("RunService").Stepped:Connect(function()
   if noclip then
       for _,v in pairs(player.Character:GetDescendants()) do
           if v:IsA("BasePart") then
               v.CanCollide = false
           end
       end
   end
end)

-- 💀 RESET CHARACTER
MainTab:CreateButton({
   Name = "Reset Character",
   Callback = function()
       player.Character:BreakJoints()
   end,
})
