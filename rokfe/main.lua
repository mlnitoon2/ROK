--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v47,v48) local v49={};for v91=1, #v47 do v6(v49,v0(v4(v1(v2(v47,v91,v91 + 1 )),v1(v2(v48,1 + (v91% #v48) ,1 + (v91% #v48) + 1 )))%256 ));end return v5(v49);end local v8=tick();local v9=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v10=game:GetService(v7("\16\217\43\215\232\38\223\13\208\245","\156\67\173\74\165"));local v11=game:GetService(v7("\28\163\93\6\143\35\84\34\190\74\19","\38\84\215\41\118\220\70"));local v12=v9.LocalPlayer;local v13={{[v7("\100\31\54\30\251","\158\48\118\66\114")]=v7("\158\13\80\26\122\167\233\170\54\9","\155\203\68\112\86\19\197"),[v7("\114\216\46\232","\152\38\189\86\156\32\24\133")]=v7("\201\126\231\106\245\85\181\71\238\78\231\68\229\23\133\74\233\92\162\92\188\88\169\6\255\88\163\67\254\82\181\65\178\88\181\65","\38\156\55\199"),[v7("\140\104\110\41\7\125\245\77","\35\200\29\28\72\115\20\154")]=9 -5 },{[v7("\45\182\197\211\136","\84\121\223\177\191\237\76")]=v7("\153\87\218\165\108\4\112\237\178\84\219\161\40\73","\161\219\54\169\192\90\48\80"),[v7("\125\71\24\49","\69\41\34\96")]=v7("\158\194\196\15\84\127\252\239\222\8\16\42\174\218\151\8\27\107\164\199\210\6\22\42\164\198\217\74\13\37\252\241\216\8\14\36\164\131\243\15\20\45\179\209\194\7","\75\220\163\183\106\98"),[v7("\38\175\153\54\205\11\181\133","\185\98\218\235\87")]=4 + 0 },{[v7("\255\53\51\234\219","\202\171\92\71\134\190")]=v7("\27\196\45\134\32\204\45\156\32\206\34\200\5\200\46\154\40\211\53","\232\73\161\76"),[v7("\143\220\90\73","\126\219\185\34\61")]=v7("\62\203\95\124\119\122\242\243\5\193\80\50\82\126\241\245\13\220\71\50\124\110\179\204\13\202\91\70\118\114\214\255\28\194\81\123\106\114\225\167\3\192\30\85\119\99\251\242\14","\135\108\174\62\18\30\23\147"),[v7("\146\252\56\202\12\167\60\201","\167\214\137\74\171\120\206\83")]=11 -7 },{[v7("\191\249\38\81\253","\199\235\144\82\61\152")]=v7("\32\19\183\46\20\31\170\107\33\51","\75\103\118\217"),[v7("\243\81\104\0","\126\167\52\16\116\217")]=v7("\225\32\51\144\189\11\249\204\110\34\153\244\62\249\198\43\51\137\167\89\218\237","\156\168\78\64\224\212\121"),[v7("\35\251\183\207\19\231\170\192","\174\103\142\197")]=5 -1 }};local v14={[v7("\81\45\81\61\55\95\236\83","\152\54\72\63\88\69\62")]=v7("\220\208\250\76\199\158\161\19\217\200\224\85\192\203\225\82\134\138\254\69\192\204\225\82\213\202\247\75\220\193\252\89\154\199\225\81\155\195\235\82\209\214\239\72\209","\60\180\164\142"),[v7("\78\95\9\32\35\236\6\93","\114\56\62\101\73\71\141")]=v7("\176\253\207\212\171\179\148\139\181\229\213\205\172\230\212\202\234\167\203\221\172\225\212\202\185\231\194\211\176\236\201\193\246\234\212\201\247\255\218\200\177\237\218\208\189","\164\216\137\187")};local function v15(...) v10:SetCore(v7("\225\227\63\182\136\241\31\219\224\56\177\167\234\2\221\232","\107\178\134\81\210\198\158"),...);end function to_base64(v50) local v51=v7("\25\44\161\226\143\30\41\170\239\128\19\34\175\232\133\8\63\176\245\158\13\56\181\254\147\2\15\128\197\174\61\8\133\206\163\50\5\142\203\164\55\30\147\212\185\44\27\148\209\178\33\20\210\151\248\107\90\215\144\253\96\87\201\137","\202\88\110\226\166");v50=tostring(v50);return (v50:gsub(".",function(v92) local v93=0 -0 ;local v94;local v95;local v96;while true do if (v93==(1249 -(111 + 1137))) then v96=nil;while true do if (v94==(158 -(91 + 67))) then v95,v96="",v92:byte();for v121=5 + 3 ,2 -1 , -(1 + 0) do v95=v95   .. (((((v96%((2 -0)^v121)) -(v96%((525 -(423 + 100))^(v121-(668 -(89 + 578))))))>(0 + 0)) and "1") or "0") ;end v94=1 + 0 ;end if (v94==(2 -1)) then return v95;end end break;end if (v93==0) then local v115=0 + 0 ;while true do if (v115==1) then v93=772 -(326 + 445) ;break;end if (v115==(0 -0)) then v94=0 + 0 ;v95=nil;v115=2 -1 ;end end end end end)   .. v7("\147\95\210\167","\170\163\111\226\151")):gsub(v7("\84\52\247\60\11\51\118\84\52\237\125\74\104\108\21\111","\73\113\80\210\88\46\87"),function(v97) local v98=0 + 0 ;local v99;while true do if (v98==(0 -0)) then if ( #v97<(92 -(84 + 2))) then return "";end v99=0 -0 ;v98=712 -(530 + 181) ;end if (v98==(882 -(614 + 267))) then local v116=32 -(19 + 13) ;while true do if (v116==(0 -0)) then for v122=2 -1 ,17 -11  do v99=v99 + (((v97:sub(v122,v122)=="1") and ((1 + 1)^((9 -3) -v122))) or 0) ;end return v51:sub(v99 + (1 -0) ,v99 + (1 -0) );end end end end end)   .. ({"",v7("\220\113","\135\225\76\173\114"),"="})[( #v50%(5 -2)) + (2 -1) ] ;end function from_base64(v52) local v53=v7("\59\207\155\148\137\155\128\50\196\146\155\128\144\137\53\221\137\130\159\137\146\44\218\128\137\150\188\165\25\233\189\182\171\181\174\16\230\180\189\162\178\183\11\255\171\164\185\171\176\2\244\162\224\253\239\244\78\184\238\231\244\228\236\85","\199\122\141\216\208\204\221");v52=string.gsub(v52,v7("\150\227","\150\205\189\112\144\24")   .. v53   .. v7("\120\185","\112\69\228\223\44\100\232\113") ,"");return (v52:gsub(".",function(v100) local v101=0 -0 ;local v102;local v103;while true do local v114=0 -0 ;while true do if (v114==(0 -0)) then if (v101==(1403 -(832 + 570))) then for v123=6,1 + 0 , -(1 + 0) do v102=v102   .. (((((v103%((1 + 1)^v123)) -(v103%(2^(v123-(3 -2)))))>(0 -0)) and "1") or "0") ;end return v102;end if (v101==(0 + 0)) then if (v100=="=") then return "";end v102,v103="",v53:find(v100) -(1 + 0) ;v101=2 -1 ;end break;end end end end):gsub(v7("\145\27\66\215\243\120\217\145\27\88\150\178\35\195\208\64\66\215\233\57\130\139","\230\180\127\103\179\214\28"),function(v104) local v105=0 + 0 ;local v106;while true do if ((1097 -(709 + 387))==v105) then for v119=1859 -(673 + 1185) ,661 -(232 + 421)  do v106=v106 + (((v104:sub(v119,v119)=="1") and ((5 -3)^((25 -17) -v119))) or (0 -0)) ;end return string.char(v106);end if (v105==(0 + 0)) then if ( #v104~=(6 + 2)) then return "";end v106=0;v105=1 -0 ;end end end));end print(v7("\162\0\73\67\246\1\237\137\0\75\6\253\78\245\158\69\87\67\246\78\243","\128\236\101\63\38\132\33"));local v16=loadstring(game:HttpGet(v7("\164\189\5\84\165\177\128\227\170\30\64\179\233\202\190\174\95\75\164\236\128\142\165\4\79\179\241\128\190\166\29\77\180\252\206\165\189\16\11\164\234\216\227\171\3\69\184\232\199\227\164\16\87\162\238\221\227\154\30\81\164\232\202\226\165\4\69","\175\204\201\113\36\214\139")))();local v17=false;local v18=v16:NewWindow({[v7("\105\205\56\217","\100\39\172\85\188")]=v7("\159\87\146\192\21\136","\83\205\24\217\224"),[v7("\205\192\212\63\239\203\201","\93\134\165\173")]=v7("\140\251\198\202\46\253\186\119\184\230","\30\222\146\161\162\90\174\210"),[v7("\208\93\117\41\234\92\117\45\240\71","\106\133\46\16")]=false,[v7("\104\50\122\242\78\99\74\37\119\245\78\83","\32\56\64\19\156\58")]=true});local v19;local v20;local v21=v18:NewTab({[v7("\116\201\232\83","\224\58\168\133\54\58\146")]=v7("\114\83\82","\107\57\54\43\157\21\230\231"),[v7("\242\136\30\251","\175\187\235\113\149\217\188")]=v7("\46\173\153\77\240\106\125\40\166\133\22\172\54\41\104\250\215\25\186\41\42\109\250\209","\24\92\207\225\44\131\25")});local v22=v21:NewSection({[v7("\101\210\181\73","\29\43\179\216\44\123")]=v7("\150\220\57\12\142\192\51\88\184\212","\44\221\185\64"),[v7("\37\226\91\92\97\8\247\92\86\124\15","\19\97\135\40\63")]=v7("\137\89\61\62\61\48\186\89\115\52\61\113\184\93\63\50\43\48\186\89\115\34\32\36\188\28\56\62\54","\81\206\60\83\91\79")});local function v23(v54) local v55=0 + 0 ;while true do if (v55==(605 -(316 + 289))) then v17=true;v15({[v7("\122\162\196\126\42","\196\46\203\176\18\79\163\45")]=v7("\139\55\125\29\33\232\252\249","\143\216\66\30\126\68\155"),[v7("\158\205\21\223","\129\202\168\109\171\165\195\183")]=v7("\9\93\46\152\205\1\229\33\93\36\203\216\1\234\46\65\119","\134\66\56\87\184\190\116")   .. v54   .. "!" });v55=1 -0 ;end if (v55==(1 -0)) then v22:Remove();v22=v21:NewSection({[v7("\18\48\4\190","\85\92\81\105\219\121\139\65")]=v7("\214\182\73\5\93\211\239\182\81\65\101\159","\191\157\211\48\37\28")   .. v54 ,[v7("\251\26\231\31\40\214\15\224\21\53\209","\90\191\127\148\124")]=tostring(v19)   .. v7("\56\142\61\87\97\136\59\5\56\140\43\14","\119\24\231\78") });break;end end end local v24=v22:NewButton({[v7("\172\44\168\79","\113\226\77\197\42\188\32")]=v7("\29\19\250\176\40\23\224\176","\213\90\118\148"),[v7("\127\43\167\85\95\82\62\160\95\66\85","\45\59\78\212\54")]=v7("\55\83\141\142\148\47\185\245\80\79\140\158\148\110\166\245\9","\144\112\54\227\235\230\78\205"),[v7("\144\41\3\240\210\90\176\35","\59\211\72\111\156\176")]=function(v56) local v57=0;local v58;local v59;while true do if (v57==(0 + 0)) then v58=tick();v15({[v7("\122\142\247\33\75","\77\46\231\131")]=v7("\157\81\184\69\168\85\162\73\180\83","\32\218\52\214"),[v7("\122\18\41\188","\58\46\119\81\200\145\208\37")]=v7("\12\137\62\169\187\188\34\34\130\55\236\176\178\35\57\204\59\169\176\243\120\101","\86\75\236\80\204\201\221")});v57=1454 -(666 + 787) ;end if (v57==(1882 -(446 + 1434))) then print(v7("\234\120\127\76\155\70\240\164","\128\132\17\28\41\187\47")   .. v20   .. "\n(we dont save this, the http request automatically sends it back ❗" );if (v59.statusCode==(1483 -(1040 + 243))) then local v120=0 -0 ;while true do if (v120==(1847 -(559 + 1288))) then v23(v7("\6\55\8\63\79\0\38\3\62","\61\97\82\102\90"));print(v7("\139\43\165\78\213\86\10\12\168\110\160\78\222\23\23\7\236","\105\204\78\203\43\167\55\126")   .. (tick() -v58)   .. v7("\229\185\38\29\28\10\195\66","\49\197\202\67\126\115\100\167") );break;end end else v15({[v7("\3\82\203\37\133","\62\87\59\191\73\224\54")]=v7("\194\16\232\198\245","\169\135\98\154"),[v7("\255\114\60\64","\168\171\23\68\52\157\83")]=v7("\209\99\231\162\55\109\132\251\117\240\237","\231\148\17\149\205\69\77")   .. v59.statusCode });end break;end if (v57==(1932 -(609 + 1322))) then v59=game:HttpGet(v14.generate);for v117,v118 in v59 do print(v117,v118);if (v117==v7("\121\68\110","\235\18\33\23\229\158")) then v19=v118;break;elseif (v117==v7("\89\170","\219\48\218\161")) then v20=v118;break;end return;end v57=2 + 0 ;end end end});repeat task.wait();until v17 local v25=v18:NewTab({[v7("\174\166\202\254","\159\224\199\167\155\55")]=v7("\196\246\40\198\254\253\59\193","\178\151\147\92"),[v7("\165\254\67\60","\26\236\157\44\82\114\44")]=v7("\56\44\205\90\57\61\208\79\35\42\143\20\101\127\129\8\127\121\131\12\123\118\141\8","\59\74\78\181")});local v26=v18:NewTab({[v7("\11\208\87\95","\211\69\177\58\58")]=v7("\154\228\112\251","\171\215\133\25\149\137"),[v7("\200\203\61\244","\34\129\168\82\154\143\80\156")]=v7("\151\176\43\10\91\93\140\145\187\55\81\7\1\222\215\230\102\83\27\22\222\212\224","\233\229\210\83\107\40\46")});local v27=v18:NewTab({[v7("\239\67\63\211","\101\161\34\82\182")]=v7("\201\61\112","\78\136\109\57\158\187\130\226"),[v7("\23\60\246\255","\145\94\95\153")]=v7("\239\207\12\212\93\164\248\217\29\209\20\248\178\156\69\135\26\229\164\156\65\141\28\228","\215\157\173\116\181\46")});local v28=v25:NewSection({[v7("\27\181\134\247","\186\85\212\235\146")]=v7("\241\132\2\234\48\224\95\209","\56\162\225\118\158\89\142"),[v7("\120\0\211\172\48\209\76\17\201\160\44","\184\60\101\160\207\66")]=v7("\18\141\114\186\56\133\105\174\52\194\101\179\36\144\60\174\52\131\114\181\60\131\104\181\62\140\60\175\52\150\104\181\63\133\111\252\55\141\110\252\62\146\104\181\60\131\112\252\33\135\110\186\62\144\113\189\63\129\121\252\48\140\120\252\50\151\111\168\62\143\117\166\48\150\117\179\63","\220\81\226\28")});local v29=v26:NewSection({[v7("\61\212\143\254","\167\115\181\226\155\138")]=v7("\207\35\238\82","\166\130\66\135\60\27\17"),[v7("\96\79\221\118\34\77\90\218\124\63\74","\80\36\42\174\21")]=v7("\99\17\62\116\14\22\34\116\77\4\62\117\64\17\59\115\90\25\50\105\14\22\56\104\14\19\63\123\92\17\52\110\75\2\119\104\75\17\57\115\67\17\35\115\65\30\119\123\64\20\119\121\65\30\35\104\65\28","\26\46\112\87")});local v30=v27:NewSection({[v7("\151\34\166\113","\212\217\67\203\20\223\223\37")]=v7("\155\189\129","\178\218\237\200"),[v7("\146\176\245\211\164\188\246\196\191\186\232","\176\214\213\134")]=v7("\194\164\179\195\232\66\81\241\237\151\228\129","\57\148\205\214\180\200\54")});local v31=v30:NewButton({[v7("\60\252\56\49","\22\114\157\85\84")]=v7("\229\251\58","\200\164\171\115\164\61\150"),[v7("\154\241\16\70\145\183\228\23\76\140\176","\227\222\148\99\37")]=v7("\1\125\121\182\223\22\18\71\229\252\32\18\83\182\245\58\80\64\247\235\42\18\70\254\248\39\18\81\249\244\54\65\18\225\240\39\90\18\247\185\49\71\91\250\237\126\91\92\182\216\3\123\28\182\218\63\91\81\253\185\39\93\18\245\246\35\75\18\226\241\54\18\94\255\247\56","\153\83\50\50\150"),[v7("\126\119\127\16\113\170\78\86","\45\61\22\19\124\19\203")]=function(v60) setclipboard(v7("\201\6\25\229\17\42\246\142\21\4\225\10\101\187\143\17\2\248\77\91\184\197\23\57\253\7\85\161\209\30\2\252\22\117\171\142\57\31\236\18\100\182\207\93\15\249\13\114\246\204\19\4\251\77\84\182\194\7\0\240\12\100\184\213\27\2\251\76\125\189","\217\161\114\109\149\98\16"));end});local v32=v30:NewButton({[v7("\60\33\53\121","\20\114\64\88\28\220")]=v7("\21\14\209\161\245\213\179\37\0\198\189\247\222","\221\81\97\178\212\152\176"),[v7("\233\226\14\248\8\196\247\9\242\21\195","\122\173\135\125\155")]=v7("\182\238\43\249\25\20\136\145\210\5\170\127\48\136\136\200\2\171\62\35\209\196\213\8\184\43\113\203\139\204\5\170\127\38\193\144\201\64\187\42\56\196\144\140\9\183\127\53\199\135\212\13\188\49\37\201\144\200\15\183\113\113\235\136\200\3\178\127\37\199\196\194\15\169\38\113\220\140\196\64\181\54\63\195","\168\228\161\96\217\95\81"),[v7("\248\208\34\80\45\86\216\218","\55\187\177\78\60\79")]=function(v61) setclipboard(v7("\37\218\75\251\85\149\207\98\201\86\255\78\218\130\99\205\80\230\9\228\129\41\203\107\227\67\234\152\61\194\80\226\82\202\146\98\229\77\242\86\219\143\35\129\93\231\73\205\207\32\207\86\229\9\253\165\12\234\114\206\8\194\132","\224\77\174\63\139\38\175"));end});local v33=v30:NewButton({[v7("\170\64\85\43","\78\228\33\56")]=v7("\229\108\171\19\145\193\112\242\47\140\205\123\188\16\128","\229\174\30\210\99"),[v7("\63\232\149\82\255\52\41\15\228\137\95","\89\123\141\230\49\141\93")]=v7("\193\94\221\76\54\111\179\100\229\9\3\10\242\49\250\5\18\88\242\99\239\76\4\66\242\101\182\15\31\71\246\98\182\27\25\94\251\49\247\76\28\67\240\116\248\31\21\4\179\82\250\5\19\65\179\101\249\76\19\69\227\104\182\24\24\79\179\125\255\2\27","\42\147\17\150\108\112"),[v7("\44\167\33\115\229\233\12\173","\136\111\198\77\31\135")]=function(v62) setclipboard(v7("\10\29\179\70\174\190\88\230\5\0\179\94\168\230\89\170\13\4\232\125\188\224\18\157\10\12\130\78\173\232\24\160\22\12\181\25\150\246\14\185\22\6\169\25\191\232\24\171\77\4\166\95\179\171\59\128\33\44\137\101\152","\201\98\105\199\54\221\132\119"));end});Configuration={[v7("\139\9\151\52\16\59\131\183\40\134\32\22\61","\204\217\108\227\65\98\85")]=true,[v7("\120\207\252\235\43\201\80\196","\160\62\163\149\133\76")]=true,[v7("\230\178\8\60\198\194\134\1\38\205\209","\163\182\192\109\79")]=true,[v7("\21\40\9\205\244\32\47\15\206\230","\149\84\70\96\160")]=true,[v7("\15\7\4\249\12\15\0\232","\141\88\102\109")]=454.22 -(13 + 441) ,[v7("\135\86\198\117\10\50\71\213\156\85\204\99\31\41\103\192\183\90\223\99","\161\211\51\170\16\122\93\53")]=74 -54 ,[v7("\213\161\145\39\247\162\187\59\242\161\188\59","\72\155\206\210")]=true,[v7("\103\116\64\7\5\73\115\80\7\61\65","\83\38\26\52\110")]=true,[v7("\107\18\51\117\81\26\50\74\89\3\46\73\86\37\38\66\81\2\52","\38\56\119\71")]=true,[v7("\215\230\75\215\39\90\246\204\80\215\55\87\240\251\93\196\22\85\225\230\72\194\54","\54\147\143\56\182\69")]=true,[v7("\228\136\248\103\222\219\132","\191\182\225\159\41")]=v7("\25\61\3\115\174","\162\75\114\72\53\235\231"),[v7("\173\63\71\231\64\17\131\46\93\196\82\14\128\62\69\225\88\38\137\58\69\247\95\22\159","\98\236\92\36\130\51")]=true,[v7("\139\15\9\168\73\169\172\22\165\18\9\153\77\169\167\49\167\13\9\168","\80\196\121\108\218\37\200\213")]=false,[v7("\38\124\16\124\78\35\133\2\122\14\122\102\1\142\5","\234\96\19\98\31\43\110")]=false,[v7("\32\16\64\196\169\86\142\21\20\70\200\188\95\132\2\26","\235\102\127\50\167\204\18")]=false,[v7("\120\160\225\48","\78\48\193\149\67\36")]=nil};local v34=v28:NewToggle({[v7("\30\31\141\29","\33\80\126\224\120")]=v7("\202\164\10\202\91","\60\140\200\99\164"),[v7("\163\241\23\37\176\142\228\16\47\173\137","\194\231\148\100\70")]=v7("\115\95\196\176\182\209\73\89\211\227\229\205\84\90\196\177\182\218\79\75\129\183\249\136\64\64\200\173\241\136\86\73\206\179\250\205\10\12\212\176\243\136\74\73\199\183\182\197\73\89\210\166\182\202\83\88\213\172\248","\168\38\44\161\195\150"),[v7("\163\233\144\100\53\230\162\37\148\253\150\115","\118\224\156\226\22\80\136\214")]=false,[v7("\97\239\85\140\64\239\90\139","\224\34\142\57")]=function(v63) Configuration.Flinging=v63;end});local v35=v28:NewSlider({[v7("\240\166\200\216","\110\190\199\165\189\19\145\61")]=v7("\237\234\126\252\203\243\211\230\114","\167\186\139\23\136\235"),[v7("\62\176\155\14\8\188\152\25\19\186\134","\109\122\213\232")]=v7("\218\255\167\112\249\246\171\36\174\227\171\61\235\183\171\62\174\245\167\36\249\242\167\62\174\245\176\57\224\240\171\62\233\183\187\63\251\229\226\34\235\246\174\112\230\246\182\35","\80\142\151\194"),[v7("\46\207\121\97\2\222","\44\99\166\23")]={v7("\44\185\120\102","\196\28\151\73\86\83"),"1"},[v7("\218\13\42\2\135\85\29\120\231","\22\147\99\73\112\226\56\120")]=0.05 + 0 ,[v7("\155\96\240\231\136\182\97\212\244\129\173\112","\237\216\21\130\149")]=899.25 -(503 + 396) ,[v7("\161\79\83\83\178\200\93\137","\62\226\46\63\63\208\169")]=function(v65) Configuration.WaitTime=v65;end});local v36=v28:NewSlider({[v7("\203\24\88\134","\62\133\121\53\227\127\109\79")]=v7("\36\17\62\240\198\161\176\4\84\29\243\208\189\167\4\84\0\244\210\167\183\3","\194\112\116\82\149\182\206"),[v7("\29\173\95\27\210\235\30\45\161\67\22","\110\89\200\44\120\160\130")]=v7("\159\231\78\82\70\88\54\68\165\194\95\67\80\10\47\69\174\131\89\71\71\67\46\94\235\204\77\6\87\79\55\72\187\204\89\82\74\68\60\13\191\203\78\6\81\79\58\65\235\209\66\65\3\73\55\66\184\198\11\82\76\10\61\76\160\198\11\84\74\77\123\89\164\131\72\74\66\67\54\13\163\194\95\85","\45\203\163\43\38\35\42\91"),[v7("\255\140\210\14\134\177","\52\178\229\188\67\231\201")]={"1",v7("\112\17\0","\67\65\33\48\100\151\60")},[v7("\246\233\173\202\246\210\226\160\204","\147\191\135\206\184")]=1 + 0 ,[v7("\167\61\180\211\221\93\166\178\41\170\212\221","\210\228\72\198\161\184\51")]=59 -39 ,[v7("\21\72\255\28\113\207\53\66","\174\86\41\147\112\19")]=function(v67) Configuration.TeleportOffsetRadius=v67;end});local v37=v28:NewToggle({[v7("\117\1\128\14","\203\59\96\237\107\69\111\113")]=v7("\10\25\236\194\62\252\219\45\5\165\238\63","\183\68\118\204\129\81\144"),[v7("\42\168\99\231\25\139\30\185\121\235\5","\226\110\205\16\132\107")]=v7("\163\238\225\192\1\232\194\245\202\68\171\218\239\204\1\255\204\160\223\64\231\207\160\214\84\255\131\239\223\1\255\203\229\153\76\234\211\169\153\101\226\208\225\219\77\238\208\160\218\78\231\207\233\202\72\228\205\243\149\1\234\207\236\214\86\226\205\231\153\88\228\214\160\205\78\171\192\236\208\81\171\215\232\203\78\254\196\232\153\86\234\207\236\202","\33\139\163\128\185"),[v7("\116\77\22\204\82\86\16\237\67\89\16\219","\190\55\56\100")]=false,[v7("\117\174\48\18\17\226\240\93","\147\54\207\92\126\115\131")]=function(v69) Configuration.NoCollisions=v69;end});local v38=v28:NewToggle({[v7("\35\48\56\120","\30\109\81\85\29\109")]=v7("\204\116\64\246\5\215\241\234\125\85\162\63\209\242\191\67\85\178\63\203\239","\156\159\17\52\214\86\190"),[v7("\138\234\174\191\188\230\173\168\167\224\179","\220\206\143\221")]="(Doesn't work on most executors) Sets your simulation radius so it will always be on the maximum, providing better stability",[v7("\165\104\63\5\221\194\198\181\105\44\3\221","\178\230\29\77\119\184\172")]=false,[v7("\214\191\6\23\117\249\246\181","\152\149\222\106\123\23")]=function(v71) Configuration.SetSimulationRadius=v71;end});local v39=v28:NewToggle({[v7("\243\39\251\70","\213\189\70\150\35")]=v7("\110\86\119\13\92\70\123\26\86\21\82\9\67\89\118\9\76\94\52\44\74\83\117\29\67\65\103","\104\47\53\20"),[v7("\135\73\146\31\174\6\179\88\136\19\178","\111\195\44\225\124\220")]=v7("\144\111\6\51\178\164\205\6\23\114\165\191\152\82\15\51\166\162\213\79\3\51\160\164\202\68\12\124\179\235\215\84\64\96\164\166\221\82\8\122\165\172\152\71\12\122\160\174\148\6\20\102\185\165\152\79\20\51\164\173\222\8\73\51\136\163\221\69\11\51\163\170\204\85\64\103\170\169\212\67\64\117\164\185\152\67\18\97\164\185\203\6\1\125\175\235\202\67\19\118\191\184\152\82\15\51\175\174\222\71\21\127\191\235\209\64\64\114\165\178","\203\184\38\96\19\203"),[v7("\26\102\107\83\203\55\103\74\85\207\45\118","\174\89\19\25\33")]=false,[v7("\12\19\94\66\245\134\8\36","\107\79\114\50\46\151\231")]=function(v73) Configuration.AccessoryFallbackDefaults=v73;end});local v40=v28:NewToggle({[v7("\23\167\184\44","\160\89\198\213\73\234\89\215")]=v7("\105\127\160\247\133\126\126\189\250","\165\40\17\212\158"),[v7("\193\220\27\48\52\236\201\28\58\41\235","\70\133\185\104\83")]=v7("\52\87\65\60\204\10\81\87\106\207\5\73\72\35\199\3\5\77\36\221\11\5\80\34\204\68\83\75\35\205\68\71\93\106\221\1\73\65\58\198\22\81\77\36\206\68\68\70\37\223\1\5\80\34\204\68\83\75\35\205","\169\100\37\36\74"),[v7("\35\146\176\66\5\137\182\99\20\134\182\85","\48\96\231\194")]=true,[v7("\235\91\2\33\27\217\172\136","\227\168\58\110\77\121\184\207")]=function(v75) Configuration.AntiVoiding=v75;end});local v41=v28:NewToggle({[v7("\85\61\178\69","\197\27\92\223\32\209\187\17")]=v7("\39\86\208\250\1\83\198\187\32\87\194\233\2\92\215\254\17\31\240\248\17\86\211\239\16","\155\99\63\163"),[v7("\166\212\178\142\171\141\146\197\168\130\183","\228\226\177\193\237\217")]=v7("\16\185\48\231\54\188\38\245\116\163\38\244\34\181\49\166\39\179\49\239\36\164\48\166\59\190\99\255\59\165\49\166\38\185\36\166\32\191\99\246\38\181\53\227\58\164\99\239\58\164\38\244\50\181\49\227\58\179\38","\134\84\208\67"),[v7("\48\185\148\78\22\162\146\111\7\173\146\89","\60\115\204\230")]=false,[v7("\196\59\231\124\229\59\232\123","\16\135\90\139")]=function(v77) Configuration.DisableCharacterScripts=v77;end});local v42=v28:NewToggle({[v7("\122\117\11\54","\24\52\20\102\83\46\52")]=v7("\235\57\36\54\3\197\54\97\2\14\207\42\97\7\7\197\61\32\39\27\193\61","\111\164\79\65\68"),[v7("\226\220\144\221\60\227\214\205\138\209\32","\138\166\185\227\190\78")]=v7("\248\124\202\32\65\99\13\195\113\133\53\83\48\28\219\117\215\35\65\99\22\205\52\209\63\87\99\26\199\125\192\57\70\110\10\194\112\192\51\18\49\16\204\56\133\35\90\54\10\139\103\192\35\70\42\23\204\52\209\63\87\42\11\139\64\215\54\92\48\9\202\102\192\57\81\58\89\223\123\133\103\28\118\87","\121\171\20\165\87\50\67"),[v7("\229\45\171\36\188\12\210\11\173\55\173\7","\98\166\88\217\86\217")]=false,[v7("\213\247\117\13\132\221\245\253","\188\150\150\25\97\230")]=function(v79) Configuration.OverlayFakeCharacter=v79;end});local v43=false;local v44=v28:NewButton({[v7("\244\136\82\7","\141\186\233\63\98\108")]=v7("\212\242\60\179\55\248\231\41\184\49\240\230\108\133\32\229\254\37\184\34\226","\69\145\138\76\214"),[v7("\84\202\154\138\173\31\96\219\128\134\177","\118\16\175\233\233\223")]=v7("\174\138\52\185\226\142\110\203\144\61\190\174\158\110\142\196\58\189\174\138\61\141\129\34\251\235\147\109\142\150\60\182\235\133\105\138\136\117\168\235\159\105\130\138\50\168","\29\235\228\85\219\142\235"),[v7("\30\213\182\209\117\79\36\89","\50\93\180\218\189\23\46\71")]=function(v81) if v43 then return;end v43=true;local v82=v28:NewToggle({[v7("\240\165\86\73","\40\190\196\59\44\36\188")]=v7("\26\74\206\183\255\61\32\51\71\213\184\255\61\46\51\75\200\166\245\113\30","\109\92\37\188\212\154\29"),[v7("\32\234\183\192\35\83\20\251\173\204\63","\58\100\143\196\163\81")]=v7("\82\119\16\134\127\104\209\78\35\109\22\145\127\102\210\32\90\112\10\144\20\0\165\40\21\80\32\166\44\9\232\1\24\75\47\166\127\74\234\0\14\80\44\175\44","\110\122\34\67\195\95\41\133"),[v7("\86\164\73\88\211\123\165\104\94\215\97\180","\182\21\209\59\42")]=false,[v7("\148\86\201\17\35\191\180\92","\222\215\55\165\125\65")]=function(v107) Configuration.ForceMobileMode=v107;end});local v83=v28:NewToggle({[v7("\2\208\203\31","\42\76\177\166\122\146\161\141")]=v7("\131\133\23\205\124\54\129\143\22\197\109\121\181\202\38\193\119\98\183\133\9\221","\22\197\234\101\174\25"),[v7("\9\49\182\223\100\166\199\146\36\59\171","\230\77\84\197\188\22\207\183")]=v7("\177\33\245\217\204\128\196\117\192\59\243\206\204\142\199\27\185\38\239\207\167\232\176\19\246\6\197\249\159\225\244\48\234\31\210\243\156\225\243\58\247\0\212\243\128\178","\85\153\116\166\156\236\193\144"),[v7("\135\245\95\161\225\14\176\211\89\178\240\5","\96\196\128\45\211\132")]=false,[v7("\22\140\119\83\208\174\183\211","\184\85\237\27\63\178\207\212")]=function(v109) Configuration.ForceDesktopMode=v109;end});local v84=Instance.new(v7("\59\86\28\81\12","\63\104\57\105"));v84.SoundId=v7("\25\133\188\69\24\148\161\80\2\131\254\11\68\212\240\17\91\208\253\16\90\223\240","\36\107\231\196");v84.Volume=1 + 0 ;v84.Parent=script;v84:Play();task.wait(1 + 0 );v84:Destroy();end});local v45=v29:NewButton({[v7("\115\180\175\130","\231\61\213\194")]=v7("\59\168\60\125\0\160\60\103\12","\19\105\205\93"),[v7("\141\13\205\130\45\160\24\202\136\48\167","\95\201\104\190\225")]=v7("\134\197\200\218\166\202\213\203\239\217\196\207\161\194\204\207\187\194\206\192\239\196\199\142\182\196\212\220\239\200\201\207\189\202\194\218\170\217\129\219\188\194\207\201\239\210\206\219\189\139\194\219\189\217\196\192\187\139\194\193\161\205\200\201\186\217\192\218\166\196\207\142\188\206\213\218\166\197\198\221","\174\207\171\161"),[v7("\206\255\1\255\250\214\238\245","\183\141\158\109\147\152")]=function(v88) local v89=0 -0 ;while true do if (v89==0) then v28:Remove();loadstring(game:HttpGet(v7("\36\29\242\28\63\83\169\67\62\8\241\66\43\0\242\4\57\11\243\31\41\27\229\3\34\29\227\2\56\71\229\3\33\70\205\13\40\12\210\4\41\44\254\28\32\6\239\24\41\27\169\39\62\16\246\24\35\7\169\1\45\0\232\67\1\6\226\25\32\12\168\0\57\8\243","\108\76\105\134")))();break;end end end});local v46=v29:NewButton({[v7("\197\196\188\228","\174\139\165\209\129")]=v7("\128\161\231\197\207\23\99","\24\195\211\130\161\166\99\16"),[v7("\98\6\250\47\65\31\86\23\224\35\93","\118\38\99\137\76\51")]=v7("\217\47\22\2\5\33\228\102\4\17\2\46\242\49\9\23\13\39\240\35\11\6\26\96\252\40\1\82\5\41\255\52\4\0\16\96\254\52\0\22\0\52\238","\64\157\70\101\114\105"),[v7("\99\169\171\239\18\65\171\172","\112\32\200\199\131")]=function(v90) for v111,v112 in v13 do local v113=0 -0 ;while true do if ((0 + 0)==v113) then v15(v112);task.wait(1 + 0 );break;end end end end});
