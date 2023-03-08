;---------------------------------------------------------------------------
; Dynamic Pursuit System
[Statedef 7000]
type    = A
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
poweradd = 100
sprpriority = 2
anim = 4000+var(0)

[State 7000, Target]
type = VarSet
triggerall = NumTarget > 0
trigger1 = PlayerIDExist(var(50))
v = 51 
value = 1
[State 7000, Target2]
type = VarSet
triggerall = NumTarget = 0
trigger1 = 1 
v = 51 
value = 2

[State 7000, BackUp]
type = ChangeState
triggerall = !animtime && var(51) = 1
triggerall = NumTarget > 0
trigger1 = floor(abs((playerID(var(50)), pos x)-(pos x))) <= 160 
value = 7005

;[State 7000, BackDown]
;type = ChangeState
;triggerall = !animtime && var(51) = 1
;triggerall = NumTarget > 0
;trigger1 = -(((playerID(var(50)), pos y))-(pos y)) <= -60
;value = 7006

[State 7000, Forward]
type = ChangeState
triggerall = !animtime && var(51) = 1
triggerall = NumTarget > 0
trigger1 = floor(abs((playerID(var(50)), pos x)-(pos x))) >= 160 
value = 7010

[State 7000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;---------------------------------------------------------------------------
; Dynamic Pursuit System Go!
[Statedef 7001]
type    = A
movetype= I
physics = N
juggle  = 0
ctrl = 0
poweradd = -500
sprpriority = 2
anim = 4001+var(0)

[State 7001, PosAdd]
type = PosAdd
triggerall = prevstateno != [7000,7009]
trigger1 = !time
y = const(size.mid.pos.y)

;Math and Variable Container
[State 7001, Math_Helper]
type = Helper
triggerall = prevstateno != [7000,7009]
trigger1 = !time
ID = 7099
stateno = 7099
name = "Math_Helper"
postype = p1
pos = 0,0

;[State 7001, Turn]
;type = Turn
;triggerall = numhelper(7099)>0
;trigger1 = ifelse(facing=1, helper(7099),fvar(0) < 0, helper(7099),fvar(0) > 0)

;[State 7001, AngleSet-p2posbased]
;type = AngleSet
;trigger1 = (enemynear(0), pos y < pos y)
;value = ifelse(facing=1, 1, -1) *(90+Atan((enemynear(0), pos x - pos x) / -(pos y - enemynear(0), pos y)-0.0001) * (180.0 / Pi)) - ifelse(facing=1, 0, 180)
;[State 7001, AngleSet2-p2posbased]
;type = AngleSet
;trigger1 = (enemynear(0), pos y > pos y) ;(enemynear(0), pos x > pos x)  && (enemynear(0), pos y > pos y)
;value = ifelse(facing=1, 1, -1) *(270+Atan((enemynear(0), pos x - pos x) / -(pos y - enemynear(0), pos y)-0.0001) * (180.0 / Pi)) - ifelse(facing=1, 0, 180)

;[State 7001, VelAdd]
;type = VelAdd
;triggerall = command="holdfwd"
;trigger1 = vel x < 4
;x = 0.1
;[State 7001, VelAdd]
;type = VelAdd
;triggerall = command="holdback"
;trigger1 = vel x > -4
;x = -0.1
;[State 7001, VelAdd]
;type = VelAdd
;triggerall = command="holdup"
;trigger1 = vel y > -4
;y = -0.1
;[State 7001, VelAdd]
;type = VelAdd
;triggerall = command="holddown"
;trigger1 = vel x < 4
;y = 0.1

;VelSet1
[State 7001, VelSet]
type = VelSet
triggerall = prevstateno != [7000,7009]
trigger1 = numhelper(7099)>0 && time=1
x = (helper(7099), fvar(7))
y = (helper(7099), fvar(8))
;VelSet3
[State 7001, VelSet]
type = VelSet
trigger1 = numhelper(7099)>0 && time>1
x = Vel x*(1-helper(7099), fvar(9)) + (helper(7099), fvar(5)*helper(7099), fvar(9))*(12)
y = Vel y*(1-helper(7099), fvar(9)) + (helper(7099), fvar(6)*helper(7099), fvar(9))*(12)

[State 7001, AngleSet-Vel_Based]
type = AngleSet
trigger1 = numhelper(7099)>0 && time
value = helper(7099), fvar(15)

[State 7001, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 7001, Error_END]
type = ChangeState
trigger1 = numhelper(7099)=0
value = 51
ctrl = 1

[State 7001, Back_Up]
type = ChangeState
trigger1 = numhelper(7099)=0
value = 7002
ctrl = 1

[State 7001, Hit_Ground]
type = ChangeState
trigger1 = numhelper(7099)=0
value = 7005
ctrl = 1

[State 7001, Hit_Wall]
type = ChangeState
trigger1 = prevstateno != 7006 && (FrontEdgeBodyDist < 6 || BackEdgeBodyDist < 6)
trigger2 = prevstateno = 7006 && time > 8 && (FrontEdgeBodyDist < 6 || BackEdgeBodyDist < 6)
value = 7006
ctrl = 1

[State 7001, Attack_1]
type = ChangeState
triggerall = numhelper(7099)>0 && time
trigger1 = (helper(7099),fvar(0) = [-40,30]) && (helper(7099),fvar(2) = [-40,30])
value = 7010
;---------------------------------------------------------------------------
; DPS - Collide with Floor
[Statedef 7005]
type    = A
movetype= I
physics = N
juggle  = 0
ctrl = 0
sprpriority = 2
anim = 4001+var(0)

[State 7005, VelSet]
type = VelSet
trigger1 = !time
x = 0
y = 0

[State 7005, Back_to_Pursuit]
type = ChangeState
trigger1 = time=4
value = 7001
;---------------------------------------------------------------------------
; DPS - Collide with Wall
[Statedef 7006]
type    = A
movetype= I
physics = N
juggle  = 0
ctrl = 0
sprpriority = 2
anim = 4001+var(0)

[State 7006, VelSet]
type = VelSet
trigger1 = !time
x = -(vel x)*0.5

;[State 7006, Turn]
;type = Turn
;trigger1 = !time

[State 7006, Back_to_Pursuit]
type = ChangeState
trigger1 = time=2
value = 7001
;---------------------------------------------------------------------------
;DPS - Forward Attack
[Statedef 7010]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
sprpriority = 2
anim = 650+var(0)
velset = 0,0

[State 7001, PosAdd]
type = PosAdd
trigger1 = !time
y = -const(size.mid.pos.y)

[State 7001, Position_to_Ground]
type = PosAdd
trigger1 = pos y > 0
y = -pos y

[State 7010, VelSet];No-Gravity
type = VelSet
Trigger1 = time < 22
y = 0

[State 7010, Sound]
type = PlaySnd
trigger1 = Time = 1
value = 202, 0

[State 7010, Voice]
type = PlaySnd
trigger1 = time = 1 && random < 200
value = 1, 8
volume = 255
channel = 0

[State 7010, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = floor(80*(1+power/30000.0))
guardflag = HA
priority = 3
pausetime = 20,20
sparkno = 2
sparkxy = -18,-17
hitsound   = S303,0
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 16
ground.velocity = -12
air.velocity = -12,0
fall = 1
fall.recover = 0

[State 7010, Control]
type = CtrlSet
trigger1 = Time = 22
value = 1
;---------------------------------------------------------------------------
;Dynamic Pursuit System - Mathematics Helper/Variable Container
[StateDef 7099]
type= S
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 2

;[State 7001, Turn]
;type = Turn
;trigger1 = ifelse(facing=1, helper(7099),fvar(0) < 0, helper(7099),fvar(0) > 0)

[State 7099, Parent_Bind]
type = Bindtoparent
trigger1 = 1
x = 0
y = 0

;=Get Enemy X and Y Distance=;
[State 7099, Enemy_X_Pos]
type = VarSet
trigger1 = 1
fv = 1
value = (enemynear(0), Pos X + enemynear(0), const(size.mid.pos.x)) - (Pos X + parent, const(size.mid.pos.x))
[State 7099, Enemy_Y_Pos]
type = VarSet
trigger1 = 1
fv = 2
value = (enemynear(0), Pos Y + enemynear(0), const(size.mid.pos.y)) - (Pos Y); + parent, const(size.mid.pos.y))

;=Get Enemy X and Y Velocity=;
[State 7099, Enemy_X_Vel]
type = VarSet
trigger1 = 1
fv = 3
value = enemynear(0), Vel X
[State 7099, Enemy_Y_Vel]
type = VarSet
trigger1 = 1
fv = 4
value = enemynear(0), Vel Y

;=Set Velocity Trig=;
[State 7099, Player_X_Vel_Dir]
type = VarSet
trigger1 = 1
fv = 5
value = Atan(ifelse(facing=1,fvar(0),(pos x - enemynear(0), pos x))/abs(fvar(2)))
[State 7099, Player_Y_Vel_Dir]
type = VarSet
trigger1 = 1
fv = 6
value = Atan(fvar(2) / abs(ifelse(facing=1,fvar(0),(pos x - enemynear(0), pos x))))

;=Random Start Velocity=;
[State 7099, Player_X_Vel_Start]
type = VarSet
trigger1 = !time
fv = 7
value = ifelse(FVar(6)=0,1,FVar(6))*6-(random%12*FVar(5)*ifelse(random%2=0,1,-1))
[State 7099, Player_Y_Vel_Start]
type = VarSet
trigger1 = !time
fv = 8
value = fvar(5)*6-(random%12*ifelse(FVar(6)=0,1,FVar(6))*ifelse(random%2=0,1,-1))

[State 7099, Acceleration_Multiplier_0]
type = VarSet
trigger1 = !time
fv = 9
value = 0.0
[State 7099, Acceleration_Multiplier_Adder]
type = VarAdd
trigger1 = time && fvar(9) < 1.0
fv = 9
value = 0.0025

;=Current Player Velocity=;
[State 7099, Player_X_Vel]
type = VarSet
trigger1 = time
fv = 10
value = parent, vel X
[State 7099, Player_Y_Vel]
type = VarSet
trigger1 = time
fv = 11
value = parent, vel Y

[State 7099, Get_Angle_From_Vel]
type = VarSet
trigger1 = 1
fv = 15
value = Atan((-fvar(11) / ifelse((fvar(10)!=0), fvar(10), 0.0001)))*(180.0 / Pi)

[State 7099, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != [7000,7009]

;------------------------------------------------------------------