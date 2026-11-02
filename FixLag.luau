local map = workspace:FindFirstChild("Map")
if map then
    for _, child in ipairs(map:GetChildren()) do
        if child.Name ~= "MainPart" and child.Name ~= "SpawnLocation" then
            child:Destroy()
        end
    end
end

local replicatedStorage = game:GetService("ReplicatedStorage")
local resourcesFolder = replicatedStorage:FindFirstChild("resources")
if resourcesFolder then
    resourcesFolder:Destroy()
end

for _, child in ipairs(workspace:GetChildren()) do
    if child.Name == "thrown" then
        child:Destroy()
    end
end
