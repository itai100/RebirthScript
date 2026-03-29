local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Rebirth Mania Script 🎁",
   LoadingTitle = "Itay Hub",
   LoadingSubtitle = "by Itay",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "Rebirth Mania | key 🔑 ",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = true,
      Key = {"https://pastebin.com/raw/WXng6d0M"}
   }
})

local MainTab = Window:CreateTab("🎁Home", nil)
local MainSection = MainTab:CreateSection("Teleport")    

Rayfield:Notify({
   Title = "You executed the script",
   Content = "GL",
   Duration = 5,
   Image = nil,
   Actions = {
      Ignore = {
         Name = "Okay!",
         Callback = function()
            print("The user tapped Okay!")
         end
      },
   },
})    

-- 🌍 TELEPORTS

MainTab:CreateButton({
   Name = "Teleport VIP",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(125.7, 63.8, 6467.7)
   end,
})

MainTab:CreateButton({
   Name = "Teleport Spawn",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90, 39, 6038.4)
   end,
})

MainTab:CreateButton({
   Name = "Teleport Forest",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.3, -26, 4696)
   end,
})

MainTab:CreateButton({
   Name = "Teleport Candy",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(793.1, 29.8, 5098.8)
   end,
})

MainTab:CreateButton({
   Name = "Teleport Beach",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(774.4, 30.5, 5396)
   end,
})

MainTab:CreateButton({
   Name = "Teleport Volcanic",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(766.2, 30, 5708)
   end,
})

MainTab:CreateButton({
   Name = "Teleport Darkness",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(785, 30, 5975)
   end,
})

MainTab:CreateButton({
   Name = "Teleport Lucid",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(751, 93, 6258)
   end,
})

MainTab:CreateButton({
   Name = "Teleport Hacker",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(769, 30, 6738)
   end,
})

MainTab:CreateButton({
   Name = "Teleport Void",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(763, 30, 7020)
   end,
})

-- 🧪 POTIONS TAB (תיקון + הוספה)
local PotionTab = Window:CreateTab("🧪Potion", nil)
local PotionSection = PotionTab:CreateSection("Potions")

PotionTab:CreateButton({
   Name = "INF 5X SECRET",
   Callback = function()
       game:GetService("ReplicatedStorage")
       :WaitForChild("PotionEvent")
       :WaitForChild("GodPotion")
       :FireServer(1000000000000001900)
   end,
})

PotionTab:CreateButton({
   Name = "INF 3X TAPS",
   Callback = function()
       game:GetService("ReplicatedStorage")
       :WaitForChild("PotionEvent")
       :WaitForChild("TapPotion")
       :FireServer(99999996451)
   end,
})

PotionTab:CreateButton({
   Name = "INF 3X GEMS",
   Callback = function()
       game:GetService("ReplicatedStorage")
       :WaitForChild("PotionEvent")
       :WaitForChild("GemsPotion")
       :FireServer(99999999999999680)
   end,
})

PotionTab:CreateButton({
   Name = "INF 2X LUCK",
   Callback = function()
       game:GetService("ReplicatedStorage")
       :WaitForChild("PotionEvent")
       :WaitForChild("LuckPotion")
       :FireServer(99999999999999995187)
   end,
})

PotionTab:CreateButton({
   Name = "INF 3X LUCK",
   Callback = function()
       game:GetService("ReplicatedStorage")
       :WaitForChild("PotionEvent")
       :WaitForChild("LuckPotion2")
       :FireServer(99999999999999995113)
   end,
})

PotionTab:CreateButton({
   Name = "INF 4X LUCK",
   Callback = function()
       game:GetService("ReplicatedStorage")
       :WaitForChild("PotionEvent")
       :WaitForChild("LuckPotion3")
       :FireServer(1000000000871)
   end,
})
-- 😈 PLAYER TAB (חדש)
local PlayerTab = Window:CreateTab("😈Player", nil)
local PlayerSection = PlayerTab:CreateSection("Fun / Power")

local player = game.Players.LocalPlayer

-- FLY
PlayerTab:CreateButton({
   Name = "Fly",
   Callback = function()
       local char = player.Character or player.CharacterAdded:Wait()
       local hrp = char:WaitForChild("HumanoidRootPart")

       local bv = Instance.new("BodyVelocity", hrp)
       bv.MaxForce = Vector3.new(9e9,9e9,9e9)

       local bg = Instance.new("BodyGyro", hrp)
       bg.MaxTorque = Vector3.new(9e9,9e9,9e9)

       game:GetService("RunService").RenderStepped:Connect(function()
           bv.Velocity = workspace.CurrentCamera.CFrame.LookVector * 60
           bg.CFrame = workspace.CurrentCamera.CFrame
       end)
   end,
})

-- STOP FLY
PlayerTab:CreateButton({
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

-- SUPER JUMP
PlayerTab:CreateButton({
   Name = "Super Jump",
   Callback = function()
       player.Character.Humanoid.JumpPower = 120
   end,
})

-- NORMAL JUMP
PlayerTab:CreateButton({
   Name = "Normal Jump",
   Callback = function()
       player.Character.Humanoid.JumpPower = 50
   end,
})

-- SPEED
PlayerTab:CreateButton({
   Name = "Speed 100",
   Callback = function()
       player.Character.Humanoid.WalkSpeed = 100
   end,
})

-- NORMAL SPEED
PlayerTab:CreateButton({
   Name = "Normal Speed",
   Callback = function()
       player.Character.Humanoid.WalkSpeed = 16
   end,
})

-- INFINITE JUMP
local infJump = false

PlayerTab:CreateButton({
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

-- NOCLIP
local noclip = false

PlayerTab:CreateButton({
   Name = "Toggle Noclip",
   Callback = function()
       noclip = not noclip
   end,
})

game:GetService("RunService").Stepped:Connect(function()
   if noclip and player.Character then
       for _,v in pairs(player.Character:GetDescendants()) do
           if v:IsA("BasePart") then
               v.CanCollide = false
           end
       end
   end
end)

-- RESET
PlayerTab:CreateButton({
   Name = "Reset Character",
   Callback = function()
       player.Character:BreakJoints()
   end,
})
