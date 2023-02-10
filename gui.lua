local library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ShaddowScripts/Main/main/Library"))()

local Main = library:CreateWindow("ZzeHub",)

local tab = ZzeHub:CreateTab("Cheats")

local tab2 = ZzeHub:CreateTab("Misc")

tab:CreateButton("Hi",function()

print("clicked")

end)

tab:CreateToggle("Farm",function(a)

print(a)

end)

tab:CreateSlider("Wow",1,16,function(a)

print(a)

end)

tab:CreateCheckbox("Aimbot",function(a)

print(a)

end)

tab:CreateDropdown("Word",{"Sung","Jin","Woo"},function(a)

print(a)

end)

tab2:CreateButton("Hello",function()

print("clicked")

end)

tab:Show()
