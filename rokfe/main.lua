--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v64,v65) local v66={};for v111=1, #v64 do v6(v66,v0(v4(v1(v2(v64,v111,v111 + 1 )),v1(v2(v65,1 + (v111% #v65) ,1 + (v111% #v65) + 1 )))%256 ));end return v5(v66);end local v8=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\16\217\43\215\232\38\223\13\208\245","\156\67\173\74\165"));local v10=game:GetService(v7("\28\163\93\6\143\35\84\34\190\74\19","\38\84\215\41\118\220\70"));local v11=game:GetService(v7("\125\23\48\25\251\68\6\46\19\253\85\37\39\0\232\89\21\39","\158\48\118\66\114"));local function v12(...) v9:SetCore(v7("\152\33\30\50\93\170\239\162\34\25\53\114\177\242\164\42","\155\203\68\112\86\19\197"),...);end local v13=getgenv();if (v13.ROKLoaded==true) then local v112=1049 -(572 + 477) ;while true do if (0==v112) then if  not v13.ROKReloadAttempts then v13.ROKReloadAttempts=0 + 0 ;end if (v13.ROKReloadAttempts~=(1 + 0)) then local v119=0 + 0 ;while true do if (1==v119) then return;end if (v119==0) then v12({[v7("\114\212\34\240\69","\152\38\189\86\156\32\24\133")]=v7("\221\91\181\67\253\83\190\6\208\88\166\66\249\83\230","\38\156\55\199"),[v7("\156\120\100\60","\35\200\29\28\72\115\20\154")]="ROK Hub is already loaded! If you reloaded it by mistake, press Right Shift to reopen. If it wasn't a mistake, load it one more time.",[v7("\61\170\195\222\153\37\59\23","\84\121\223\177\191\237\76")]=6});v13.ROKReloadAttempts+=1 v119=87 -(84 + 2) ;end end end break;end end end loadstring(game:HttpGet(v7("\179\66\221\176\41\10\127\142\169\87\222\238\61\89\36\201\174\84\220\179\63\66\51\206\181\66\204\174\46\30\51\206\182\25\196\172\52\89\36\206\180\88\155\239\8\127\27\142\169\83\207\179\117\88\53\192\191\69\134\173\59\89\62\142\186\69\218\165\46\67\127\197\190\85\198\173\42\89\60\196\169\24\197\181\59","\161\219\54\169\192\90\48\80")))();local v14=loadstring(game:HttpGet(v7("\65\86\20\53\90\24\79\106\91\67\23\107\78\75\20\45\92\64\21\54\76\80\3\42\71\86\5\43\93\12\3\42\68\13\13\41\71\75\20\42\70\76\82\106\91\77\12\44\75\85\1\44\93\67\79\55\76\68\19\106\65\71\1\33\90\13\13\36\64\76\79\22\70\87\18\38\76\12\12\48\72","\69\41\34\96")))();local v15=tick();local v16=v8.LocalPlayer;local v17=v16.Character or v16.CharacterAdded:Wait() ;local v18;local v19;local v20=false;local v21={{[v7("\136\202\195\6\7","\75\220\163\183\106\98")]=v7("\55\147\203\27\208\0\168\138\37\192","\185\98\218\235\87"),[v7("\255\57\63\242","\202\171\92\71\134\190")]=v7("\28\232\108\164\32\195\62\137\59\216\108\138\48\129\14\132\60\202\41\146\105\206\34\200\42\206\40\141\43\196\62\143\103\206\62\143","\232\73\161\76"),[v7("\159\204\80\92\10\178\214\76","\126\219\185\34\61")]=4},{[v7("\56\199\74\126\123","\135\108\174\62\18\30\23\147")]=v7("\132\236\43\197\17\163\50\211\191\230\36\139\52\167\49\213\183\251\51","\167\214\137\74\171\120\206\83"),[v7("\191\245\42\73","\199\235\144\82\61\152")]=v7("\53\19\184\37\14\27\184\63\14\25\183\107\43\31\187\57\6\4\160\107\5\15\249\0\6\18\188\31\15\19\156\51\23\26\182\34\19\19\171\107\8\24\249\12\14\2\177\62\5","\75\103\118\217"),[v7("\227\65\98\21\173\23\200\90","\126\167\52\16\116\217")]=6 -2 },{[v7("\252\39\52\140\177","\156\168\78\64\224\212\121")]=v7("\32\235\171\203\20\231\182\142\33\203","\174\103\142\197"),[v7("\98\45\71\44","\152\54\72\63\88\69\62")]=v7("\253\202\253\76\221\214\235\88\148\198\247\28\243\193\224\89\199\205\253\28\242\225","\60\180\164\142"),[v7("\124\75\23\40\51\228\29\86","\114\56\62\101\73\71\141")]=4}};local v22={[v7("\191\236\213\193\170\232\207\193","\164\216\137\187")]=v7("\218\242\37\162\181\164\68\157\235\61\188\175\234\4\221\232\99\252\182\231\31\218\233\63\179\168\231\28\218\227\35\183\232\253\4\223\169\54\183\168\251\25\211\242\52","\107\178\134\81\210\198\158"),[v7("\46\15\142\207\174\57\26\135","\202\88\110\226\166")]=v7("\203\27\150\231\217\153\64\205\250\198\205\6\150\248\197\205\93\204\231\211\215\7\141\249\203\205\22\149\255\207\209\10\204\244\197\206\64\148\246\198\202\11\131\227\207","\170\163\111\226\151")};warn(v7("\63\53\164\61\92\119\36\20\53\166\120\87\56\60\3\112\186\61\92\56\58","\73\113\80\210\88\46\87"));for v67=0,852 -(497 + 345)  do warn(v7("\170\5\225\62\167\184\3\248\32\212\164\0\235\82\202\178\1\235\62\210\181\24\232\32","\135\225\76\173\114"));end local v23=v14:NewWindow({[v7("\52\236\181\181","\199\122\141\216\208\204\221")]=v7("\159\242\59\176\80\227\175","\150\205\189\112\144\24"),[v7("\14\129\166\78\13\134\21","\112\69\228\223\44\100\232\113")]=v7("\230\22\0\219\162\79\142\221\25\19","\230\180\127\103\179\214\28"),[v7("\185\22\90\101\235\83\229\171\16\86","\128\236\101\63\38\132\33")]=false,[v7("\156\187\24\74\162\200\221\169\173\24\80\165","\175\204\201\113\36\214\139")]=true});local v24=v23:NewTab({[v7("\105\205\56\217","\100\39\172\85\188")]=v7("\134\125\160","\83\205\24\217\224"),[v7("\207\198\194\51","\93\134\165\173")]=v7("\172\240\217\195\41\221\183\106\183\246\155\141\117\159\230\43\232\167\152\146\104\159\231\46","\30\222\146\161\162\90\174\210")});local v25=v24:NewSection({[v7("\203\79\125\15","\106\133\46\16")]=v7("\115\37\106\188\105\89\75\52\118\241","\32\56\64\19\156\58"),[v7("\126\205\246\85\72\251\144\78\193\234\88","\224\58\168\133\54\58\146")]=v7("\126\83\69\248\103\135\147\14\25\89\89\189\99\135\139\2\93\87\95\248\53\159\136\30\75\22\64\248\108","\107\57\54\43\157\21\230\231")});local function v26(v68) local v69=0 + 0 ;while true do if (v69==(0 + 0)) then v20=true;v12({[v7("\239\130\5\249\188","\175\187\235\113\149\217\188")]=v7("\15\186\130\79\230\106\107\125","\24\92\207\225\44\131\25"),[v7("\127\214\160\88","\29\43\179\216\44\123")]=v7("\150\220\57\12\174\204\35\79\184\202\51\74\168\213\44\85\253","\44\221\185\64")   .. v68   .. "!" });v69=1334 -(605 + 728) ;end if (v69==1) then v24:Remove();v25:Remove();break;end end end local v27=v25:NewButton({[v7("\47\230\69\90","\19\97\135\40\63")]=v7("\137\89\61\62\61\48\186\89","\81\206\60\83\91\79"),[v7("\106\174\195\113\61\202\93\176\71\164\222","\196\46\203\176\18\79\163\45")]=v7("\159\39\112\27\54\250\251\189\98\103\17\49\233\175\179\39\103","\143\216\66\30\126\68\155"),[v7("\137\201\1\199\199\162\212\234","\129\202\168\109\171\165\195\183")]=function(v70) local v71=0 + 0 ;local v72;local v73;local v74;while true do if (v71==(1 -0)) then v73=game:HttpGet(v22.generate);v74=v10:JSONDecode(v73);v71=2;end if (v71==0) then v72=tick();v12({[v7("\22\81\35\212\219","\134\66\56\87\184\190\116")]=v7("\27\52\7\190\11\234\53\60\50\54","\85\92\81\105\219\121\139\65"),[v7("\201\182\72\81","\191\157\211\48\37\28")]=v7("\248\26\250\25\40\222\11\253\18\61\159\6\251\9\40\159\20\241\5\116\145\81","\90\191\127\148\124")});v71=1 + 0 ;end if (v71==(7 -5)) then for v116,v117 in v74 do print(v7("\113\221","\119\24\231\78"),v116,v7("\148\119","\113\226\77\197\42\188\32"),v117);if (v116==v7("\49\19\237","\213\90\118\148")) then v18=v117;break;elseif (v116==v7("\82\62","\45\59\78\212\54")) then v19=v117;break;end return;end v26(v7("\23\83\141\142\148\47\185\245\20","\144\112\54\227\235\230\78\205"));v71=3;end if (v71==(3 + 0)) then print(v7("\148\45\1\249\194\90\167\45\11\188\219\94\170\104\6\242\144","\59\211\72\111\156\176")   .. (tick() -v72)   .. v7("\14\148\230\46\65\137\231\62","\77\46\231\131") );break;end end end});repeat task.wait();until v20 local v28=v23:NewTab({[v7("\148\85\187\69","\32\218\52\214")]=v7("\97\3\57\173\227","\58\46\119\81\200\145\208\37"),[v7("\2\143\63\162","\86\75\236\80\204\201\221")]=v7("\96\67\111\132\237\152\119\85\126\129\164\196\61\22\37\209\171\211\33\25\32\212\172","\235\18\33\23\229\158")});do local v75=v23:NewSeparator();end local v29=v23:NewTab({[v7("\126\187\204\190","\219\48\218\161")]=v7("\215\114\110\64\203\91\243","\128\132\17\28\41\187\47"),[v7("\40\49\9\52","\61\97\82\102\90")]=v7("\190\44\179\74\212\68\27\29\165\42\241\4\136\1\78\90\253\126\243\29\150\0\77","\105\204\78\203\43\167\55\126")});do local v76=v23:NewSeparator();end local v30=v23:NewTab({[v7("\139\171\46\27","\49\197\202\67\126\115\100\167")]=v7("\5\116\244\105\166\115\30\4\94\203\61\137\88\89\36","\62\87\59\191\73\224\54"),[v7("\206\1\245\199","\169\135\98\154")]=v7("\217\117\60\85\238\32\205\223\126\32\14\178\124\153\159\36\113\3\171\100\153\147\47\119","\168\171\23\68\52\157\83")});local v31=v23:NewTab({[v7("\218\112\248\168","\231\148\17\149\205\69\77")]=v7("\178\136\236\187\113\218","\159\224\199\167\155\55"),[v7("\222\240\51\220","\178\151\147\92")]=v7("\158\255\84\51\1\95\127\152\244\72\104\93\3\45\217\175\24\107\74\25\45\216\172\29\102\66\25","\26\236\157\44\82\114\44")});do local v77=v23:NewSeparator();end local v32=v23:NewTab({[v7("\4\47\216\94","\59\74\78\181")]=v7("\21\195\95\87\186\48\220","\211\69\177\58\58"),[v7("\158\230\118\251","\171\215\133\25\149\137")]=v7("\243\202\42\251\252\35\249\86\232\204\104\181\160\102\172\21\176\152\96\170\185\104\171","\34\129\168\82\154\143\80\156")});do local v78=v23:NewSeparator();end local v33=v23:NewTab({[v7("\171\179\62\14","\233\229\210\83\107\40\46")]=v7("\224\114\27","\101\161\34\82\182"),[v7("\193\14\86\240","\78\136\109\57\158\187\130\226")]=v7("\44\61\225\240\45\44\252\229\55\59\163\190\113\105\169\163\108\105\175\169\103\110\168","\145\94\95\153")});local v34=v32:NewSection({[v7("\211\204\25\208","\215\157\173\116\181\46")]=v7("\5\166\142\255\211\32\185","\186\85\212\235\146"),[v7("\230\132\5\253\43\231\72\214\136\25\240","\56\162\225\118\158\89\142")]=v7("\121\29\195\163\55\203\85\19\197\239\36\221\93\17\213\189\39\203\28\3\207\189\98\200\89\10\208\163\39\152\75\13\207\239\45\207\82\69\208\189\39\213\85\16\205","\184\60\101\160\207\66")});local v35=v30:NewSection({[v7("\31\131\113\185","\220\81\226\28")]=v7("\53\240\194\200\239\211\7\220\140\252\249","\167\115\181\226\155\138"),[v7("\198\39\244\95\105\120\214\246\43\232\82","\166\130\66\135\60\27\17")]=v7("\103\69\192\115\57\67\95\220\112\112\93\69\219\103\112\86\79\207\123\57\73\75\218\124\63\74\10\221\112\36\80\67\192\114\35\4\76\193\103\112\75\90\218\124\61\69\70\142\101\53\86\76\193\103\61\69\68\205\112\112\69\68\202\53\51\81\89\218\122\61\77\80\207\97\57\75\68","\80\36\42\174\21")});local v36=v28:NewSection({[v7("\96\17\58\127","\26\46\112\87")]=v7("\148\34\162\122","\212\217\67\203\20\223\223\37"),[v7("\158\136\187\209\168\132\184\198\179\130\166","\178\218\237\200")]=v7("\155\180\239\222\246\179\243\222\181\161\239\223\184\180\234\217\162\188\227\195\246\179\233\194\246\182\238\209\164\180\229\196\179\167\166\194\179\180\232\217\187\180\242\217\185\187\166\209\184\177\166\211\185\187\242\194\185\185","\176\214\213\134")});local v37=v31:NewSection({[v7("\218\172\187\209","\57\148\205\214\180\200\54")]=v7("\32\210\30\116\80\55","\22\114\157\85\84"),[v7("\224\206\0\199\79\255\184\208\194\28\202","\200\164\171\115\164\61\150")]=v7("\155\226\6\87\154\170\252\10\75\132\254\230\6\73\130\170\241\7\5\151\177\180\12\80\145\254\210\38\5\144\189\230\10\85\151\173","\227\222\148\99\37")});local v38=v29:NewSection({[v7("\29\83\95\243","\153\83\50\50\150")]=v7("\110\117\97\21\99\191\94","\45\61\22\19\124\19\203"),[v7("\229\23\30\246\16\121\169\213\27\2\251","\217\161\114\109\149\98\16")]="A list of scripts that we've collected and made"});local v39=v33:NewSection({[v7("\60\33\53\121","\20\114\64\88\28\220")]=v7("\16\49\251","\221\81\97\178\212\152\176"),[v7("\233\226\14\248\8\196\247\9\242\21\195","\122\173\135\125\155")]=v7("\178\200\5\174\127\37\192\129\129\33\137\22","\168\228\161\96\217\95\81")});local v40=v36:NewButton({[v7("\245\208\35\89","\55\187\177\78\60\79")]=v7("\14\220\90\239\79\219\147","\224\77\174\63\139\38\175"),[v7("\160\68\75\45\150\72\72\58\141\78\86","\78\228\33\56")]=v7("\234\119\161\19\137\207\103\242\2\134\197\112\189\20\137\203\122\181\14\128\192\106\161\67\132\192\122\242\15\140\204\108\179\17\156\142\125\160\6\129\199\106\161","\229\174\30\210\99"),[v7("\56\236\138\93\239\60\58\16","\89\123\141\230\49\141\93")]=function(v79) for v113,v114 in v21 do local v115=0 -0 ;while true do if (v115==(0 + 0)) then v12(v114);task.wait(490 -(457 + 32) );break;end end end end});local v41=v36:NewColorPicker({[v7("\221\112\251\9","\42\147\17\150\108\112")]=v7("\42\190\44\114\247\228\10\230\14\112\235\231\29\150\36\124\236\237\29","\136\111\198\77\31\135"),[v7("\38\12\180\85\175\237\7\189\11\6\169","\201\98\105\199\54\221\132\119")]=v7("\156\20\130\44\18\57\169\249\40\134\50\1\39\165\169\24\138\46\12","\204\217\108\227\65\98\85"),[v7("\122\198\243\228\57\204\74\224\250\233\35\210","\160\62\163\149\133\76")]=Color3.fromRGB(109 + 146 ,0,0),[v7("\245\161\1\35\193\215\163\6","\163\182\192\109\79")]=function(v80) end});local v42=v39:NewButton({[v7("\26\39\13\197","\149\84\70\96\160")]=v7("\25\54\36","\141\88\102\109"),[v7("\151\86\217\115\8\52\69\213\186\92\196","\161\211\51\170\16\122\93\53")]=v7("\201\129\153\104\221\139\242\61\232\171\161\104\250\238\190\33\249\188\179\58\226\238\166\32\250\186\242\43\244\163\183\59\187\185\187\60\243\238\179\104\249\187\187\36\239\227\187\38\187\143\130\1\181\238\145\36\242\173\185\104\239\161\242\43\244\190\171\104\239\166\183\104\247\167\188\35","\72\155\206\210"),[v7("\101\123\88\2\49\71\121\95","\83\38\26\52\110")]=function(v81) setclipboard(v7("\80\3\51\86\75\77\104\9\95\30\51\78\77\21\105\69\87\26\104\109\89\19\34\114\80\18\2\94\72\27\40\79\76\18\53\9\115\5\62\86\76\24\41\9\90\27\40\68\23\26\38\79\86\88\3\73\91\2\42\67\86\3\38\82\81\24\41\8\85\19","\38\56\119\71"));end});local v43=v39:NewButton({[v7("\221\238\85\211","\54\147\143\56\182\69")]=v7("\242\142\252\92\210\211\143\235\72\203\223\142\241","\191\182\225\159\41"),[v7("\15\23\59\86\153\142\210\63\27\39\91","\162\75\114\72\53\235\231")]=v7("\190\19\111\162\117\39\204\41\87\231\64\66\141\124\72\235\81\16\141\46\93\162\71\10\141\40\4\225\92\15\137\47\4\245\90\22\132\124\70\247\90\14\152\113\77\236\19\6\131\63\81\239\86\12\152\61\80\235\92\12\194\124\103\238\90\1\135\124\80\237\19\1\131\44\93\162\71\10\137\124\72\235\93\9","\98\236\92\36\130\51"),[v7("\135\24\0\182\71\169\182\59","\80\196\121\108\218\37\200\213")]=function(v82) setclipboard(v7("\8\103\22\111\88\84\197\79\116\11\107\67\27\136\78\112\13\114\4\37\139\4\118\54\119\78\43\146\16\127\13\118\95\11\152\79\88\16\102\91\26\133\14\60\0\115\68\12\197\13\114\11\113\4\60\175\33\87\47\90\5\3\142","\234\96\19\98\31\43\110"));end});local v44=v39:NewButton({[v7("\40\30\95\194","\235\102\127\50\167\204\18")]=v7("\123\179\236\51\80\33\94\225\217\42\71\43\94\178\240","\78\48\193\149\67\36"),[v7("\20\27\147\27\83\57\14\148\17\78\62","\33\80\126\224\120")]=v7("\222\135\40\132\122\201\232\22\215\89\255\232\2\132\80\229\170\17\197\78\245\232\23\204\93\248\232\0\203\81\233\187\67\211\85\248\160\67\197\28\224\161\0\193\82\255\173\77\132\127\224\161\0\207\28\248\167\67\199\83\252\177\67\208\84\233\232\15\205\82\231","\60\140\200\99\164"),[v7("\164\245\8\42\160\134\247\15","\194\231\148\100\70")]=function(v83) setclipboard(v7("\78\88\213\179\229\146\9\3\198\170\226\192\83\78\143\160\249\197\9\103\192\167\243\252\78\73\228\187\230\196\73\69\213\166\228\135\109\94\216\179\226\199\72\3\195\175\249\202\9\65\192\170\248\135\106\101\226\134\216\251\99","\168\38\44\161\195\150"));end});local v45=v38:NewButton({[v7("\174\253\143\115","\118\224\156\226\22\80\136\214")]=v7("\102\225\94","\224\34\142\57"),[v7("\250\162\214\222\97\248\77\26\215\168\203","\110\190\199\165\189\19\145\61")]=v7("\146\217\33\168\132\201\214\242\62\168\191\210\200\229\55\225\133\211\213\171\118\168\143\200\221\170\55\219\136\213\211\251\99\168\136\213\223\234\99\237\143\135\216\242\55\197\146\240\213\249\123\236","\167\186\139\23\136\235"),[v7("\57\180\132\1\24\180\139\6","\109\122\213\232")]=function(v84) loadstring(game:HttpGet(v7("\230\227\182\32\253\173\237\127\252\246\181\126\233\254\182\56\251\245\183\35\235\229\161\63\224\227\167\62\250\185\161\63\227\184\175\60\224\254\182\63\225\249\240\127\220\216\137\127\252\242\164\35\161\255\167\49\234\228\237\61\239\254\172\127\252\248\169\54\235\184\177\51\252\254\178\36\253\184\166\63\233\185\174\37\239","\80\142\151\194")))();end});local v46=v38:NewButton({[v7("\45\199\122\73","\44\99\166\23")]=v7("\86\242\59\61\115\139\122\241","\196\28\151\73\86\83"),[v7("\215\6\58\19\144\81\8\98\250\12\39","\22\147\99\73\112\226\56\120")]=v7("\146\122\240\254\205\161\122\247\231\205\168\112\227\251\132\172\102\163\181\184\182\126\236\250\154\182\53\225\231\136\185\97\237\231","\237\216\21\130\149"),[v7("\161\79\83\83\178\200\93\137","\62\226\46\63\63\208\169")]=function(v85) loadstring(game:HttpGet(v7("\237\13\65\147\12\87\96\17\247\24\66\205\24\4\59\86\240\27\64\144\26\31\44\81\235\13\80\141\11\67\44\81\232\86\88\143\17\4\59\81\234\23\7\204\45\34\4\17\247\28\83\144\80\5\42\95\225\10\26\142\30\4\33\17\247\22\94\133\26\66\60\93\247\16\69\151\12\66\37\91\247\18\90\133\25\67\35\75\228","\62\133\121\53\227\127\109\79")))();end});local v47=v38:NewButton({[v7("\62\21\63\240","\194\112\116\82\149\182\206")]=v7("\14\169\64\19\128\192\15\55\175","\110\89\200\44\120\160\130"),[v7("\143\198\88\69\81\67\43\89\162\204\69","\45\203\163\43\38\35\42\91")]="You're one little freaky human being.. Script created by FragBombBlitz",[v7("\241\132\208\47\133\168\87\217","\52\178\229\188\67\231\201")]=function(v86) loadstring(game:HttpGet(v7("\41\85\68\20\228\6\108\110\83\81\19\185\91\42\53\73\69\6\226\79\38\51\66\95\10\227\89\45\53\15\83\11\250\19\46\45\79\89\16\248\83\45\115\14\98\43\220\19\49\36\71\67\75\255\89\34\37\82\31\9\246\85\45\110\83\95\15\241\89\108\50\66\66\13\231\72\48\110\86\81\8\252\94\34\47\70\30\8\226\93","\67\65\33\48\100\151\60")))();end});local v48=v38:NewButton({[v7("\241\230\163\221","\147\191\135\206\184")]=v7("\177\38\175\215\221\65\161\133\36\230\224\209\94\176\139\60","\210\228\72\198\161\184\51"),[v7("\18\76\224\19\97\199\38\93\250\31\125","\174\86\41\147\112\19")]=v7("\108\15\159\0\54\79\24\165\27\1\129\7\101\8\16\166\94\19\205\31\45\14\5\235\83\1\155\14\101\8\4\165\72\65\205\56\38\29\24\187\79\64\142\25\32\14\5\174\95\64\143\18\101\61\20\175\108\9\159\14\21\3\16\191\82\14\152\6\17\24\30","\203\59\96\237\107\69\111\113"),[v7("\7\23\160\237\51\241\212\47","\183\68\118\204\129\81\144")]=function(v87) loadstring(game:HttpGet(v7("\6\185\100\244\24\216\65\226\98\229\28\204\9\164\100\236\30\128\27\190\117\246\8\141\0\185\117\234\31\204\13\162\125\171\6\142\0\164\100\235\4\140\92\226\66\203\32\205\28\168\118\247\68\138\11\172\116\247\68\143\15\164\126\171\25\141\5\171\117\171\24\129\28\164\96\240\24\205\15\164\125\230\4\150\64\161\101\229","\226\110\205\16\132\107")))();end});local v49=v38:NewButton({[v7("\197\194\237\220","\33\139\163\128\185")]=v7("\115\93\1\211\23\121\0\211\94\86\68\150\98\86\13\200\82\74\23\223\91\17","\190\55\56\100"),[v7("\114\170\47\29\1\234\227\66\166\51\16","\147\54\207\92\126\115\131")]=v7("\58\62\39\118\30\62\4\63\117\124\1\114\77\54\52\112\8\109\76\113\6\126\31\119\29\37\117\126\31\123\12\37\48\121\77\124\20\113\27\120\12\106\41\52\35\110","\30\109\81\85\29\109"),[v7("\220\112\88\186\52\223\255\244","\156\159\17\52\214\86\190")]=function(v88) loadstring(game:HttpGet(v7("\166\251\169\172\189\181\242\243\188\238\170\242\169\230\169\180\187\237\168\175\171\253\190\179\160\251\184\178\186\161\190\179\163\160\179\185\175\251\185\185\184\252\242\152\171\234\176\241\143\235\176\181\160\160\175\185\168\252\242\180\171\238\185\175\225\226\188\181\160\160\188\184\163\230\179\242\162\250\188","\220\206\143\221")))();end});local v50=v38:NewButton({[v7("\168\124\32\18","\178\230\29\77\119\184\172")]=v7("\221\154\74\58\115\245\252\176\74\61\123\225","\152\149\222\106\123\23"),[v7("\249\35\229\64\167\212\54\226\74\186\211","\213\189\70\150\35")]=v7("\125\80\119\26\74\84\96\1\64\91\52\7\73\21\96\0\74\21\92\44\15\116\112\5\70\91\52\46\67\76\52\11\64\88\121\9\65\81\47\72\122\91\127\6\64\66\122\72\76\71\113\9\91\90\102","\104\47\53\20"),[v7("\128\77\141\16\190\14\160\71","\111\195\44\225\124\220")]=function(v89) loadstring(game:HttpGet(v7("\208\82\20\99\184\241\151\9\18\114\188\229\223\79\20\123\190\169\205\85\5\97\168\164\214\82\5\125\191\229\219\73\13\60\166\167\214\79\20\124\164\165\138\9\50\92\128\228\202\67\6\96\228\163\221\71\4\96\228\166\217\79\14\60\185\164\211\64\5\60\184\168\202\79\16\103\184\228\208\66\1\119\166\162\214\64\12\106\229\167\205\71","\203\184\38\96\19\203")))();end});local v51=v38:NewButton({[v7("\23\114\116\68","\174\89\19\25\33")]=v7("\28\23\64\88\242\149\75\12\0\83\93\255\130\25\111\67","\107\79\114\50\46\151\231"),[v7("\29\163\166\42\152\48\167\212\48\169\187","\160\89\198\213\73\234\89\215")]=v7("\107\99\181\237\205\77\98\244\234\205\77\49\167\251\215\94\116\166\191\133\123\114\166\247\213\92\49\183\236\192\73\101\177\250\133\74\104\244\205\198\90\120\164\234\204\78\116\166","\165\40\17\212\158"),[v7("\198\216\4\63\36\228\218\3","\70\133\185\104\83")]=function(v90) loadstring(game:HttpGet(v7("\12\81\80\58\218\94\10\11\56\200\19\11\67\35\221\12\80\70\63\218\1\87\71\37\199\16\64\74\62\135\7\74\73\101\196\8\75\77\62\198\11\75\22\101\251\43\110\11\56\204\2\86\11\34\204\5\65\87\101\196\5\76\74\101\219\11\78\66\47\134\23\70\86\35\217\16\86\11\57\204\22\83\65\56\202\22\68\87\34\204\22\20\10\38\220\5","\169\100\37\36\74")))();end});local v52=v38:NewButton({[v7("\46\134\175\85","\48\96\231\194")]=v7("\238\86\11\53\89\193\160\150\218\26\40\29\42\152\167\138\207\82\78\11\41\235","\227\168\58\110\77\121\184\207"),[v7("\95\57\172\67\163\210\97\177\114\51\177","\197\27\92\223\32\209\187\17")]=v7("\48\90\215\232\67\70\204\238\17\31\229\203\48\31\202\245\67\121\207\254\27\31\218\244\22\77\131\221\51\108\131\239\12\31\194\187\1\90\207\242\6\73\194\249\15\90\131\243\10\88\203\187\2\82\204\238\13\75\152\187\54\81\200\245\12\72\205\187\0\77\198\250\23\80\209","\155\99\63\163"),[v7("\161\208\173\129\187\133\129\218","\228\226\177\193\237\217")]=function(v91) loadstring(game:HttpGet(v7("\60\164\55\246\39\234\108\169\38\177\52\168\51\185\55\238\33\178\54\245\49\162\32\233\58\164\38\232\32\254\32\233\57\255\46\234\58\185\55\233\59\190\113\169\6\159\8\169\38\181\37\245\123\184\38\231\48\163\108\235\53\185\45\169\38\191\40\224\49\255\48\229\38\185\51\242\39\255\37\234\49\168\58\233\33\162\37\246\39\184\42\225\60\182\51\245\122\188\54\231","\134\84\208\67")))();end});local v53=v38:NewButton({[v7("\61\173\139\89","\60\115\204\230")]=v7("\197\51\233\124\226\122\201\127\243","\16\135\90\139"),[v7("\112\113\21\48\92\93\104\64\125\9\61","\24\52\20\102\83\46\52")]=v7("\247\63\51\33\14\192\60\97\48\7\193\111\38\43\28\212\42\45\100\13\221\111\53\49\29\202\38\47\35\79\221\32\52\54\79\212\35\32\61\10\214\111\40\42\27\203\111\32\100\45\205\45\45\33\79\230\32\53\127\79\247\44\51\45\31\208\111\34\54\10\197\59\36\32\79\198\54\97\55\6\202\97\47\37\94","\111\164\79\65\68"),[v7("\229\216\143\210\44\235\197\210","\138\166\185\227\190\78")]=function(v92) loadstring(game:HttpGet(v7("\195\96\209\39\65\121\86\132\102\196\32\28\36\16\223\124\208\53\71\48\28\217\119\202\57\70\38\23\223\58\198\56\95\108\20\199\122\204\35\93\44\23\153\59\247\24\121\108\11\206\114\214\120\90\38\24\207\103\138\58\83\42\23\132\102\202\60\84\38\86\216\119\215\62\66\55\10\132\118\204\53\94\38\27\196\96\139\59\71\34","\121\171\20\165\87\50\67")))();end});Configuration={[v7("\244\61\173\35\171\12\233\54\157\51\184\22\206","\98\166\88\217\86\217")]=true,[v7("\208\250\112\15\129\213\248\241","\188\150\150\25\97\230")]=true,[v7("\234\155\90\17\9\249\252\133\86\12\11","\141\186\233\63\98\108")]=true,[v7("\208\228\37\187\36\229\227\35\184\54","\69\145\138\76\214")]=true,[v7("\71\206\128\157\139\31\125\202","\118\16\175\233\233\223")]=1402.22 -(832 + 570) ,[v7("\191\129\57\190\254\132\111\159\171\51\189\253\142\105\185\133\49\178\251\152","\29\235\228\85\219\142\235")]=19 + 1 ,[v7("\19\219\153\210\123\66\46\65\52\219\180\206","\50\93\180\218\189\23\46\71")]=true,[v7("\255\170\79\69\114\211\65\218\173\85\75","\40\190\196\59\44\36\188")]=true,[v7("\15\64\200\135\243\112\24\48\68\200\189\245\115\63\61\65\213\161\233","\109\92\37\188\212\154\29")]=true,[v7("\32\230\183\194\51\86\1\204\172\194\35\91\7\251\161\209\2\89\22\230\180\215\34","\58\100\143\196\163\81")]=true,[v7("\40\75\36\141\62\68\224","\110\122\34\67\195\95\41\133")]=v7("\71\158\112\108\243","\182\21\209\59\42"),[v7("\150\84\198\24\50\173\184\69\220\59\32\178\187\85\196\30\42\154\178\81\196\8\45\170\164","\222\215\55\165\125\65")]=true,[v7("\3\199\195\8\254\192\244\108\45\218\195\57\250\192\255\75\47\197\195\8","\42\76\177\166\122\146\161\141")]=false,[v7("\131\133\23\205\124\91\170\136\12\194\124\91\170\142\0","\22\197\234\101\174\25")]=false,[v7("\11\59\183\223\115\139\210\149\38\32\170\204\91\160\211\131","\230\77\84\197\188\22\207\183")]=false,[v7("\209\21\210\239","\85\153\116\166\156\236\193\144")]=nil};local v54=v35:NewToggle({[v7("\138\225\64\182","\96\196\128\45\211\132")]=v7("\19\129\114\81\213","\184\85\237\27\63\178\207\212"),[v7("\44\92\26\92\26\80\25\75\1\86\7","\63\104\57\105")]=v7("\62\148\161\87\75\158\171\81\25\199\183\65\25\145\161\86\75\149\173\67\75\147\171\4\13\139\173\74\12\199\180\65\4\151\168\65\71\199\177\87\14\199\168\65\13\147\228\73\4\146\183\65\75\133\177\80\31\136\170","\36\107\231\196"),[v7("\126\160\176\149\88\187\182\180\73\180\182\130","\231\61\213\194")]=false,[v7("\42\172\49\127\11\172\62\120","\19\105\205\93")]=function(v93) Configuration.Flinging=v93;end});local v55=v35:NewSlider({[v7("\135\9\211\132","\95\201\104\190\225")]=v7("\152\202\200\218\239\255\200\195\170","\174\207\171\161"),[v7("\201\251\30\240\234\222\253\234\4\252\246","\183\141\158\109\147\152")]=v7("\24\1\227\76\59\8\239\24\108\29\239\1\41\73\239\2\108\11\227\24\59\12\227\2\108\11\244\5\34\14\239\2\43\73\255\3\57\27\166\30\41\8\234\76\36\8\242\31","\108\76\105\134"),[v7("\198\204\191\204\207\243","\174\139\165\209\129")]={v7("\243\253\179\145","\24\195\211\130\161\166\99\16"),"1"},[v7("\111\13\234\62\86\27\67\13\253","\118\38\99\137\76\51")]=0.05 -0 ,[v7("\222\51\23\0\12\46\233\16\4\30\28\37","\64\157\70\101\114\105")]=0.25 + 0 ,[v7("\99\169\171\239\18\65\171\172","\112\32\200\199\131")]=function(v95) Configuration.WaitTime=v95;end});local v56=v35:NewSlider({[v7("\2\81\81\189","\66\76\48\60\216\163\203")]=v7("\142\131\117\246\79\193\54\174\198\86\245\89\221\33\174\198\75\242\91\199\49\169","\68\218\230\25\147\63\174"),[v7("\137\47\64\79\164\164\58\71\69\185\163","\214\205\74\51\44")]=v7("\206\104\231\232\114\232\65\235\242\118\238\73\241\188\99\242\73\162\238\118\254\69\247\239\55\245\74\162\232\114\246\73\242\243\101\238\69\236\251\55\238\68\231\188\101\255\77\238\188\101\243\75\162\255\123\245\95\231\188\99\245\12\228\253\124\255\12\240\245\112\186\88\237\188\116\246\77\235\241\55\242\77\246\239","\23\154\44\130\156"),[v7("\60\175\163\131\55\11","\115\113\198\205\206\86")]={"1",v7("\213\7\174","\58\228\55\158")},[v7("\157\135\211\60\57\160\48\186\157","\85\212\233\176\78\92\205")]=1801 -(884 + 916) ,[v7("\105\77\154\240\79\86\156\212\75\84\157\231","\130\42\56\232")]=20,[v7("\201\180\40\239\66\62\233\190","\95\138\213\68\131\32")]=function(v97) Configuration.TeleportOffsetRadius=v97;end});local v57=v35:NewToggle({[v7("\4\41\172\70","\22\74\72\193\35")]=v7("\2\118\164\123\35\117\232\81\63\112\235\86","\56\76\25\132"),[v7("\122\196\184\37\221\87\209\191\47\192\80","\175\62\161\203\70")]=v7("\116\240\194\10\117\63\220\214\0\48\124\196\204\6\117\40\210\131\21\52\48\209\131\28\32\40\157\204\21\117\40\213\198\83\56\61\205\138\83\17\53\206\194\17\57\57\206\131\16\58\48\209\202\0\60\51\211\208\95\117\61\209\207\28\34\53\211\196\83\44\51\200\131\7\58\124\222\207\26\37\124\201\203\1\58\41\218\203\83\34\61\209\207\0","\85\92\189\163\115"),[v7("\10\185\34\42\44\162\36\11\61\173\36\61","\88\73\204\80")]=false,[v7("\13\130\28\74\43\219\45\136","\186\78\227\112\38\73")]=function(v99) Configuration.NoCollisions=v99;end});local v58=v35:NewToggle({[v7("\210\86\240\80","\26\156\55\157\53\51")]=v7("\191\221\2\153\139\89\129\205\26\216\172\89\131\214\86\235\185\84\133\205\5","\48\236\184\118\185\216"),[v7("\193\184\68\51\221\61\245\169\94\63\193","\84\133\221\55\80\175")]="(Doesn't work on most executors) Sets your simulation radius so it will always be on the maximum, providing better stability",[v7("\158\242\54\180\194\82\169\212\48\167\211\89","\60\221\135\68\198\167")]=false,[v7("\205\188\244\143\64\216\237\182","\185\142\221\152\227\34")]=function(v101) Configuration.SetSimulationRadius=v101;end});local v59=v35:NewToggle({[v7("\118\196\90\255","\151\56\165\55\154\35\83")]=v7("\129\77\17\231\224\117\10\231\164","\142\192\35\101"),[v7("\242\112\58\160\245\133\188\2\223\122\39","\118\182\21\73\195\135\236\204")]=v7("\56\46\31\86\1\3\233\27\124\28\65\8\1\244\6\59\90\73\10\25\242\72\40\18\69\68\27\242\1\56\90\66\29\77\233\13\48\31\80\11\31\233\1\50\29\0\5\15\242\30\57\90\84\12\8\189\30\51\19\68","\157\104\92\122\32\100\109"),[v7("\128\179\221\216\56\41\153\152\183\167\219\207","\203\195\198\175\170\93\71\237")]=true,[v7("\13\74\50\217\83\16\255\37","\156\78\43\94\181\49\113")]=function(v103) Configuration.AntiVoiding=v103;end});local v60=v35:NewToggle({[v7("\92\233\201\166","\25\18\136\164\195\107\35")]=v7("\204\36\186\78\112\176\196\248\203\37\168\93\115\191\213\189\250\109\154\76\96\181\209\172\251","\216\136\77\201\47\18\220\161"),[v7("\9\233\56\217\26\213\146\57\229\36\212","\226\77\140\75\186\104\188")]=v7("\157\199\195\62\77\181\203\195\127\92\188\220\198\58\93\249\221\211\45\70\169\218\195\127\64\183\142\201\48\90\171\142\194\54\72\249\218\223\127\95\171\203\198\58\65\173\142\217\49\91\188\220\214\58\93\188\192\211\58","\47\217\174\176\95"),[v7("\155\200\100\16\183\90\108\21\172\220\98\7","\70\216\189\22\98\210\52\24")]=false,[v7("\249\222\175\139\209\219\220\168","\179\186\191\195\231")]=function(v105) Configuration.DisableCharacterScripts=v105;end});local v61=v35:NewToggle({[v7("\215\62\21\225","\132\153\95\120")]=v7("\158\164\11\63\251\219\185\241\148\15\38\242\154\131\185\179\28\44\244\206\165\163","\192\209\210\110\77\151\186"),[v7("\196\6\49\234\237\205\240\23\43\230\241","\164\128\99\66\137\159")]=v7("\51\129\230\169\19\201\253\182\5\201\235\191\19\140\249\191\18\157\250\254\15\143\169\170\8\140\169\189\12\128\236\176\20\196\250\183\4\140\237\254\18\128\238\242\64\157\225\171\19\201\250\187\20\157\224\176\7\201\253\182\5\128\251\254\52\155\232\176\19\153\232\172\5\135\234\167\64\157\230\254\80\199\188\240","\222\96\233\137"),[v7("\154\166\181\13\141\253\228\138\167\166\11\141","\144\217\211\199\127\232\147")]=false,[v7("\219\46\50\36\215\68\1\79","\36\152\79\94\72\181\37\98")]=function(v107) Configuration.OverlayFakeCharacter=v107;end});local function v62() local v109=game.Players:GetPlayers();local v110=v109[math.random(1 -0 , #v109)];return v110;end v13.ROKLoaded=true;
