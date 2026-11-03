local map = workspace:FindFirstChild("Map")

if map then
    for _, child in ipairs(map:GetChildren()) do
        if child.Name == "Halloween" then

            local keepModel = nil
            for _, obj in ipairs(child:GetChildren()) do
                if obj.Name == "TSBHalloween" and obj:IsA("Model") then
                    keepModel = obj
                    break
                end
            end

            if keepModel then
                for _, obj in ipairs(child:GetChildren()) do
                    if obj ~= keepModel then
                        obj:Destroy()
                    end
                end
            else
                warn("bug report to the owner")
            end

        elseif child.Name ~= "MainPart" and child.Name ~= "SpawnLocation" then
            child:Destroy()
        end
    end
end

local replicatedStorage = game:GetService("ReplicatedStorage")
local resourcesFolder = replicatedStorage:FindFirstChild("Resources")
if resourcesFolder then
    resourcesFolder:Destroy()
end

for _, child in ipairs(workspace:GetChildren()) do
    if child.Name == "Thrown" then
        child:Destroy()
    end
end
