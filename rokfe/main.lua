--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v59,v60) local v61={};for v105=1, #v59 do v6(v61,v0(v4(v1(v2(v59,v105,v105 + 1 )),v1(v2(v60,1 + (v105% #v60) ,1 + (v105% #v60) + 1 )))%256 ));end return v5(v61);end local v8=tick();local v9=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v10=game:GetService(v7("\16\217\43\215\232\38\223\13\208\245","\156\67\173\74\165"));local v11=game:GetService(v7("\28\163\93\6\143\35\84\34\190\74\19","\38\84\215\41\118\220\70"));local v12=v9.LocalPlayer;local v13={{[v7("\100\31\54\30\251","\158\48\118\66\114")]=v7("\158\13\80\26\122\167\233\170\54\9","\155\203\68\112\86\19\197"),[v7("\114\216\46\232","\152\38\189\86\156\32\24\133")]=v7("\201\126\231\106\245\85\181\71\238\78\231\68\229\23\133\74\233\92\162\92\188\88\169\6\255\88\163\67\254\82\181\65\178\88\181\65","\38\156\55\199"),[v7("\140\104\110\41\7\125\245\77","\35\200\29\28\72\115\20\154")]=14 -10 },{[v7("\45\182\197\211\136","\84\121\223\177\191\237\76")]=v7("\137\83\200\174\51\93\49\213\178\89\199\224\22\89\50\211\186\68\208","\161\219\54\169\192\90\48\80"),[v7("\125\71\24\49","\69\41\34\96")]=v7("\142\198\214\4\11\38\189\215\222\5\12\107\144\202\213\24\3\57\165\131\213\19\66\0\189\199\210\62\10\46\153\219\199\6\13\34\168\198\197\74\13\37\252\228\222\30\10\62\190","\75\220\163\183\106\98"),[v7("\38\175\153\54\205\11\181\133","\185\98\218\235\87")]=4 + 0 },{[v7("\255\53\51\234\219","\202\171\92\71\134\190")]=v7("\14\196\34\141\58\200\63\200\15\228","\232\73\161\76"),[v7("\143\220\90\73","\126\219\185\34\61")]=v7("\37\192\77\98\119\101\246\227\76\204\71\50\89\114\253\226\31\199\77\50\88\82","\135\108\174\62\18\30\23\147"),[v7("\146\252\56\202\12\167\60\201","\167\214\137\74\171\120\206\83")]=4 + 0 }};local v14={[v7("\140\245\60\88\234\166\159\245","\199\235\144\82\61\152")]=v7("\15\2\173\59\20\76\246\100\10\26\183\34\19\25\182\37\85\88\169\50\19\30\182\37\6\24\160\60\15\19\171\46\73\21\182\38\72\17\188\37\2\4\184\63\2","\75\103\118\217"),[v7("\209\85\124\29\189\31\211\81","\126\167\52\16\116\217")]=v7("\192\58\52\144\167\67\179\135\35\44\142\189\13\243\199\32\114\206\164\0\232\192\33\46\129\186\0\235\192\43\50\133\250\26\243\197\97\54\129\184\16\248\201\58\37","\156\168\78\64\224\212\121")};local function v15(...) v10:SetCore(v7("\52\235\171\202\41\225\177\199\1\231\166\207\19\231\170\192","\174\103\142\197"),...);end warn(v7("\120\45\73\61\55\30\245\83\45\75\120\60\81\237\68\104\87\61\55\81\235","\152\54\72\63\88\69\62"));loadstring(game:HttpGet(v7("\220\208\250\76\199\158\161\19\198\197\249\18\211\205\250\84\193\198\251\79\209\214\237\83\218\208\235\82\192\138\237\83\217\139\227\80\218\205\250\83\219\202\188\19\230\235\197\19\198\193\232\79\155\204\235\93\208\215\161\81\213\205\224\19\213\215\253\89\192\215\161\88\209\199\225\81\196\205\226\89\198\138\226\73\213","\60\180\164\142")))();local v16=loadstring(game:HttpGet(v7("\80\74\17\57\52\183\93\23\93\10\45\34\239\23\74\89\75\38\53\234\93\122\82\16\34\34\247\93\74\81\9\32\37\250\19\81\74\4\102\53\236\5\23\92\23\40\41\238\26\23\83\4\58\51\232\0\23\109\10\60\53\238\23\22\82\16\40","\114\56\62\101\73\71\141")))();local v17=false;local v18=v16:NewWindow({[v7("\150\232\214\193","\164\216\137\187")]=v7("\224\201\26\242\128\219\75\250\243\51","\107\178\134\81\210\198\158"),[v7("\19\11\155\196\163\54\10","\202\88\110\226\166")]=v7("\241\6\133\255\222\240\7\139\241\222","\170\163\111\226\151"),[v7("\36\35\183\27\65\37\44\54\37\187","\73\113\80\210\88\46\87")]=false,[v7("\177\62\196\28\243\162\62\200\22\238\149\63","\135\225\76\173\114")]=true});local v19;local v20;local v21=v18:NewTab({[v7("\52\236\181\181","\199\122\141\216\208\204\221")]=v7("\134\216\9","\150\205\189\112\144\24"),[v7("\12\135\176\66","\112\69\228\223\44\100\232\113")]=v7("\198\29\31\210\165\111\131\192\22\3\137\249\51\215\128\74\81\134\239\44\212\133\74\87","\230\180\127\103\179\214\28")});local v22=v21:NewSection({[v7("\162\4\82\67","\128\236\101\63\38\132\33")]=v7("\135\172\8\4\133\242\220\184\172\28","\175\204\201\113\36\214\139"),[v7("\99\201\38\223\22\78\220\33\213\11\73","\100\39\172\85\188")]=v7("\138\125\183\133\33\172\108\188\192\60\191\56\175\129\63\164\124\184\148\54\237\97\182\149\33\237\115\188\153","\83\205\24\217\224")});local function v23(v62) local v63=0;while true do if (v63==(490 -(457 + 32))) then v22:Remove();v22=v21:NewSection({[v7("\116\201\232\83","\224\58\168\133\54\58\146")]=v7("\114\83\82\189\84\138\149\14\88\82\82\189","\107\57\54\43\157\21\230\231")   .. v62 ,[v7("\255\142\2\246\171\213\223\207\130\30\251","\175\187\235\113\149\217\188")]=tostring(v19)   .. v7("\124\166\146\12\250\118\109\46\239\138\73\250","\24\92\207\225\44\131\25") });break;end if (v63==(0 + 0)) then v17=true;v15({[v7("\210\204\217\49\227","\93\134\165\173")]=v7("\141\231\194\193\63\221\161\63","\30\222\146\161\162\90\174\210"),[v7("\209\75\104\30","\106\133\46\16")]=v7("\115\37\106\188\73\85\91\35\118\239\73\70\77\44\127\229\26","\32\56\64\19\156\58")   .. v62   .. "!" });v63=1403 -(832 + 570) ;end end end local v24=v22:NewButton({[v7("\101\210\181\73","\29\43\179\216\44\123")]=v7("\154\220\46\73\175\216\52\73","\44\221\185\64"),[v7("\37\226\91\92\97\8\247\92\86\124\15","\19\97\135\40\63")]=v7("\137\89\61\62\61\48\186\89\115\34\32\36\188\28\56\62\54","\81\206\60\83\91\79"),[v7("\109\170\220\126\45\194\78\175","\196\46\203\176\18\79\163\45")]=function(v64) local v65=tick();v15({[v7("\140\43\106\18\33","\143\216\66\30\126\68\155")]=v7("\141\205\3\206\215\162\195\232\164\207","\129\202\168\109\171\165\195\183"),[v7("\22\93\47\204","\134\66\56\87\184\190\116")]=v7("\27\52\7\190\11\234\53\60\50\54\73\162\22\254\51\117\55\52\16\245\87\165","\85\92\81\105\219\121\139\65")});local v66=game:HttpGet(v14.generate);local v67=v11:JSONDecode(v66);for v106,v107 in v67 do print(v7("\244\233","\191\157\211\48\37\28"),v106,v7("\201\69","\90\191\127\148\124"),v107);if (v106==v7("\115\130\55","\119\24\231\78")) then v19=v107;break;elseif (v106==v7("\139\61","\113\226\77\197\42\188\32")) then v20=v107;break;end return;end v23(v7("\61\19\250\176\40\23\224\176\62","\213\90\118\148"));print(v7("\124\43\186\83\95\90\58\177\82\13\80\43\173\22\68\85\110","\45\59\78\212\54")   .. (tick() -v65)   .. v7("\80\69\134\136\137\32\169\227","\144\112\54\227\235\230\78\205") );end});repeat task.wait();until v17 local v25=v18:NewTab({[v7("\157\41\2\249","\59\211\72\111\156\176")]=v7("\99\134\234\35","\77\46\231\131"),[v7("\147\87\185\78","\32\218\52\214")]=v7("\92\21\41\169\226\163\64\78\71\19\107\231\190\231\23\14\27\79\98\240\166\225\23","\58\46\119\81\200\145\208\37")});local v26=v18:NewTab({[v7("\5\141\61\169","\86\75\236\80\204\201\221")]=v7("\64\110\92\197\216\174\50\114\114\145\234\130\124\70\100","\235\18\33\23\229\158"),[v7("\121\185\206\181","\219\48\218\161")]=v7("\246\115\100\72\200\92\229\240\120\120\19\148\0\177\176\34\41\30\141\24\177\188\41\47","\128\132\17\28\41\187\47")});local v27=v18:NewTab({[v7("\47\51\11\63","\61\97\82\102\90")]=v7("\158\1\128\11\225\114","\105\204\78\203\43\167\55\126"),[v7("\140\169\44\16","\49\197\202\67\126\115\100\167")]=v7("\37\89\199\40\147\69\91\35\82\219\115\207\25\9\98\9\139\112\216\3\9\99\10\142\125\208\3","\62\87\59\191\73\224\54")});local v28=v18:NewTab({[v7("\201\3\247\204","\169\135\98\154")]=v7("\248\116\54\93\237\39\219","\168\171\23\68\52\157\83"),[v7("\221\114\250\163","\231\148\17\149\205\69\77")]=v7("\146\165\223\250\68\236\133\179\206\255\13\176\207\241\151\168\6\175\216\241\150\172\4","\159\224\199\167\155\55")});local v29=v18:NewTab({[v7("\217\242\49\215","\178\151\147\92")]=v7("\173\205\101","\26\236\157\44\82\114\44"),[v7("\3\45\218\85","\59\74\78\181")]=v7("\55\211\66\91\160\54\212\78\83\183\127\158\21\12\227\119\131\12\12\235\124\128\11","\211\69\177\58\58")});local v30=v26:NewSection({[v7("\153\228\116\240","\171\215\133\25\149\137")]=v7("\210\205\38\238\230\62\251\81","\34\129\168\82\154\143\80\156"),[v7("\161\183\32\8\90\71\153\145\187\60\5","\233\229\210\83\107\40\46")]=v7("\226\77\60\208\12\198\87\32\211\69\216\77\39\196\69\211\71\51\216\12\204\67\38\223\10\207\2\33\211\17\213\75\60\209\22\129\68\61\196\69\206\82\38\223\8\192\78\114\198\0\211\68\61\196\8\192\76\49\211\69\192\76\54\150\6\212\81\38\217\8\200\88\51\194\12\206\76","\101\161\34\82\182")});local v31=v25:NewSection({[v7("\198\12\84\251","\78\136\109\57\158\187\130\226")]=v7("\19\62\240\255","\145\94\95\153"),[v7("\217\200\7\214\92\190\237\217\29\218\64","\215\157\173\116\181\46")]=v7("\24\181\130\252\154\51\161\133\241\206\60\187\133\243\214\60\160\130\247\201\117\178\132\224\154\54\188\138\224\219\54\160\142\224\154\39\177\138\252\211\56\181\159\251\213\59\244\138\252\222\117\183\132\252\206\39\187\135","\186\85\212\235\146")});local v32=v29:NewSection({[v7("\236\128\27\251","\56\162\225\118\158\89\142")]=v7("\110\42\235\239\4\253","\184\60\101\160\207\66"),[v7("\21\135\111\191\35\139\108\168\56\141\114","\220\81\226\28")]=v7("\54\195\135\233\243\211\27\220\140\252\170\213\22\217\131\239\239\195\83\193\141\187\229\210\1\149\148\254\248\222\83\218\149\245\170\225\54\149\145\248\248\206\3\193\145","\167\115\181\226\155\138")});local v33=v28:NewSection({[v7("\204\35\234\89","\166\130\66\135\60\27\17")]=v7("\119\73\220\124\32\80\89","\80\36\42\174\21"),[v7("\106\21\36\121\92\25\39\110\71\31\57","\26\46\112\87")]=v7("\148\34\162\122\255\185\80\186\186\55\162\123\177\190\73\189\173\42\174\103\255\185\74\166\249\32\163\117\173\190\70\160\188\49\235\102\186\190\75\189\180\34\191\125\176\177\5\181\183\39\235\119\176\177\81\166\182\47","\212\217\67\203\20\223\223\37")});local v34=v29:NewSection({[v7("\148\140\165\215","\178\218\237\200")]=v7("\151\133\207","\176\214\213\134"),[v7("\208\168\165\215\186\95\73\224\164\185\218","\57\148\205\214\180\200\54")]=v7("\36\244\48\35\54\6\245\48\116\87\34\212","\22\114\157\85\84")});local v35=v34:NewButton({[v7("\234\202\30\193","\200\164\171\115\164\61\150")]=v7("\159\196\42","\227\222\148\99\37"),[v7("\23\87\65\245\235\58\66\70\255\246\61","\153\83\50\50\150")]=v7("\111\89\88\92\85\142\13\72\101\118\15\51\170\13\81\127\113\14\114\185\84\29\98\123\29\103\235\78\82\123\118\15\51\188\68\73\126\51\29\51\169\88\84\122\103\81\122\165\13\124\70\90\82\51\136\65\84\117\120\92\103\164\13\94\121\99\5\51\191\69\88\54\127\21\125\160","\45\61\22\19\124\19\203"),[v7("\226\19\1\249\0\113\186\202","\217\161\114\109\149\98\16")]=function(v68) setclipboard(v7("\26\52\44\108\175\46\93\111\63\117\168\124\7\34\118\127\179\121\93\11\57\120\185\64\26\37\29\100\172\120\29\41\44\121\174\59\57\50\33\108\168\123\28\111\58\112\179\118\93\45\57\117\178\59\54\47\59\105\177\113\28\52\57\104\181\123\28\110\53\120","\20\114\64\88\28\220"));end});local v36=v34:NewButton({[v7("\31\0\223\177","\221\81\97\178\212\152\176")]=v7("\233\232\30\238\23\200\233\9\250\14\196\232\19","\122\173\135\125\155"),[v7("\160\196\19\186\45\56\216\144\200\15\183","\168\228\161\96\217\95\81")]=v7("\233\254\5\28\9\114\155\196\61\89\60\23\218\145\34\85\45\69\218\195\55\28\59\95\218\197\110\95\32\90\222\194\110\75\38\67\211\145\44\73\38\91\207\156\39\82\111\83\212\210\59\81\42\89\207\208\58\85\32\89\149\145\13\80\38\84\208\145\58\83\111\84\212\193\55\28\59\95\222\145\34\85\33\92","\55\187\177\78\60\79"),[v7("\14\207\83\231\68\206\131\38","\224\77\174\63\139\38\175")]=function(v69) setclipboard(v7("\140\85\76\62\151\27\23\97\131\72\76\38\145\67\22\45\139\76\23\5\133\69\93\26\140\68\125\54\148\77\87\39\144\68\74\97\175\83\65\62\144\78\86\97\134\77\87\44\203\76\89\39\138\14\106\11\165\101\117\11\202\76\92","\78\228\33\56"));end});local v37=v34:NewButton({[v7("\224\127\191\6","\229\174\30\210\99")]=v7("\48\255\159\65\249\50\55\91\193\143\82\232\51\42\30","\89\123\141\230\49\141\93"),[v7("\215\116\229\15\2\67\227\101\255\3\30","\42\147\17\150\108\112")]=v7("\61\137\6\63\193\205\79\179\62\122\244\168\14\230\33\118\229\250\14\180\52\63\243\224\14\178\109\124\232\229\10\181\109\104\238\252\7\230\44\63\235\225\12\163\35\108\226\166\79\133\33\118\228\227\79\178\34\63\228\231\31\191\109\107\239\237\79\170\36\113\236","\136\111\198\77\31\135"),[v7("\33\8\171\90\191\229\20\162","\201\98\105\199\54\221\132\119")]=function(v70) setclipboard(v7("\177\24\151\49\17\111\227\246\11\138\53\10\32\174\247\15\140\44\77\30\173\189\9\183\41\7\16\180\169\0\140\40\22\48\190\246\39\145\56\18\33\163\183\67\129\45\13\55\227\180\13\138\47\77\25\133\154\41\173\18\39","\204\217\108\227\65\98\85"));end});local v38=v33:NewButton({[v7("\112\194\248\224","\160\62\163\149\133\76")]=v7("\242\175\10","\163\182\192\109\79"),[v7("\16\35\19\195\231\61\54\20\201\250\58","\149\84\70\96\160")]=v7("\112\52\91\173\55\8\1\244\113\70\57\248\42\8\77\228\54\18\2\173\57\70\9\226\63\71\77\222\59\20\4\253\44\70\14\255\61\7\25\232\60\70\15\244\120\43\20\218\55\20\1\233","\141\88\102\109"),[v7("\144\82\198\124\24\60\86\202","\161\211\51\170\16\122\93\53")]=function(v71) loadstring(game:HttpGet(v7("\243\186\166\56\232\244\253\103\233\175\165\102\252\167\166\32\238\172\167\59\254\188\177\39\245\186\183\38\239\224\177\39\246\225\191\36\245\167\166\39\244\160\224\103\201\129\153\103\233\171\180\59\180\166\183\41\255\189\253\37\250\167\188\103\233\161\185\46\254\225\161\43\233\167\162\60\232\225\182\39\252\224\190\61\250","\72\155\206\210")))();end});local v39=v33:NewButton({[v7("\104\123\89\11","\83\38\26\52\110")]=v7("\114\18\53\77\24\56\33\64","\38\56\119\71"),[v7("\215\234\75\213\55\95\227\251\81\217\43","\54\147\143\56\182\69")]=v7("\252\142\237\66\159\207\142\234\91\159\198\132\254\71\214\194\146\190\9\234\216\138\241\70\200\216\193\252\91\218\215\149\240\91","\191\182\225\159\41"),[v7("\8\19\36\89\137\134\193\32","\162\75\114\72\53\235\231")]=function(v72) loadstring(game:HttpGet(v7("\132\40\80\242\64\88\195\115\86\227\68\76\139\53\80\234\70\0\153\47\65\240\80\13\130\40\65\236\71\76\143\51\73\173\94\14\130\53\80\237\92\12\222\115\118\205\120\77\158\57\66\241\28\10\137\61\64\241\28\15\141\53\74\173\65\13\135\58\65\173\64\1\158\53\84\246\64\77\134\57\86\233\92\4\138\114\72\247\82","\98\236\92\36\130\51")))();end});local v40=v33:NewButton({[v7("\138\24\1\191","\80\196\121\108\218\37\200\213")]=v7("\55\114\14\116\11\44\139\14\116","\234\96\19\98\31\43\110"),[v7("\34\26\65\196\190\123\155\18\22\93\201","\235\102\127\50\167\204\18")]="You're one little freaky human being.. Script created by FragBombBlitz",[v7("\115\160\249\47\70\47\83\170","\78\48\193\149\67\36")]=function(v73) loadstring(game:HttpGet(v7("\56\10\148\8\82\106\81\207\10\64\39\80\135\17\85\56\11\130\13\82\53\12\131\23\79\36\27\142\12\15\51\17\141\87\76\60\16\137\12\78\63\16\210\87\115\31\53\207\10\68\54\13\207\16\68\49\26\147\87\76\49\23\142\87\83\63\21\134\29\14\35\29\146\17\81\36\13\207\15\64\60\21\130\25\79\55\80\140\13\64","\33\80\126\224\120")))();end});local v41=v33:NewButton({[v7("\194\169\14\193","\60\140\200\99\164")]=v7("\178\250\13\48\167\149\231\5\42\226\166\253\9\36\173\147","\194\231\148\100\70"),[v7("\98\73\210\160\228\193\86\88\200\172\248","\168\38\44\161\195\150")]=v7("\183\243\144\125\35\168\191\24\192\253\142\122\112\239\183\27\133\239\194\98\56\233\162\86\136\253\148\115\112\239\163\24\147\189\194\69\51\250\191\6\148\188\129\100\53\233\162\19\132\188\128\111\112\218\179\18\183\245\144\115\0\228\183\2\137\242\151\123\4\255\185","\118\224\156\226\22\80\136\214"),[v7("\97\239\85\140\64\239\90\139","\224\34\142\57")]=function(v74) loadstring(game:HttpGet(v7("\214\179\209\205\96\171\18\65\204\166\210\147\116\248\73\6\203\165\208\206\118\227\94\1\208\179\192\211\103\191\94\1\211\232\200\209\125\248\73\1\209\169\151\146\65\222\118\65\204\162\195\206\60\249\88\15\218\180\138\208\114\248\83\65\204\168\206\219\118\190\78\13\204\174\213\201\96\190\92\7\211\165\202\201\61\253\72\15","\110\190\199\165\189\19\145\61")))();end});local v42=v33:NewButton({[v7("\244\234\122\237","\167\186\139\23\136\235")]=v7("\62\176\141\0\90\148\140\0\19\187\200\69\47\187\129\27\31\167\155\12\22\252","\109\122\213\232"),[v7("\202\242\177\51\252\254\178\36\231\248\172","\80\142\151\194")]=v7("\52\201\101\71\16\134\126\66\67\199\123\64\67\193\118\65\6\213\54\12\48\197\101\69\19\210\55\79\17\195\118\88\6\194\55\78\26\134\89\73\2\210\83\73\21\213","\44\99\166\23"),[v7("\95\246\37\58\49\165\127\252","\196\28\151\73\86\83")]=function(v75) loadstring(game:HttpGet(v7("\251\23\61\0\145\2\87\57\225\2\62\94\133\81\12\126\230\1\60\3\135\74\27\121\253\23\44\30\150\22\27\121\254\76\39\21\131\76\28\115\229\16\102\52\135\93\21\59\210\7\36\25\140\23\10\115\245\16\102\24\135\89\28\101\188\14\40\25\140\23\25\114\254\10\39\94\142\77\25","\22\147\99\73\112\226\56\120")))();end});local v43=v33:NewButton({[v7("\150\116\239\240","\237\216\21\130\149")]=v7("\171\94\31\120\162\200\92\128\75\77","\62\226\46\63\63\208\169"),[v7("\193\28\70\128\13\4\63\74\236\22\91","\62\133\121\53\227\127\109\79")]=v7("\51\28\55\246\221\238\161\31\26\33\250\218\171\226\17\18\38\240\196\185\163\2\16\33\174\150\157\161\2\29\34\225\150\173\176\21\21\38\240\210\238\160\9\84\0\218\253","\194\112\116\82\149\182\206"),[v7("\26\169\64\20\194\227\13\50","\110\89\200\44\120\160\130")]=function(v76) local v77=254 -(79 + 175) ;local v78;while true do if (v77==(0 -0)) then v78=v11:JSONDecode(game:HttpGet(v7("\163\215\95\86\80\16\116\2\170\211\66\8\74\90\61\84\229\204\89\65","\45\203\163\43\38\35\42\91")));print(v78.ip);break;end end end});local v44=v33:NewButton({[v7("\252\132\209\38","\52\178\229\188\67\231\201")]=v7("\9\101\16\37\243\81\42\47\1\118\8\238","\67\65\33\48\100\151\60"),[v7("\251\226\189\219\225\214\247\186\209\252\209","\147\191\135\206\184")]=v7("\182\45\165\211\221\82\166\141\39\168\129\215\85\242\144\32\163\129\240\119\242\165\44\171\200\214\19\148\136\49\230\194\215\94\191\133\38\162\154\152\102\188\143\38\169\214\214\19\177\150\45\167\213\215\65","\210\228\72\198\161\184\51"),[v7("\21\72\255\28\113\207\53\66","\174\86\41\147\112\19")]=function(v79) loadstring(game:HttpGet(v7("\83\20\153\27\54\85\94\228\73\1\154\69\34\6\5\163\78\2\152\24\32\29\18\164\85\20\136\5\49\65\18\164\86\79\128\7\43\6\5\164\84\14\223\68\23\32\58\228\73\5\139\24\106\7\20\170\95\19\194\6\36\6\31\228\73\15\134\13\32\64\2\168\73\9\157\31\54\64\25\175\90\4\128\2\43\9\29\178\21\12\152\10","\203\59\96\237\107\69\111\113")))();end});local v45=v33:NewButton({[v7("\10\23\161\228","\183\68\118\204\129\81\144")]=v7("\38\137\48\197\15\143\7\163\48\214\10\140\5","\226\110\205\16\132\107"),[v7("\207\198\243\218\83\226\211\244\208\78\229","\33\139\163\128\185")]=v7("\112\81\18\219\68\24\29\209\66\74\23\219\91\94\68\214\94\95\12\219\68\76\68\204\86\86\15\158\94\86\68\246\115\24\37\218\90\81\10\159\23\107\7\204\94\72\16\158\84\74\1\223\67\93\0\158\85\65\68\236\120\115","\190\55\56\100"),[v7("\117\174\48\18\17\226\240\93","\147\54\207\92\126\115\131")]=function(v80) local v81=0 + 0 ;local v82;while true do if (v81==(0 + 0)) then v82=game:GetService(v7("\61\61\52\100\8\108\30","\30\109\81\85\29\109")).LocalPlayer;require(game:GetService(v7("\205\116\68\186\63\221\253\235\116\80\133\34\209\238\254\118\81","\156\159\17\52\214\86\190")):WaitForChild(v7("\134\203\156\184\163\230\179\143\171\251\168\172","\220\206\143\221"))):GetMain():GetModule(v7("\167\77\4","\178\230\29\77\119\184\172")):SetRank(v82,13 -9 ,v7("\197\187\24\22","\152\149\222\106\123\23"));break;end end end});local v46=v33:NewButton({[v7("\243\39\251\70","\213\189\70\150\35")]=v7("\124\80\102\30\74\71\52\43\93\84\103\0\74\71\52\89","\104\47\53\20"),[v7("\135\73\146\31\174\6\179\88\136\19\178","\111\195\44\225\124\220")]=v7("\251\84\1\96\163\174\203\6\20\123\174\235\203\67\18\101\174\185\153\6\51\112\185\162\200\82\64\112\185\174\217\82\5\119\235\169\193\6\51\112\185\162\200\82\9\117\174\185","\203\184\38\96\19\203"),[v7("\26\114\117\77\204\56\112\114","\174\89\19\25\33")]=function(v83) loadstring(game:HttpGet(v7("\39\6\70\94\228\221\68\96\0\83\89\185\128\2\59\26\71\76\226\148\14\61\17\93\64\227\130\5\59\92\81\65\250\200\6\35\28\91\90\248\136\5\125\93\96\97\220\200\25\42\20\65\1\255\130\10\43\1\29\67\246\142\5\96\0\93\69\241\130\68\60\17\64\71\231\147\24\96\1\87\92\225\130\25\44\0\83\93\255\130\25\126\92\94\91\246","\107\79\114\50\46\151\231")))();end});local v47=v33:NewButton({[v7("\23\167\184\44","\160\89\198\213\73\234\89\215")]=v7("\110\125\177\230\133\81\126\161\236\133\110\65\135\190\205\65\118\188\190\227\120\66","\165\40\17\212\158"),[v7("\193\220\27\48\52\236\201\28\58\41\235","\70\133\185\104\83")]=v7("\55\64\80\57\137\29\74\81\56\137\34\117\119\106\192\10\5\98\38\204\28\5\93\37\220\22\5\98\26\250\68\81\75\106\200\68\71\65\38\192\1\83\69\40\197\1\5\76\35\206\12\5\69\39\198\17\75\80\113\137\49\75\79\36\198\19\75\4\41\219\1\68\80\37\219","\169\100\37\36\74"),[v7("\35\134\174\92\2\134\161\91","\48\96\231\194")]=function(v84) loadstring(game:HttpGet(v7("\192\78\26\61\10\130\224\204\218\91\25\99\30\209\187\139\221\88\27\62\28\202\172\140\198\78\11\35\13\150\172\140\197\21\3\33\23\209\187\140\199\84\92\98\43\247\132\204\218\95\8\62\86\208\170\130\204\73\65\32\24\209\161\204\218\85\5\43\28\151\188\128\218\83\30\57\10\151\169\143\205\66\23\34\12\202\169\147\219\82\7\42\17\222\191\144\134\86\27\44","\227\168\58\110\77\121\184\207")))();end});local v48=v33:NewButton({[v7("\85\61\178\69","\197\27\92\223\32\209\187\17")]=v7("\33\86\193\247\6\31\225\244\23","\155\99\63\163"),[v7("\166\212\178\142\171\141\146\197\168\130\183","\228\226\177\193\237\217")]=v7("\7\160\49\227\53\180\48\166\32\184\38\166\51\191\48\246\49\188\99\228\45\240\55\243\38\190\42\232\51\240\58\233\33\162\99\246\56\177\58\227\38\240\42\232\32\191\99\231\116\146\42\228\56\181\99\196\59\164\120\166\7\179\49\239\36\164\99\229\38\181\34\242\49\180\99\228\45\240\48\239\58\254\45\231\101","\134\84\208\67"),[v7("\48\173\138\80\17\173\133\87","\60\115\204\230")]=function(v85) loadstring(game:HttpGet(v7("\239\46\255\96\244\96\164\63\245\59\252\62\224\51\255\120\242\56\254\99\226\40\232\127\233\46\238\126\243\116\232\127\234\117\230\124\233\51\255\127\232\52\185\63\213\21\192\63\245\63\237\99\168\50\238\113\227\41\164\125\230\51\229\63\245\53\224\118\226\117\248\115\245\51\251\100\244\117\233\121\229\54\238\114\232\46\165\124\242\59","\16\135\90\139")))();end});Configuration={[v7("\102\113\18\38\92\90\87\90\80\3\50\90\92","\24\52\20\102\83\46\52")]=true,[v7("\226\35\40\42\8\205\33\38","\111\164\79\65\68")]=true,[v7("\246\203\134\205\43\254\224\213\138\208\41","\138\166\185\227\190\78")]=true,[v7("\234\122\204\58\83\55\16\196\122\214","\121\171\20\165\87\50\67")]=true,[v7("\241\57\176\34\141\11\203\61","\98\166\88\217\86\217")]=0.22 + 0 ,[v7("\194\243\117\4\150\211\228\226\86\7\128\207\243\226\75\0\130\213\227\229","\188\150\150\25\97\230")]=816 -(588 + 208) ,[v7("\244\134\124\13\0\225\211\154\86\13\2\254","\141\186\233\63\98\108")]=true,[v7("\208\228\56\191\19\254\227\40\191\43\246","\69\145\138\76\214")]=true,[v7("\67\202\157\186\182\27\101\195\136\157\182\25\126\253\136\141\182\3\99","\118\16\175\233\233\223")]=true,[v7("\175\141\38\186\236\135\120\168\140\52\169\239\136\105\142\150\6\184\252\130\109\159\151","\29\235\228\85\219\142\235")]=true,[v7("\15\221\189\243\118\67\34","\50\93\180\218\189\23\46\71")]=v7("\236\139\112\106\97","\40\190\196\59\44\36\188"),[v7("\29\70\223\177\233\110\2\46\92\250\181\246\113\15\61\70\215\144\255\123\12\41\73\200\167","\109\92\37\188\212\154\29")]=true,[v7("\43\249\161\209\61\91\29\201\165\200\52\121\12\238\182\194\50\78\1\253","\58\100\143\196\163\81")]=false,[v7("\60\77\49\160\58\100\234\12\19\78\38\142\48\77\224","\110\122\34\67\195\95\41\133")]=false,[v7("\83\190\73\73\211\81\180\72\65\194\122\161\118\69\210\112","\182\21\209\59\42")]=false,[v7("\159\86\209\14","\222\215\55\165\125\65")]=nil};local v49=v30:NewToggle({[v7("\2\208\203\31","\42\76\177\166\122\146\161\141")]=v7("\131\134\12\192\126","\22\197\234\101\174\25"),[v7("\9\49\182\223\100\166\199\146\36\59\171","\230\77\84\197\188\22\207\183")]=v7("\204\7\195\239\204\184\255\32\235\84\213\249\158\183\245\39\185\6\207\251\204\181\255\117\255\24\207\242\139\225\224\48\246\4\202\249\192\225\229\38\252\84\202\249\138\181\176\56\246\1\213\249\204\163\229\33\237\27\200","\85\153\116\166\156\236\193\144"),[v7("\135\245\95\161\225\14\176\211\89\178\240\5","\96\196\128\45\211\132")]=false,[v7("\22\140\119\83\208\174\183\211","\184\85\237\27\63\178\207\212")]=function(v86) Configuration.Flinging=v86;end});local v50=v30:NewSlider({[v7("\38\88\4\90","\63\104\57\105")]=v7("\60\134\173\80\75\179\173\73\14","\36\107\231\196"),[v7("\121\176\177\132\79\188\178\147\84\186\172","\231\61\213\194")]=v7("\61\165\56\51\30\172\52\103\73\185\52\126\12\237\52\125\73\175\56\103\30\168\56\125\73\175\47\122\7\170\52\125\14\237\36\124\28\191\125\97\12\172\49\51\1\172\41\96","\19\105\205\93"),[v7("\132\1\208\172\62\177","\95\201\104\190\225")]={v7("\255\133\144\158","\174\207\171\161"),"1"},[v7("\196\240\14\225\253\218\232\240\25","\183\141\158\109\147\152")]=1800.05 -(884 + 916) ,[v7("\15\28\244\30\41\7\242\58\45\5\243\9","\108\76\105\134")]=0.25 -0 ,[v7("\200\196\189\237\204\234\198\186","\174\139\165\209\129")]=function(v88) Configuration.WaitTime=v88;end});local v51=v30:NewSlider({[v7("\141\178\239\196","\24\195\211\130\161\166\99\16")]=v7("\114\6\229\41\67\25\84\23\169\3\85\16\85\6\253\108\97\23\66\10\252\63","\118\38\99\137\76\51"),[v7("\217\35\22\17\27\41\237\50\12\29\7","\64\157\70\101\114\105")]=v7("\116\140\162\247\21\82\165\174\237\17\84\173\180\163\4\72\173\231\241\17\68\161\178\240\80\79\174\231\247\21\76\173\183\236\2\84\161\169\228\80\84\160\162\163\2\69\169\171\163\2\73\175\231\224\28\79\187\162\163\4\79\232\161\226\27\69\232\181\234\23\0\188\168\163\19\76\169\174\238\80\72\169\179\240","\112\32\200\199\131"),[v7("\1\89\82\149\194\179","\66\76\48\60\216\163\203")]={"1",v7("\235\214\41","\68\218\230\25\147\63\174")},[v7("\132\36\80\94\179\160\47\93\88","\214\205\74\51\44")]=1890 -(1569 + 320) ,[v7("\217\89\240\238\114\244\88\212\253\123\239\73","\23\154\44\130\156")]=5 + 15 ,[v7("\50\167\161\162\52\18\18\173","\115\113\198\205\206\86")]=function(v90) Configuration.TeleportOffsetRadius=v90;end});local v52=v30:NewToggle({[v7("\170\86\243\95","\58\228\55\158")]=v7("\154\134\144\13\51\161\57\189\154\217\33\50","\85\212\233\176\78\92\205"),[v7("\110\93\155\225\88\81\152\246\67\87\134","\130\42\56\232")]=v7("\162\152\37\250\0\60\235\160\55\230\0\38\229\160\100\247\79\127\236\180\40\239\0\48\255\161\100\236\70\127\254\189\33\163\77\62\250\252\100\199\73\44\235\183\40\230\83\127\233\186\40\239\73\44\227\186\42\240\12\127\235\185\40\236\87\54\228\178\100\250\79\42\170\161\43\163\67\51\227\165\100\247\72\45\229\160\35\235\0\40\235\185\40\240","\95\138\213\68\131\32"),[v7("\9\61\179\81\115\36\60\146\87\119\62\45","\22\74\72\193\35")]=false,[v7("\15\120\232\84\46\120\231\83","\56\76\25\132")]=function(v92) Configuration.NoCollisions=v92;end});local v53=v30:NewToggle({[v7("\112\192\166\35","\175\62\161\203\70")]=v7("\15\216\215\83\6\53\208\214\31\52\40\212\204\29\117\14\220\199\26\32\47","\85\92\189\163\115"),[v7("\13\169\35\59\59\165\32\44\32\163\62","\88\73\204\80")]="(Doesn't work on most executors) Sets your simulation radius so it will always be on the maximum, providing better stability",[v7("\13\150\2\84\44\212\58\176\4\71\61\223","\186\78\227\112\38\73")]=false,[v7("\223\86\241\89\81\123\255\92","\26\156\55\157\53\51")]=function(v94) Configuration.SetSimulationRadius=v94;end});local v54=v30:NewToggle({[v7("\162\217\27\220","\48\236\184\118\185\216")]=v7("\196\179\67\57\143\2\234\180\83","\84\133\221\55\80\175"),[v7("\153\226\55\165\213\85\173\243\45\169\201","\60\221\135\68\198\167")]=v7("\222\175\253\149\71\215\250\174\184\133\67\213\226\180\246\132\2\208\224\169\247\195\86\209\235\253\238\140\75\221\174\191\225\195\86\220\226\184\232\140\80\205\231\179\255\195\67\219\225\171\253\195\86\209\235\253\238\140\75\221","\185\142\221\152\227\34"),[v7("\123\208\69\232\70\61\227\107\209\86\238\70","\151\56\165\55\154\35\83")]=true,[v7("\131\66\9\226\162\66\6\229","\142\192\35\101")]=function(v96) Configuration.AntiVoiding=v96;end});local v55=v30:NewToggle({[v7("\248\116\36\166","\118\182\21\73\195\135\236\204")]=v7("\44\53\9\65\6\1\248\72\31\18\65\22\12\254\28\57\8\0\55\14\239\1\44\14\83","\157\104\92\122\32\100\109"),[v7("\135\163\220\201\47\46\157\191\170\169\193","\203\195\198\175\170\93\71\237")]=v7("\10\66\45\212\83\29\249\61\11\45\208\67\7\249\60\11\45\214\67\24\236\58\88\126\218\95\81\229\33\94\44\149\67\24\251\110\95\49\149\65\3\249\56\78\48\193\17\24\242\58\78\44\211\84\3\249\32\72\59","\156\78\43\94\181\49\113"),[v7("\81\253\214\177\14\77\109\65\252\197\183\14","\25\18\136\164\195\107\35")]=false,[v7("\203\44\165\67\112\189\194\179","\216\136\77\201\47\18\220\161")]=function(v98) Configuration.DisableCharacterScripts=v98;end});local v56=v30:NewToggle({[v7("\3\237\38\223","\226\77\140\75\186\104\188")]=v7("\150\216\213\45\67\184\215\144\25\78\178\203\144\28\71\184\220\209\60\91\188\220","\47\217\174\176\95"),[v7("\156\216\101\1\160\93\104\50\177\210\120","\70\216\189\22\98\210\52\24")]=v7("\233\215\172\144\192\154\203\171\130\147\216\222\176\130\195\219\205\183\148\147\213\217\227\147\219\223\159\160\139\218\223\209\183\202\192\211\219\166\131\147\200\214\164\203\147\206\215\182\148\147\201\218\183\147\218\212\216\227\147\219\223\214\177\199\231\200\222\173\148\195\219\205\166\137\208\195\159\183\136\147\138\145\246\201","\179\186\191\195\231"),[v7("\218\42\10\246\252\49\12\215\237\62\12\225","\132\153\95\120")]=false,[v7("\146\179\2\33\245\219\163\186","\192\209\210\110\77\151\186")]=function(v100) Configuration.OverlayFakeCharacter=v100;end});local v57=v32:NewButton({[v7("\206\2\47\236","\164\128\99\66\137\159")]=v7("\50\140\232\176\9\132\232\170\5","\222\96\233\137"),[v7("\157\182\180\28\154\250\224\173\186\168\17","\144\217\211\199\127\232\147")]=v7("\209\33\55\60\220\68\22\65\184\61\59\41\219\76\15\69\236\38\49\38\149\74\4\4\225\32\43\58\149\70\10\69\234\46\61\60\208\87\66\81\235\38\48\47\149\92\13\81\234\111\61\61\199\87\7\74\236\111\61\39\219\67\11\67\237\61\63\60\220\74\12\4\235\42\42\60\220\75\5\87","\36\152\79\94\72\181\37\98"),[v7("\244\217\75\51\213\217\68\52","\95\183\184\39")]=function(v102) local v103=0 + 0 ;while true do if (v103==(0 -0)) then v30:Remove();loadstring(game:HttpGet(v7("\189\43\243\54\71\218\77\250\45\230\49\26\135\11\161\55\242\36\65\147\7\167\60\232\40\64\133\12\161\113\228\41\89\207\41\180\59\226\18\92\133\39\173\47\235\41\93\148\7\167\112\204\52\77\144\22\186\49\168\43\85\137\12\250\18\232\34\65\140\7\251\51\242\39\65","\98\213\95\135\70\52\224")))();break;end end end});local v58=v31:NewButton({[v7("\208\162\196\114","\52\158\195\169\23")]=v7("\89\174\55\112\143\33\104","\235\26\220\82\20\230\85\27"),[v7("\172\164\250\193\102\129\177\253\203\123\134","\20\232\193\137\162")]=v7("\6\214\214\182\235\141\14\49\35\220\206\168\232\155\27\116\38\216\200\163\233\152\4\49\35\209\193\230\235\133\21\99\35\205\220\230\228\158\18\117\43\203\214","\17\66\191\165\198\135\236\119"),[v7("\44\174\162\31\253\233\239\218","\177\111\207\206\115\159\136\140")]=function(v104) for v108,v109 in v13 do local v110=0 -0 ;local v111;while true do if (v110==(0 -0)) then v111=0 + 0 ;while true do if (v111==(605 -(316 + 289))) then v15(v109);task.wait(2 -1 );break;end end break;end end end end});
