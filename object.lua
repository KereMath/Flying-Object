local All = script.Parent.Model:GetChildren()
for i,v in pairs(All) do

	v.Anchored = true
end

for A = 1,#All do
	if All[A].Name ~= "Main" then
		local NewWeld = Instance.new("Weld")
		NewWeld.Name = "Weld"
		NewWeld.Part0,NewWeld.Part1 = All[A],script.Parent.Model.Main
		NewWeld.C0 = All[A].CFrame:inverse()
		NewWeld.C1 = script.Parent.Model.Main.CFrame:inverse()
		NewWeld.Parent = script.Parent.Model.Main
		
	end
end

local NewWeld = Instance.new("Motor6D")
NewWeld.Name = "Motor6D"
NewWeld.Part0,NewWeld.Part1 = script.Parent.Model.Main,script.Parent.Ref
NewWeld.C0 = script.Parent.Model.Main.CFrame:inverse()
NewWeld.C1 = script.Parent.Ref.CFrame:inverse()
NewWeld.Parent = script.Parent.Ref



while true do
	
	game:GetService("TweenService"):Create(NewWeld,TweenInfo.new(2,0),
	{C1 = script.Parent.Ref.CFrame:inverse()*CFrame.new(75,0,0)}):Play()
	wait(2)
	game:GetService("TweenService"):Create(NewWeld,TweenInfo.new(2,0),
	{C1 = script.Parent.Ref.CFrame:inverse()*CFrame.new(0,0,0)}):Play()
	wait(2)
end
