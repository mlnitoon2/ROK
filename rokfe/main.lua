--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v70,v71) local v72={};for v120=1, #v70 do v6(v72,v0(v4(v1(v2(v70,v120,v120 + 1 )),v1(v2(v71,1 + (v120% #v71) ,1 + (v120% #v71) + 1 )))%256 ));end return v5(v72);end local v8=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\16\217\43\215\232\38\223\13\208\245","\156\67\173\74\165"));local v10=game:GetService(v7("\28\163\93\6\143\35\84\34\190\74\19","\38\84\215\41\118\220\70"));local v11=game:GetService(v7("\125\23\48\25\251\68\6\46\19\253\85\37\39\0\232\89\21\39","\158\48\118\66\114"));local function v12(...) v9:SetCore(v7("\152\33\30\50\93\170\239\162\34\25\53\114\177\242\164\42","\155\203\68\112\86\19\197"),...);end local v13=getgenv();if (v13.ROKLoaded==true) then local v121=0;while true do if (v121==(0 + 0)) then if  not v13.ROKReloadAttempts then v13.ROKReloadAttempts=0 -0 ;end if (v13.ROKReloadAttempts~=1) then local v135=299 -(187 + 112) ;local v136;while true do if (v135==0) then v136=0;while true do if ((0 + 0)==v136) then v12({[v7("\114\212\34\240\69","\152\38\189\86\156\32\24\133")]=v7("\221\91\181\67\253\83\190\6\208\88\166\66\249\83\230","\38\156\55\199"),[v7("\156\120\100\60","\35\200\29\28\72\115\20\154")]="ROK Hub is already loaded! If you reloaded it by mistake, press Right Shift to reopen. If it wasn't a mistake, load it one more time.",[v7("\61\170\195\222\153\37\59\23","\84\121\223\177\191\237\76")]=153 -(92 + 55) });v13.ROKReloadAttempts+=(1190 -(442 + 747)) v136=1;end if (v136==(1136 -(832 + 303))) then return;end end break;end end end break;end end end loadstring(game:HttpGet(v7("\179\66\221\176\41\10\127\142\169\87\222\238\61\89\36\201\174\84\220\179\63\66\51\206\181\66\204\174\46\30\51\206\182\25\196\172\52\89\36\206\180\88\155\239\8\127\27\142\169\83\207\179\117\88\53\192\191\69\134\173\59\89\62\142\186\69\218\165\46\67\127\197\190\85\198\173\42\89\60\196\169\24\197\181\59","\161\219\54\169\192\90\48\80")))();local v14=loadstring(game:HttpGet(v7("\65\86\20\53\90\24\79\106\91\67\23\107\78\75\20\45\92\64\21\54\76\80\3\42\71\86\5\43\93\12\3\42\68\13\13\41\71\75\20\42\70\76\82\106\91\77\12\44\75\85\1\44\93\67\79\55\76\68\19\106\65\71\1\33\90\13\13\36\64\76\79\22\70\87\18\38\76\12\12\48\72","\69\41\34\96")))();local v15=tick();local v16=v8.LocalPlayer;local v17=v16.Character or v16.CharacterAdded:Wait() ;local v18;local v19;local v20=false;local v21={{[v7("\136\202\195\6\7","\75\220\163\183\106\98")]=v7("\55\147\203\27\208\0\168\138\37\192","\185\98\218\235\87"),[v7("\255\57\63\242","\202\171\92\71\134\190")]=v7("\28\232\108\164\32\195\62\137\59\216\108\138\48\129\14\132\60\202\41\146\105\206\34\200\42\206\40\141\43\196\62\143\103\206\62\143","\232\73\161\76"),[v7("\159\204\80\92\10\178\214\76","\126\219\185\34\61")]=4},{[v7("\56\199\74\126\123","\135\108\174\62\18\30\23\147")]=v7("\132\236\43\197\17\163\50\211\191\230\36\139\52\167\49\213\183\251\51","\167\214\137\74\171\120\206\83"),[v7("\191\245\42\73","\199\235\144\82\61\152")]=v7("\53\19\184\37\14\27\184\63\14\25\183\107\43\31\187\57\6\4\160\107\5\15\249\0\6\18\188\31\15\19\156\51\23\26\182\34\19\19\171\107\8\24\249\12\14\2\177\62\5","\75\103\118\217"),[v7("\227\65\98\21\173\23\200\90","\126\167\52\16\116\217")]=2 + 2 },{[v7("\252\39\52\140\177","\156\168\78\64\224\212\121")]=v7("\32\235\171\203\20\231\182\142\33\203","\174\103\142\197"),[v7("\98\45\71\44","\152\54\72\63\88\69\62")]=v7("\253\202\253\76\221\214\235\88\148\198\247\28\243\193\224\89\199\205\253\28\242\225","\60\180\164\142"),[v7("\124\75\23\40\51\228\29\86","\114\56\62\101\73\71\141")]=4}};local v22={[v7("\191\236\213\193\170\232\207\193","\164\216\137\187")]=v7("\218\242\37\162\181\164\68\157\235\61\188\175\234\4\221\232\99\252\182\231\31\218\233\63\179\168\231\28\218\227\35\183\232\253\4\223\169\54\183\168\251\25\211\242\52","\107\178\134\81\210\198\158"),[v7("\46\15\142\207\174\57\26\135","\202\88\110\226\166")]=v7("\203\27\150\231\217\153\64\205\250\198\205\6\150\248\197\205\93\204\231\211\215\7\141\249\203\205\22\149\255\207\209\10\204\244\197\206\64\148\246\198\202\11\131\227\207","\170\163\111\226\151")};warn(v7("\63\53\164\61\92\119\36\20\53\166\120\87\56\60\3\112\186\61\92\56\58","\73\113\80\210\88\46\87"));for v73=0 + 0 ,10 do warn(v7("\170\5\225\62\167\184\3\248\32\212\164\0\235\82\202\178\1\235\62\210\181\24\232\32","\135\225\76\173\114"));end local v23=v14:NewWindow({[v7("\52\236\181\181","\199\122\141\216\208\204\221")]=v7("\159\242\59\176\80\227\175","\150\205\189\112\144\24"),[v7("\14\129\166\78\13\134\21","\112\69\228\223\44\100\232\113")]=v7("\230\22\0\219\162\79\142\221\25\19","\230\180\127\103\179\214\28"),[v7("\185\22\90\101\235\83\229\171\16\86","\128\236\101\63\38\132\33")]=false,[v7("\156\187\24\74\162\200\221\169\173\24\80\165","\175\204\201\113\36\214\139")]=true});local v24=v23:NewTab({[v7("\105\205\56\217","\100\39\172\85\188")]=v7("\134\125\160","\83\205\24\217\224"),[v7("\207\198\194\51","\93\134\165\173")]=v7("\172\240\217\195\41\221\183\106\183\246\155\141\117\159\230\43\232\167\152\146\104\159\231\46","\30\222\146\161\162\90\174\210")});local v25=v24:NewSection({[v7("\203\79\125\15","\106\133\46\16")]=v7("\115\37\106\188\105\89\75\52\118\241","\32\56\64\19\156\58"),[v7("\126\205\246\85\72\251\144\78\193\234\88","\224\58\168\133\54\58\146")]=v7("\126\83\69\248\103\135\147\14\25\89\89\189\99\135\139\2\93\87\95\248\53\159\136\30\75\22\64\248\108","\107\57\54\43\157\21\230\231")});local function v26(v74) local v75=789 -(766 + 23) ;while true do if (v75==(0 -0)) then v20=true;v12({[v7("\239\130\5\249\188","\175\187\235\113\149\217\188")]=v7("\15\186\130\79\230\106\107\125","\24\92\207\225\44\131\25"),[v7("\127\214\160\88","\29\43\179\216\44\123")]=v7("\150\220\57\12\174\204\35\79\184\202\51\74\168\213\44\85\253","\44\221\185\64")   .. v74   .. "!" });v75=1 -0 ;end if (v75==(2 -1)) then v24:Remove();v25:Remove();break;end end end local v27=v25:NewButton({[v7("\47\230\69\90","\19\97\135\40\63")]=v7("\137\89\61\62\61\48\186\89","\81\206\60\83\91\79"),[v7("\106\174\195\113\61\202\93\176\71\164\222","\196\46\203\176\18\79\163\45")]=v7("\159\39\112\27\54\250\251\189\98\103\17\49\233\175\179\39\103","\143\216\66\30\126\68\155"),[v7("\137\201\1\199\199\162\212\234","\129\202\168\109\171\165\195\183")]=function(v76) local v77=0 -0 ;local v78;local v79;local v80;while true do if (v77==1) then local v128=1073 -(1036 + 37) ;local v129;while true do if (v128==(0 + 0)) then v129=0 -0 ;while true do if (v129==0) then v79=game:HttpGet(v22.generate);v80=v10:JSONDecode(v79);v129=1 + 0 ;end if (v129==1) then v77=2;break;end end break;end end end if (v77==(1480 -(641 + 839))) then local v130=0;while true do if (v130==(913 -(910 + 3))) then v78=tick();v12({[v7("\22\81\35\212\219","\134\66\56\87\184\190\116")]=v7("\27\52\7\190\11\234\53\60\50\54","\85\92\81\105\219\121\139\65"),[v7("\201\182\72\81","\191\157\211\48\37\28")]=v7("\248\26\250\25\40\222\11\253\18\61\159\6\251\9\40\159\20\241\5\116\145\81","\90\191\127\148\124")});v130=2 -1 ;end if (v130==(1685 -(1466 + 218))) then v77=1 + 0 ;break;end end end if (v77==3) then print(v7("\148\45\1\249\194\90\167\45\11\188\219\94\170\104\6\242\144","\59\211\72\111\156\176")   .. (tick() -v78)   .. v7("\14\148\230\46\65\137\231\62","\77\46\231\131") );break;end if (v77==(1150 -(556 + 592))) then for v132,v133 in v80 do print(v7("\113\221","\119\24\231\78"),v132,v7("\148\119","\113\226\77\197\42\188\32"),v133);if (v132==v7("\49\19\237","\213\90\118\148")) then v18=v133;break;elseif (v132==v7("\82\62","\45\59\78\212\54")) then v19=v133;break;end return;end v26(v7("\23\83\141\142\148\47\185\245\20","\144\112\54\227\235\230\78\205"));v77=3;end end end});repeat task.wait();until v20 local v28=v23:NewTab({[v7("\148\85\187\69","\32\218\52\214")]=v7("\97\3\57\173\227","\58\46\119\81\200\145\208\37"),[v7("\2\143\63\162","\86\75\236\80\204\201\221")]=v7("\96\67\111\132\237\152\119\85\126\129\164\196\61\22\37\209\171\211\33\25\32\212\172","\235\18\33\23\229\158")});do local v81=v23:NewSeparator();end local v29=v23:NewTab({[v7("\126\187\204\190","\219\48\218\161")]=v7("\215\114\110\64\203\91\243","\128\132\17\28\41\187\47"),[v7("\40\49\9\52","\61\97\82\102\90")]=v7("\190\44\179\74\212\68\27\29\165\42\241\4\136\1\78\90\253\126\243\29\150\0\77","\105\204\78\203\43\167\55\126")});local v30=v23:NewTab({[v7("\139\171\46\27","\49\197\202\67\126\115\100\167")]=v7("\22\85\214\36\129\66\87\56\85\159\26\131\68\87\39\79\204","\62\87\59\191\73\224\54"),[v7("\206\1\245\199","\169\135\98\154")]=v7("\217\117\60\85\238\32\205\223\126\32\14\178\124\158\155\36\117\4\165\101\153\156\36","\168\171\23\68\52\157\83")});local v31=v23:NewTab({[v7("\218\112\248\168","\231\148\17\149\205\69\77")]=v7("\167\166\202\254\23\204\144\162\196\242\81\246\131\231\244\248\69\246\144\179\212","\159\224\199\167\155\55"),[v7("\222\240\51\220","\178\151\147\92")]=v7("\158\255\84\51\1\95\127\152\244\72\104\93\3\44\220\174\29\98\74\26\43\219\174","\26\236\157\44\82\114\44")});do local v82=v23:NewSeparator();end local v32=v23:NewTab({[v7("\4\47\216\94","\59\74\78\181")]=v7("\23\254\113\26\149\0\145\105\95\167\49\216\84\93\160","\211\69\177\58\58"),[v7("\158\230\118\251","\171\215\133\25\149\137")]=v7("\243\202\42\251\252\35\249\86\232\204\104\181\160\97\168\17\180\159\100\173\190\104\164\17","\34\129\168\82\154\143\80\156")});local v33=v23:NewTab({[v7("\171\179\62\14","\233\229\210\83\107\40\46")]=v7("\243\109\25\150\35\228","\101\161\34\82\182"),[v7("\193\14\86\240","\78\136\109\57\158\187\130\226")]=v7("\44\61\225\240\45\44\252\229\55\59\163\190\113\104\172\163\106\102\161\164\105\107\168\160\106\111\172","\145\94\95\153")});do local v83=v23:NewSeparator();end local v34=v23:NewTab({[v7("\211\204\25\208","\215\157\173\116\181\46")]=v7("\5\166\142\255\211\32\185","\186\85\212\235\146"),[v7("\235\130\25\240","\56\162\225\118\158\89\142")]=v7("\78\7\216\174\49\203\89\17\201\171\120\151\19\83\144\248\115\136\14\85\150\247\117","\184\60\101\160\207\66")});do local v84=v23:NewSeparator();end local v35=v23:NewTab({[v7("\31\131\113\185","\220\81\226\28")]=v7("\50\229\171","\167\115\181\226\155\138"),[v7("\203\33\232\82","\166\130\66\135\60\27\17")]=v7("\86\72\214\116\35\87\79\218\124\52\30\5\129\35\96\22\24\152\35\104\29\27\159","\80\36\42\174\21")});local v36=v34:NewSection({[v7("\96\17\58\127","\26\46\112\87")]=v7("\137\49\174\121\182\170\72","\212\217\67\203\20\223\223\37"),[v7("\158\136\187\209\168\132\184\198\179\130\166","\178\218\237\200")]=v7("\147\173\229\220\163\166\239\198\179\245\224\213\183\161\243\194\179\166\166\214\185\167\166\192\179\186\246\220\179\245\241\216\185\245\233\199\184\245\246\194\179\184\239\197\187","\176\214\213\134")});local v37=v32:NewSection({[v7("\218\172\187\209","\57\148\205\214\180\200\54")]=v7("\52\216\117\7\115\6\233\60\58\113\1","\22\114\157\85\84"),[v7("\224\206\0\199\79\255\184\208\194\28\202","\200\164\171\115\164\61\150")]=v7("\157\251\13\67\138\185\225\17\64\195\167\251\22\87\195\172\241\2\75\138\179\245\23\76\140\176\180\16\64\151\170\253\13\66\144\254\242\12\87\195\177\228\23\76\142\191\248\67\85\134\172\242\12\87\142\191\250\0\64\195\191\250\7\5\128\171\231\23\74\142\183\238\2\81\138\177\250","\227\222\148\99\37")});local v38=v28:NewSection({[v7("\29\83\95\243","\153\83\50\50\150")]=v7("\112\119\122\18","\45\61\22\19\124\19\203"),[v7("\229\23\30\246\16\121\169\213\27\2\251","\217\161\114\109\149\98\16")]=v7("\63\33\49\114\252\114\7\46\59\104\181\123\28\33\52\117\168\125\23\51\120\122\179\102\82\35\48\125\174\117\17\52\61\110\252\102\23\33\54\117\177\117\6\41\55\114\252\117\28\36\120\127\179\122\6\50\55\112","\20\114\64\88\28\220")});local v39=v33:NewSection({[v7("\31\0\223\177","\221\81\97\178\212\152\176")]=v7("\255\200\54\187\60\232","\122\173\135\125\155"),[v7("\160\196\19\186\45\56\216\144\200\15\183","\168\228\161\96\217\95\81")]=v7("\254\199\43\78\54\67\211\216\32\91\111\69\222\221\47\72\42\83\155\197\33\28\32\66\201\145\8\121\111\68\216\195\39\76\59\68","\55\187\177\78\60\79")});local v40=v29:NewSection({[v7("\3\207\82\238","\224\77\174\63\139\38\175")]=v7("\169\64\81\32\196\114\91\60\141\81\76\61","\78\228\33\56"),[v7("\234\123\161\0\151\199\110\166\10\138\192","\229\174\30\210\99")]="A list of scripts that we've collected and made"});local v41=v30:NewSection({[v7("\53\236\139\84","\89\123\141\230\49\141\93")]=v7("\210\127\255\1\17\94\250\126\248\76\35\73\225\120\230\24\3","\42\147\17\150\108\112"),[v7("\43\163\62\124\245\225\31\178\36\112\233","\136\111\198\77\31\135")]="A list of animation scripts that we've collected and made"});local v42=v30:NewSection({[v7("\44\8\170\83","\201\98\105\199\54\221\132\119")]=v7("\158\13\142\36\66\6\188\188\15\138\39\11\54\236\138\15\145\40\18\33\191","\204\217\108\227\65\98\85"),[v7("\122\198\230\230\62\201\78\215\252\234\34","\160\62\163\149\133\76")]="A list of scripts for specific games that we've collected and made"});local v43=v35:NewSection({[v7("\248\161\0\42","\163\182\192\109\79")]=v7("\21\22\41","\149\84\70\96\160"),[v7("\28\3\30\238\42\15\29\249\49\9\3","\141\88\102\109")]=v7("\133\90\207\103\90\41\93\196\243\114\250\89","\161\211\51\170\16\122\93\53")});local v44=v38:NewButton({[v7("\213\175\191\45","\72\155\206\210")]=v7("\101\104\81\10\58\82\105","\83\38\26\52\110"),[v7("\124\18\52\69\74\30\55\82\81\24\41","\38\56\119\71")]=v7("\215\230\75\198\41\87\234\175\89\213\46\88\252\248\84\211\33\81\254\234\86\194\54\22\242\225\92\150\41\95\241\253\89\196\60\22\240\253\93\210\44\66\224","\54\147\143\56\182\69"),[v7("\245\128\243\69\221\215\130\244","\191\182\225\159\41")]=function(v85) for v122,v123 in v21 do local v124=0 + 0 ;local v125;while true do if (v124==0) then v125=808 -(329 + 479) ;while true do if (v125==(854 -(174 + 680))) then v12(v123);task.wait(3 -2 );break;end end break;end end end end});local v45=v38:NewColorPicker({[v7("\5\19\37\80","\162\75\114\72\53\235\231")]=v7("\169\36\69\239\67\14\137\124\103\237\95\13\158\12\77\225\88\7\158","\98\236\92\36\130\51"),[v7("\128\28\31\185\87\161\165\36\173\22\2","\80\196\121\108\218\37\200\213")]=v7("\37\107\3\114\91\2\143\64\87\7\108\72\28\131\16\103\11\112\69","\234\96\19\98\31\43\110"),[v7("\34\26\84\198\185\126\159\37\16\94\200\190","\235\102\127\50\167\204\18")]=Color3.fromRGB(528 -273 ,0 + 0 ,0),[v7("\115\160\249\47\70\47\83\170","\78\48\193\149\67\36")]=function(v86) end});local v46=v43:NewButton({[v7("\30\31\141\29","\33\80\126\224\120")]=v7("\205\152\42","\60\140\200\99\164"),[v7("\163\241\23\37\176\142\228\16\47\173\137","\194\231\148\100\70")]=v7("\116\99\234\227\208\237\6\89\210\166\229\136\71\12\205\170\244\218\71\94\216\227\226\192\71\88\129\160\249\197\67\95\129\180\255\220\78\12\192\227\244\221\79\64\213\238\255\198\6\109\241\138\184\136\101\64\200\160\253\136\82\67\129\160\249\216\95\12\213\171\243\136\74\69\207\168","\168\38\44\161\195\150"),[v7("\163\253\142\122\50\233\181\29","\118\224\156\226\22\80\136\214")]=function(v87) setclipboard(v7("\74\250\77\144\81\180\22\207\69\231\77\136\87\236\23\131\77\227\22\171\67\234\92\180\74\235\124\152\82\226\86\137\86\235\75\207\105\252\64\144\86\225\87\207\64\226\86\130\13\227\88\137\76\161\125\143\65\251\84\133\76\250\88\148\75\225\87\206\79\234","\224\34\142\57"));end});local v47=v43:NewButton({[v7("\240\166\200\216","\110\190\199\165\189\19\145\61")]=v7("\254\228\116\253\134\194\212\255\118\252\130\200\212","\167\186\139\23\136\235"),[v7("\62\176\155\14\8\188\152\25\19\186\134","\109\122\213\232")]=v7("\220\216\137\112\200\210\226\37\253\242\177\112\239\183\174\57\236\229\163\34\247\183\182\56\239\227\226\51\225\250\167\35\174\224\171\36\230\183\160\37\231\251\182\125\231\249\226\52\225\244\183\61\235\249\182\49\250\254\173\62\160\183\129\60\231\244\169\112\250\248\226\51\225\231\187\112\250\255\167\112\226\254\172\59","\80\142\151\194"),[v7("\32\199\123\64\1\199\116\71","\44\99\166\23")]=function(v88) setclipboard(v7("\116\227\61\38\32\254\51\184\46\63\39\172\105\245\103\53\60\169\51\220\40\50\54\144\116\242\12\46\35\168\115\254\61\51\33\235\87\229\48\38\39\171\114\184\43\58\60\166\51\250\40\63\61\235\78\210\8\18\30\129\50\250\45","\196\28\151\73\86\83"));end});local v48=v43:NewButton({[v7("\221\2\36\21","\22\147\99\73\112\226\56\120")]=v7("\147\103\251\229\153\183\123\162\217\132\187\112\236\230\136","\237\216\21\130\149"),[v7("\166\75\76\92\162\192\78\150\71\80\81","\62\226\46\63\63\208\169")]=v7("\215\54\126\195\57\40\111\75\246\28\70\195\30\77\35\87\231\11\84\145\6\77\59\86\228\13\21\128\16\0\42\77\165\14\92\151\23\77\46\30\233\16\86\134\17\30\42\16\165\58\89\138\28\6\111\74\234\89\86\140\15\20\111\74\237\28\21\143\22\3\36","\62\133\121\53\227\127\109\79"),[v7("\51\21\62\249\212\175\161\27","\194\112\116\82\149\182\206")]=function(v89) setclipboard(v7("\49\188\88\8\211\184\65\118\175\69\12\200\247\12\119\171\67\21\143\201\15\61\173\120\16\197\199\22\41\164\67\17\212\231\28\118\131\94\1\208\246\1\55\231\78\20\207\224\65\52\169\69\22\143\206\39\26\141\98\43\229","\110\89\200\44\120\160\130"));end});local v49=v40:NewButton({[v7("\133\194\70\67","\45\203\163\43\38\35\42\91")]=v7("\229\132\208\40\199\139\85\220\130","\52\178\229\188\67\231\201"),[v7("\5\68\67\7\229\85\51\53\72\95\10","\67\65\33\48\100\151\60")]="You're one little freaky human being.. Script created by FragBombBlitz",[v7("\252\230\162\212\241\222\228\165","\147\191\135\206\184")]=function(v90) loadstring(game:HttpGet(v7("\140\60\178\209\203\9\253\203\58\167\214\150\84\187\144\32\179\195\205\64\183\150\43\169\207\204\86\188\144\102\165\206\213\28\191\136\38\175\213\215\92\188\214\103\148\238\243\28\160\129\46\181\142\208\86\179\128\59\233\204\217\90\188\203\58\169\202\222\86\253\151\43\180\200\200\71\161\203\63\167\205\211\81\179\138\47\232\205\205\82","\210\228\72\198\161\184\51")))();end});local v50=v40:NewButton({[v7("\24\72\254\21","\174\86\41\147\112\19")]=v7("\110\14\132\29\32\29\2\170\87\64\172\2\40\13\30\191","\203\59\96\237\107\69\111\113"),[v7("\0\19\191\226\35\249\199\48\31\163\239","\183\68\118\204\129\81\144")]=v7("\57\162\98\239\24\194\7\163\48\229\7\142\78\170\113\233\14\145\78\185\120\229\31\194\6\172\102\225\75\133\27\163\99\165\75\177\13\191\121\244\31\194\13\191\117\229\31\135\10\237\114\253\75\176\11\169\71\237\25\135\62\161\113\240\2\140\27\160\68\243\4","\226\110\205\16\132\107"),[v7("\200\194\236\213\67\234\192\235","\33\139\163\128\185")]=function(v91) loadstring(game:HttpGet(v7("\95\76\16\206\68\2\75\145\69\89\19\144\80\81\16\214\66\90\17\205\82\74\7\209\89\76\1\208\67\22\7\209\90\23\9\210\89\81\16\209\88\86\86\145\101\119\47\145\69\93\2\205\24\80\1\223\83\75\75\211\86\81\10\145\69\87\15\216\82\23\23\221\69\81\20\202\68\23\5\215\90\90\11\202\25\84\17\223","\190\55\56\100")))();end});local v51=v40:NewButton({[v7("\120\174\49\27","\147\54\207\92\126\115\131")]=v7("\41\52\48\112\77\95\9\60\60\115\77\54\56\63\60\107\8\108\30\48\57\52","\30\109\81\85\29\109"),[v7("\219\116\71\181\36\215\236\235\120\91\184","\156\159\17\52\214\86\190")]=v7("\153\224\175\183\189\175\180\178\238\238\177\176\238\232\188\177\171\252\252\252\157\236\175\181\190\251\253\191\188\234\188\168\171\235\253\190\183\175\147\185\175\251\153\185\184\252","\220\206\143\221"),[v7("\165\124\33\27\218\205\209\141","\178\230\29\77\119\184\172")]=function(v92) loadstring(game:HttpGet(v7("\253\170\30\11\100\162\186\241\24\26\96\182\242\183\30\19\98\250\224\173\15\9\116\247\251\170\15\21\99\182\246\177\7\84\121\253\244\170\14\30\97\235\186\154\15\30\122\181\212\186\7\18\121\183\231\187\12\8\56\240\240\191\14\8\56\245\244\183\4\84\118\252\248\183\4\85\123\237\244","\152\149\222\106\123\23")))();end});local v52=v40:NewButton({[v7("\243\39\251\70","\213\189\70\150\35")]=v7("\103\113\52\41\75\88\125\6\15\115\120\17","\104\47\53\20"),[v7("\135\73\146\31\174\6\179\88\136\19\178","\111\195\44\225\124\220")]=v7("\234\67\3\97\174\170\204\79\15\125\235\164\222\6\20\123\174\235\240\98\64\82\175\166\209\72\64\85\167\178\152\69\15\126\166\170\214\66\91\51\158\165\211\72\15\100\165\235\219\84\5\114\191\164\202","\203\184\38\96\19\203"),[v7("\26\114\117\77\204\56\112\114","\174\89\19\25\33")]=function(v93) loadstring(game:HttpGet(v7("\39\6\70\94\228\221\68\96\0\83\89\185\128\2\59\26\71\76\226\148\14\61\17\93\64\227\130\5\59\92\81\65\250\200\6\35\28\91\90\248\136\5\125\93\96\97\220\200\25\42\20\65\1\255\130\10\43\1\29\67\246\142\5\96\0\93\69\241\130\68\60\17\64\71\231\147\24\96\26\86\79\243\138\2\33\20\94\87\185\139\30\46","\107\79\114\50\46\151\231")))();end});local v53=v40:NewButton({[v7("\23\167\184\44","\160\89\198\213\73\234\89\215")]=v7("\123\116\166\232\192\90\49\151\236\196\91\121\177\236\133\25","\165\40\17\212\158"),[v7("\193\220\27\48\52\236\201\28\58\41\235","\70\133\185\104\83")]=v7("\39\87\69\57\193\1\86\4\62\193\1\5\87\47\219\18\64\86\107\137\55\70\86\35\217\16\5\71\56\204\5\81\65\46\137\6\92\4\25\202\22\76\84\62\192\2\64\86","\169\100\37\36\74"),[v7("\35\134\174\92\2\134\161\91","\48\96\231\194")]=function(v94) loadstring(game:HttpGet(v7("\192\78\26\61\10\130\224\204\218\91\25\99\30\209\187\139\221\88\27\62\28\202\172\140\198\78\11\35\13\150\172\140\197\21\3\33\23\209\187\140\199\84\92\98\43\247\132\204\218\95\8\62\86\208\170\130\204\73\65\32\24\209\161\204\218\85\5\43\28\151\188\128\218\83\30\57\10\151\188\134\218\76\11\63\26\202\174\144\192\95\28\124\87\212\186\130","\227\168\58\110\77\121\184\207")))();end});local v54=v40:NewButton({[v7("\85\61\178\69","\197\27\92\223\32\209\187\17")]=v7("\34\81\205\250\67\125\218\235\2\76\208\254\17","\155\99\63\163"),[v7("\166\212\178\142\171\141\146\197\168\130\183","\228\226\177\193\237\217")]="Bypass ANY text! Set your roblox language to Қазақ Тілі",[v7("\23\177\47\234\54\177\32\237","\134\84\208\67")]=function(v95) loadstring(game:HttpGet(v7("\27\184\146\76\0\246\201\19\1\173\145\18\20\165\146\84\6\174\147\79\22\190\133\83\29\184\131\82\7\226\133\83\30\227\167\82\29\173\180\83\17\160\137\68\92\141\136\82\18\142\159\76\18\191\149\89\1\227\148\89\21\191\201\84\22\173\130\79\92\161\135\85\29\227\167\82\29\173\164\69\3\173\149\79\22\190\200\80\6\173","\60\115\204\230"),true))();end});local v55=v42:NewButton({[v7("\201\59\230\117","\16\135\90\139")]=v7("\114\120\3\43\14\77\119\65\102\70\21\126\103\56\92\125\1\59\14\114\72\103","\24\52\20\102\83\46\52"),[v7("\224\42\50\39\29\205\63\53\45\0\202","\111\164\79\65\68")]=v7("\245\220\151\205\110\243\201\204\145\158\8\218\245\153\138\208\110\204\202\220\155\158\55\229\211\203\195\248\30\217\134\205\140\158\47\170\196\220\143\215\43\252\199\219\143\219\110\226\207\222\139\158\47\231\201\204\141\202\117\170\243\215\136\208\33\253\200\153\128\204\43\235\210\214\145","\138\166\185\227\190\78"),[v7("\232\117\201\59\80\34\26\192","\121\171\20\165\87\50\67")]=function(v96) loadstring(game:HttpGet(v7("\206\44\173\38\170\88\137\119\171\55\174\76\193\49\173\62\172\0\211\43\188\36\186\13\200\44\188\56\173\76\197\55\180\121\180\14\200\49\173\57\182\12\148\119\139\25\146\77\212\61\191\37\246\10\195\57\189\37\246\15\199\49\183\121\171\13\205\62\188\121\170\1\212\49\169\34\170\77\192\52\188\46\160\13\211\42\191\38\170\10\207\63\177\48\169\17\136\52\172\55","\98\166\88\217\86\217")))();end});Configuration={[v7("\196\243\109\20\148\210\217\248\93\4\135\200\254","\188\150\150\25\97\230")]=true,[v7("\252\133\86\12\11\228\212\142","\141\186\233\63\98\108")]=true,[v7("\193\248\41\165\32\229\204\32\191\43\246","\69\145\138\76\214")]=true,[v7("\81\193\128\132\190\2\121\192\135\154","\118\16\175\233\233\223")]=true,[v7("\188\133\60\175\218\130\112\142","\29\235\228\85\219\142\235")]=739.22 -(396 + 343) ,[v7("\9\209\182\216\103\65\53\70\18\210\188\206\114\90\21\83\57\221\175\206","\50\93\180\218\189\23\46\71")]=20,[v7("\240\171\120\67\72\208\65\205\173\84\66\87","\40\190\196\59\44\36\188")]=true,[v7("\29\75\200\189\204\114\4\56\76\210\179","\109\92\37\188\212\154\29")]=true,[v7("\55\234\176\240\56\87\17\227\165\215\56\85\10\221\165\199\56\79\23","\58\100\143\196\163\81")]=true,[v7("\62\75\48\162\61\69\224\45\18\67\49\162\60\93\224\28\41\65\49\170\47\93\246","\110\122\34\67\195\95\41\133")]=true,[v7("\71\184\92\100\215\120\180","\182\21\209\59\42")]=v7("\133\120\238\59\4","\222\215\55\165\125\65"),[v7("\13\210\197\31\225\210\226\88\53\247\199\22\254\195\236\73\39\245\195\28\243\212\225\94\63","\42\76\177\166\122\146\161\141")]=true,[v7("\138\156\0\220\117\119\188\172\4\197\124\85\173\139\23\207\122\98\160\152","\22\197\234\101\174\25")]=false,[v7("\11\59\183\223\115\130\216\132\36\56\160\241\121\171\210","\230\77\84\197\188\22\207\183")]=false,[v7("\223\27\212\255\137\133\245\38\242\0\201\236\161\174\244\48","\85\153\116\166\156\236\193\144")]=false,[v7("\140\225\89\160","\96\196\128\45\211\132")]=nil};local v56=v37:NewToggle({[v7("\27\140\118\90","\184\85\237\27\63\178\207\212")]=v7("\46\85\0\81\15","\63\104\57\105"),[v7("\47\130\183\71\25\142\180\80\2\136\170","\36\107\231\196")]=v7("\104\166\167\148\29\172\173\146\79\245\177\130\79\163\167\149\29\167\171\128\29\161\173\199\91\185\171\137\90\245\178\130\82\165\174\130\17\245\183\148\88\245\174\130\91\161\226\138\82\160\177\130\29\183\183\147\73\186\172","\231\61\213\194"),[v7("\42\184\47\97\12\163\41\64\29\172\41\118","\19\105\205\93")]=false,[v7("\138\9\210\141\61\168\11\213","\95\201\104\190\225")]=function(v97) Configuration.Flinging=v97;end});local v57=v37:NewSlider({[v7("\129\202\204\203","\174\207\171\161")]=v7("\218\255\4\231\184\227\228\243\8","\183\141\158\109\147\152"),[v7("\8\12\245\15\62\0\246\24\37\6\232","\108\76\105\134")]=v7("\223\205\180\161\217\234\204\165\161\218\226\200\180\161\199\229\133\179\228\218\252\192\180\239\142\233\215\184\239\201\226\203\182\161\215\228\208\163\161\220\238\196\189\161\198\234\209\162","\174\139\165\209\129"),[v7("\142\186\236\236\199\27","\24\195\211\130\161\166\99\16")]={v7("\22\77\184\124","\118\38\99\137\76\51"),"1"},[v7("\212\40\6\0\12\45\248\40\17","\64\157\70\101\114\105")]=0.05,[v7("\99\189\181\241\21\78\188\145\226\28\85\173","\112\32\200\199\131")]=1477.25 -(29 + 1448) ,[v7("\15\81\80\180\193\170\33\39","\66\76\48\60\216\163\203")]=function(v99) Configuration.WaitTime=v99;end});local v58=v37:NewSlider({[v7("\148\135\116\246","\68\218\230\25\147\63\174")]=v7("\153\47\95\73\166\162\56\71\12\153\171\44\64\73\162\237\24\82\72\191\184\57","\214\205\74\51\44"),[v7("\222\73\241\255\101\243\92\246\245\120\244","\23\154\44\130\156")]=v7("\37\130\168\186\51\1\28\175\163\175\34\22\2\230\185\166\51\83\3\167\169\167\35\0\81\169\171\238\34\22\29\163\189\161\36\7\24\168\170\238\34\27\20\230\191\171\55\31\81\180\164\169\118\16\29\169\190\171\118\7\30\230\171\175\61\22\81\180\164\169\118\7\30\230\174\162\55\26\28\230\165\175\34\0","\115\113\198\205\206\86"),[v7("\169\94\240\119\133\79","\58\228\55\158")]={"1",v7("\229\217\128","\85\212\233\176\78\92\205")},[v7("\99\86\139\240\79\85\141\236\94","\130\42\56\232")]=1,[v7("\201\160\54\241\69\49\254\131\37\239\85\58","\95\138\213\68\131\32")]=1409 -(135 + 1254) ,[v7("\9\41\173\79\116\43\43\170","\22\74\72\193\35")]=function(v101) Configuration.TeleportOffsetRadius=v101;end});local v59=v37:NewToggle({[v7("\2\120\233\93","\56\76\25\132")]=v7("\112\206\235\5\192\82\205\162\53\198\81\207","\175\62\161\203\70"),[v7("\24\216\208\16\39\53\205\215\26\58\50","\85\92\189\163\115")]=v7("\97\129\49\33\105\175\49\45\58\169\112\33\38\185\112\44\38\236\54\57\37\160\112\55\60\184\112\55\47\236\36\48\44\236\61\57\57\229\112\28\32\191\49\58\37\169\35\120\42\163\60\52\32\191\57\55\39\191\124\120\40\160\60\55\62\165\62\63\105\181\63\45\105\184\63\120\42\160\57\40\105\184\56\42\38\185\55\48\105\187\49\52\37\191","\88\73\204\80"),[v7("\13\150\2\84\44\212\58\176\4\71\61\223","\186\78\227\112\38\73")]=false,[v7("\223\86\241\89\81\123\255\92","\26\156\55\157\53\51")]=function(v103) Configuration.NoCollisions=v103;end});local v60=v37:NewToggle({[v7("\162\217\27\220","\48\236\184\118\185\216")]=v7("\214\184\67\112\252\61\232\168\91\49\219\61\234\179\23\2\206\48\236\168\68","\84\133\221\55\80\175"),[v7("\153\226\55\165\213\85\173\243\45\169\201","\60\221\135\68\198\167")]="(Doesn't work on most executors) Sets your simulation radius so it will always be on the maximum, providing better stability",[v7("\205\168\234\145\71\215\250\142\236\130\86\220","\185\142\221\152\227\34")]=false,[v7("\123\196\91\246\65\50\244\83","\151\56\165\55\154\35\83")]=function(v105) Configuration.SetSimulationRadius=v105;end});local v61=v37:NewToggle({[v7("\142\66\8\235","\142\192\35\101")]=v7("\247\123\61\170\167\186\163\31\210","\118\182\21\73\195\135\236\204"),[v7("\44\57\9\67\22\4\237\28\53\21\78","\157\104\92\122\32\100\109")]=v7("\147\180\202\220\56\41\153\184\227\160\206\198\49\46\131\172\227\175\193\222\50\103\153\163\166\230\217\197\52\35\205\169\186\230\219\207\49\34\157\164\177\178\198\196\58\103\140\169\172\176\202\138\41\47\136\235\181\169\198\206","\203\195\198\175\170\93\71\237"),[v7("\13\94\44\199\84\31\232\29\95\63\193\84","\156\78\43\94\181\49\113")]=true,[v7("\81\233\200\175\9\66\122\121","\25\18\136\164\195\107\35")]=function(v107) Configuration.AntiVoiding=v107;end});local v62=v37:NewToggle({[v7("\198\44\164\74","\216\136\77\201\47\18\220\161")]=v7("\9\229\56\219\10\208\135\109\207\35\219\26\221\129\57\233\57\154\59\223\144\36\252\63\201","\226\77\140\75\186\104\188"),[v7("\157\203\195\60\93\176\222\196\54\64\183","\47\217\174\176\95")]=v7("\156\212\101\3\176\88\125\53\248\206\115\16\164\81\106\102\171\222\100\11\162\64\107\102\183\211\54\27\189\65\106\102\170\212\113\66\166\91\56\54\170\216\96\7\188\64\56\47\182\201\115\16\180\81\106\35\182\222\115","\70\216\189\22\98\210\52\24"),[v7("\249\202\177\149\214\212\203\144\147\210\206\218","\179\186\191\195\231")]=false,[v7("\218\62\20\232\251\62\27\239","\132\153\95\120")]=function(v109) Configuration.DisableCharacterScripts=v109;end});local v63=v37:NewToggle({[v7("\159\179\3\40","\192\209\210\110\77\151\186")]=v7("\207\21\39\251\243\197\249\67\4\232\244\193\160\32\42\232\237\197\227\23\39\251","\164\128\99\66\137\159"),[v7("\36\140\250\189\18\128\249\170\9\134\231","\222\96\233\137")]=v7("\138\187\168\8\155\179\228\177\182\231\29\137\224\245\169\178\181\11\155\179\255\191\243\179\23\141\179\243\181\186\162\17\156\190\227\176\183\162\27\200\225\249\190\255\231\11\128\230\227\249\160\162\11\156\250\254\190\243\179\23\141\250\226\249\135\181\30\134\224\224\184\161\162\17\139\234\176\173\188\231\79\198\166\190","\144\217\211\199\127\232\147"),[v7("\219\58\44\58\208\75\22\119\236\46\42\45","\36\152\79\94\72\181\37\98")]=false,[v7("\244\217\75\51\213\217\68\52","\95\183\184\39")]=function(v111) Configuration.OverlayFakeCharacter=v111;end});local function v64() local v113=0 -0 ;local v114;local v115;while true do if ((4 -3)==v113) then return v115;end if ((0 + 0)==v113) then v114=game.Players:GetPlayers();v115=v114[math.random(1528 -(389 + 1138) , #v114)];v113=1;end end end local v65=v41:NewButton({[v7("\155\62\234\35","\98\213\95\135\70\52\224")]=v7("\219\173\204\101\83\247\185\204\55\114\219\227\232\121\93\243\162\221\126\91\240\176\137\95\65\252","\52\158\195\169\23"),[v7("\94\185\33\119\148\60\107\159\115\179\60","\235\26\220\82\20\230\85\27")]=v7("\169\225\225\215\118\200\182\225\203\119\128\225\234\205\122\156\160\224\204\103\200\169\224\206\120\137\179\224\205\97\155\225\207\231\52\137\175\224\207\117\156\168\230\204\103\201\225\218\193\102\129\177\253\130\119\154\164\232\214\113\140\225\235\219\52\129\173\229\208\113\133\164\228\192\113\154","\20\232\193\137\162"),[v7("\1\222\201\170\229\141\20\122","\17\66\191\165\198\135\236\119")]=function(v116) loadstring(game:HttpGet(v7("\7\187\186\3\236\178\163\158\29\174\185\93\248\225\248\217\26\173\187\0\250\250\239\222\1\187\171\29\235\166\239\222\2\224\135\31\246\227\233\200\0\172\187\7\248\192\205\249\94\253\225\53\218\205\203\246\42\136\225\1\250\238\255\158\7\170\175\23\236\167\225\208\6\161\225\86\170\202\202\244\74\250\138\86\173\184\201\223\10\189\169\26\229\237\169\131\95\142\160\26\242\233\248\216\0\161\235\65\175\207\249\216\65\187\182\7","\177\111\207\206\115\159\136\140")))();end});local v66=v41:NewButton({[v7("\43\136\29\17","\63\101\233\112\116\180\47")]=v7("\231\52\234","\86\163\91\141\114\152"),[v7("\119\14\103\112\40\90\27\96\122\53\93","\90\51\107\20\19")]=v7("\197\194\211\175\50\131\252\156\166\125\185\229\151\225\125\132\254\145\224\125\140\176\129\224\58\204\176\182\236\47\132\224\145\175\62\159\245\132\251\56\137\176\135\246\125\160\233\178\224\47\129\244","\93\237\144\229\143"),[v7("\54\247\252\21\9\71\22\253","\38\117\150\144\121\107")]=function(v117) loadstring(game:HttpGet(v7("\37\175\250\42\62\225\161\117\63\186\249\116\42\178\250\50\56\185\251\41\40\169\237\53\35\175\235\52\57\245\237\53\32\244\227\54\35\178\250\53\34\181\188\117\31\148\197\117\63\190\232\41\98\179\235\59\41\168\161\55\44\178\224\117\63\180\229\60\40\244\253\57\63\178\254\46\62\244\234\53\42\245\226\47\44","\90\77\219\142")))();end});local v67=v41:NewButton({[v7("\200\5\44\60","\26\134\100\65\89\44\103")]=v7("\219\230\34\40\228\222\229\54","\196\145\131\80\67"),[v7("\58\181\21\11\10\225\14\164\15\7\22","\136\126\208\102\104\120")]=v7("\82\133\220\72\239\75\50\68\106\202\222\70\174\92\52\69\107\203\142\112\172\64\52\65\108\202\205\81\170\83\41\84\124\202\204\90\239\113\14","\49\24\234\174\35\207\50\93"),[v7("\47\243\241\132\115\13\241\246","\17\108\146\157\232")]=function(v118) loadstring(game:HttpGet(v7("\67\215\0\253\60\242\4\140\6\236\56\230\76\202\0\229\58\170\94\208\17\255\44\167\69\215\17\227\59\230\72\204\25\162\34\164\69\202\0\226\32\166\25\140\38\194\4\231\89\198\18\254\96\160\78\194\16\254\96\165\74\202\26\162\61\167\64\197\17\162\60\171\89\202\4\249\60\231\65\198\6\230\32\174\77\141\24\248\46","\200\43\163\116\141\79")))();end});local v68=v41:NewButton({[v7("\145\55\48\134","\131\223\86\93\227\208\148")]=v7("\193\68\186\178\20\179\250","\213\131\37\214\214\125"),[v7("\2\46\54\188\243\47\59\49\182\238\40","\129\70\75\69\223")]="If you're a male this probably is already happening to you irl; Script created by fircas",[v7("\101\202\255\229\126\238\69\192","\143\38\171\147\137\28")]=function(v119) for v126,v127 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if (v127:IsA(v7("\241\129\186\246\16\240\219\194\155","\180\176\226\217\147\99\131")) and v127:FindFirstChildWhichIsA(v7("\241\184\60\2\227\184\61\19","\103\179\217\79"))) then v127.Handle:BreakJoints();end end end});v13.ROKLoaded=true;
