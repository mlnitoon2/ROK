--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v8,v9) local v10={};for v12=1, #v8 do v6(v10,v0(v4(v1(v2(v8,v12,v12 + 1 )),v1(v2(v9,1 + (v12% #v9) ,1 + (v12% #v9) + 1 )))%256 ));end return v5(v10);end game.Players.LocalPlayer.PlayerGui.fps_counter.counter_main:Destroy();while wait(1350.1 -(993 + 357) ) do local v11={[1]=math.random(5581 -(555 + 64) ,5931 -(857 + 74) )};game:GetService(v7("\227\198\203\41\239\184\198\10\212\199\232\49\233\169\198\25\212","\126\177\163\187\69\134\219\167")).UpdateFPS:FireServer(unpack(v11));end
