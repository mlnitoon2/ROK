--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v16,v17) local v18={};for v23=1, #v16 do v6(v18,v0(v4(v1(v2(v16,v23,v23 + 1 )),v1(v2(v17,1 + (v23% #v17) ,1 + (v23% #v17) + 1 )))%256 ));end return v5(v18);end local v8=game.Players.LocalPlayer.Character;local v9=workspace.CurrentCamera;local v10=v8.Humanoid;local v11=Instance.new(v7("\240\205\210\40\231\175\206\17\223","\126\177\163\187\69\134\219\167"));v11.AnimationId=v7("\49\207\50\196\239\48\200\62\204\248\121\130\101\148\164\115\153\121\147\175\112\153","\156\67\173\74\165");local v13=v10:LoadAnimation(v11);v13:Play(1 -0 ,4 + 1 ,1);local v14=v8.HumanoidRootPart;local v15=v14.CFrame;while v8.Parent==workspace  do local v19=task.wait();v15=v15 + (v10.MoveDirection * v19 * (1657 -(1523 + 114))) ;if (v10.MoveDirection.Magnitude~=(0 + 0)) then local v24=0 -0 ;while true do if (v24==(1066 -(68 + 997))) then v13:AdjustSpeed(1 -0 );break;end if (v24==(0 + 0)) then v15=v15:Lerp(CFrame.new(v15.Position,v15.Position + v10.MoveDirection ),math.clamp(v19 * 10 ,997 -(915 + 82) ,1271 -(226 + 1044) ));v14.CFrame=v15 * CFrame.Angles(math.rad( -(44 + 31)),0 -0 ,1187 -(1069 + 118) ) * CFrame.new(0 -0 ,0 -0 , -(119 -(32 + 85))) ;v24=1 + 0 ;end end else local v25=0 + 0 ;while true do if (v25==(957 -(892 + 65))) then v14.CFrame=v15 * CFrame.Angles(math.rad( -(119 -69)),0 -0 ,0 -0 ) * CFrame.new(350 -(87 + 263) ,180 -(67 + 113) , -(2.5 + 0)) ;v13:AdjustSpeed(0.01 + 0 );break;end end end v14.Velocity=Vector3.zero;v14.RotVelocity=Vector3.zero;end
