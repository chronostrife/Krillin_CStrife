;===========================================================================
;Helpers
;===========================================================================
;Particle Aura
[StateDef 10000]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 0

;[State 10000, DisplayToClipboard]
;type = DisplayToClipboard
;trigger1 = 1
;text = "Mode:: %d, Intensity:: %d"
;params = Var(1), Var(10)

[State 10000, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10300, VarSet-DefaultAura]
type = VarSet
trigger1 = 1
v = 1
value = 0
[State 10000, VarSet-NoAura]
type = VarSet
trigger1 = (parent,stateno=[190,194])
trigger2 = (parent, movetype = H) && ((parent, stateno != [5000,5099]) && (parent, stateno != [120,179]))
trigger3 = parent,power < 1000
trigger4 = parent,stateno=185;Krillin Cheer Winpose
v = 1
value = -1
[State 10000, VarSet-FullAura]
type = VarSet
trigger1 = (parent,stateno=1701) || (parent,stateno=[1800,2399])
v = 1
value = 1

[State 10000, VarAdd-PalFX - FullAura]
type = VarSet
trigger1 = var(1) = 1
trigger2 = parent,power>=3000 && (var(1) != -1)
v = 10
value = 180

[State 10000, VarAdd-PalFX - NormalAura]
type = VarSet
triggerall = var(1)= 0
trigger1 = parent,power=[1000,2999]
v = 10
value = 101+floor((parent,power-1000)/28)

[State 10000, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -255+var(10),-255+var(10),-255+var(10)
persistent = 1
ignorehitpause = 1

;--------------------------------------------------------
;Original Aura Code supplied by Camen Rider Kakuke
[State 10000, aura 1A]
type = Explod
triggerall = parent,alive && var(1)>=0
trigger1 = time%6=2
anim = 10000
ID = 10000
pos = -5,-10+ifelse(parent,statetype=A,-10,0)
postype = p1
facing = 1
vfacing = 1
bindtime = 1
random = 10,50
supermove = 1
scale = .3,.3
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
pausemovetime   = 1000
accel = -0.04,-0.03

[State 10000, aura 1B]
type = Explod
triggerall = parent,alive && var(1)>=0
trigger1 = time%6=2
anim = 10000
ID = 10000
pos = 5,-10+ifelse(parent,statetype=A,-10,0)
postype = p1
facing = -1
vfacing = 1
bindtime = 1
random = 10,50
supermove = 1
scale = .3,.3
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
pausemovetime   = 1000
accel = 0.04,-0.03

[State 10000, aura 2A]
type = Explod
triggerall = parent,alive && var(1)>=0
trigger1 = time%6=0
anim = 10001
ID = 10000
pos = -5,-6+ifelse(parent,statetype=A,-10,0)
postype = p1
facing = 1
vfacing = 1
bindtime = 1
random = 10,20
supermove = 1
scale = .3,.3
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
pausemovetime   = 1000
accel = -0.05,0

[State 10000, aura 2B]
type = Explod
triggerall = parent,alive && var(1)>=0
trigger1 = time%6=0
anim = 10001
ID = 10000
pos = 5,-6+ifelse(parent,statetype=A,-10,0)
postype = p1
facing = -1
vfacing = 1
bindtime = 1
random = 10,20
supermove = 1
scale = .3,.3
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
pausemovetime   = 1000
accel = 0.05,0

[State 10000, aura 3]
type = Explod
triggerall = parent,alive && var(1)>=0
trigger1 = time%6=3
anim = 10002
ID = 10000
pos = 0,-10+ifelse(parent,statetype=A,-10,0)
postype = p1
facing = ifelse(random>500,-1,1)
vfacing = 1
bindtime = 1
random = 10,50
supermove = 1
scale = .3,.3
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
pausemovetime   = 1000
accel = 0, -0.05

;--------------------------------------------------------
;Energy Balls
[State 10000, VarSet2]
type = VarRandom
triggerall = parent, stateno = 1701
trigger1 = time%7=0
v = 24
range = -6,-1
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 10000, VarSet2]
type = VarRandom
triggerall = parent, stateno = 1701
trigger1 = time%7=0
v = 25
range = 1,25
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 10000, VarSet]
type = VarRandom
triggerall = parent, stateno = 1701
trigger1 = time%7=0
v = 26
range = -2,2
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 10000, Particles]
type = Explod
triggerall = parent, stateno = 1701
trigger1 = time%7=0
anim = 10057+(random%3)
id = 10057
postype = p1
pos = 0, 0
random = 36,4
vel = var(26)*0.75, var(24)*0.6
accel = -var(26)*0.05, 0
scale = var(25)*0.005, var(25)*0.005
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1
sprpriority = ifelse(random>600,-3,3)
ontop = 0

;---------------------------------------------------------------------------
;Double Tsuihikidan A
[StateDef 10080]
type = A
physics = N
movetype = A
anim = 10082
ctrl = 0
sprpriority = 3

[State 10080, IDVarSet]
type = VarSet
trigger1 = !time
v = 29
value = 0

[State 10080, LifeVarSet]
type = VarSet
trigger1 = !time && prevstateno != 10082
v = 10
value = 600

[State 10080, LifeLoss]
type = VarAdd
trigger1 = time
v = 10
value = -1

[State 10080, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, NP, SP, NA, SA
slot = 0
stateno = 10082

[State 10080, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, HA, HP
slot = 1
stateno = 10083

[State 10080, NotHit]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = 1

[State 10080, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 10080, Dust]
type = Explod
triggerall = Pos Y > -25 && (vel x > 0)
trigger1 = (time%4=0)
Anim = 15010
Pos = -15, -Floor(Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.15, 0.15
ownpal = 1

[State 10080, Dust]
type = Explod
triggerall = Pos Y > -25 && (vel x < 0)
trigger1 = (time%4=0)
Anim = 15011
Pos = 15, -Floor(Pos Y)
Id = 15011
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.15, 0.15
ownpal = 1

[State 10080, Ground-VelSet]
type = VelSet
trigger1 = pos y > -15 && vel y > 0 && vel y < 4.0
y = (vel y*0.75)

[State 10080, VelSet1]
type = VelSet
trigger1 = !time && prevstateno!=[10082,10085]
x = 3
y = 3

[State 10080, VelAddX]
type = VelAdd
triggerall = p2dist x > 0
trigger1 = vel X < 6.0
x = 0.1
[State 10080, VelAddY1]
type = VelAdd
triggerall = (p2dist y -40) > 0
trigger1 = vel Y < 6.0
y = 0.125
[State 10080, VelAddY2]
type = VelAdd
triggerall = (p2dist y -40) < 0
trigger1 = vel Y > -6.0
y = -0.125

[State 10080, Turn]
type = Turn
trigger1 = p2bodydist x < -20

[State 10080, Trans]
type = Trans
trigger1 = 1
trans = add

[State 10080, Explod_Ball]
type = Explod
trigger1 = time && !movecontact
Anim = 10081
Pos = 0, 0
Id = 10080
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = 1
ownpal = 1
scale = 0.5, 0.5

[State 10080, HitDef]
type = HitDef
trigger1 = !time 
attr = S, HP
animtype  = Hard
Damage = floor(85*(1+parent,power/30000.0)),floor(16*(1+parent,power/30000.0))
priority = 1, miss
hitflag = MAFD
guardflag = MA
guard.dist = 20
pausetime = 1,18
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -8, (vel y)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -4+(vel y)
fall = 1
fall.recover = 0
getpower = 0
palfx.time = 40
palfx.add = 120,80,0
palfx.sinadd = -120,-80,-0, 120

[State 10080, Explod_Elec]
type = Explod
trigger1 = time%10=0 && !movecontact
Anim = 10030+random%4
Pos = -3, 0
Id = 10030
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = -1
ownpal = 1
scale = 0.3, 0.3

[State 10080, VarSetX1]
type = VarRandom
trigger1 = Time % 4=0
v = 6
range = -12,12

[State 10080, VarSetY1]
type = VarRandom
trigger1 = Time % 4=0
v = 7
range = -12,12

[State 10080, Sparkles]
type = Explod
trigger1 = Time % 4=0
anim = 11555
id = 11555
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10080, Next]
type = Changestate
trigger1 = Movecontact
trigger2 = pos y >= 0 && vel Y >= 4.0
trigger3 =  var(10) <= 0
trigger4 = MoveReversed
value = 13100
;---------------------------------------------------------------------------
;Double Tsuihikidan B
[StateDef 10081]
type = A
physics = N
movetype = A
anim = 10082
ctrl = 0
sprpriority = 3

[State 10081, IDVarSet]
type = VarSet
trigger1 = !time
v = 29
value = 1

[State 10081, LifeVarSet]
type = VarSet
trigger1 = !time && prevstateno != 10082
v = 10
value = 600

[State 10081, LifeLoss]
type = VarAdd
trigger1 = time
v = 10
value = -1

[State 10081, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, NP, SP, NA, SA
slot = 0
stateno = 10082

[State 10081, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, HA, HP
slot = 1
stateno = 10083

[State 10081, NotHit]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = 1

[State 10081, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 10081, Dust]
type = Explod
triggerall = Pos Y > -25 && (vel x > 0)
trigger1 = (time%4=0)
Anim = 15010
Pos = -15, -Floor(Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.15, 0.15
ownpal = 1

[State 10081, Dust]
type = Explod
triggerall = Pos Y > -25 && (vel x < 0)
trigger1 = (time%4=0)
Anim = 15011
Pos = 15, -Floor(Pos Y)
Id = 15011
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.15, 0.15
ownpal = 1

[State 10081, VelSet]
type = VelSet
trigger1 = pos y > -15 && vel y > 0 && vel y < 4.0
y = (vel y*0.75)

[State 10081, VelSet1]
type = VelSet
trigger1 = !time && prevstateno!=[10082,10085]
x = 3
y = -3

[State 10081, VelAddX]
type = VelAdd
triggerall = p2dist x > 0
trigger1 = vel X < 6.0
x = 0.125
[State 10081, VelAddY1]
type = VelAdd
triggerall = (p2dist y -40) > 0
trigger1 = vel Y < 6.0
y = 0.1
[State 10081, VelAddY2]
type = VelAdd
triggerall = (p2dist y -40) < 0
trigger1 = vel Y > -6.0
y = -0.1

[State 10081, Turn]
type = Turn
trigger1 = p2bodydist x < -20

[State 10081, Trans]
type = Trans
trigger1 = 1
trans = add

[State 10081, Explod_Ball]
type = Explod
trigger1 = time && !movecontact
Anim = 10081
Pos = 0, 0
Id = 10080
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = 1
ownpal = 1
scale = 0.5, 0.5

[State 10081, HitDef]
type = HitDef
trigger1 = !time 
attr = S, HP
animtype  = Hard
Damage = floor(85*(1+parent,power/30000.0)),floor(16*(1+parent,power/30000.0))
priority = 1, miss
hitflag = MAFD
guardflag = MA
guard.dist = 20
pausetime = 1,18
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -8, (vel y)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -4+(vel y)
fall = 1
fall.recover = 0
getpower = 0
palfx.time = 40
palfx.add = 120,80,0
palfx.sinadd = -120,-80,-0, 120

[State 10081, Explod_Elec]
type = Explod
trigger1 = time%10=1 && !movecontact
Anim = 10030+random%4
Pos = -3, 0
Id = 10030
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = -1
ownpal = 1
scale = 0.3, 0.3

[State 10081, VarSetX1]
type = VarRandom
trigger1 = Time % 4=0
v = 6
range = -12,12

[State 10081, VarSetY1]
type = VarRandom
trigger1 = Time % 4=0
v = 7
range = -12,12

[State 10081, Sparkles]
type = Explod
trigger1 = Time % 4=0
anim = 11555
id = 11555
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10081, Next]
type = Changestate
trigger1 = Movecontact
trigger2 = pos y >= 0 && vel Y >= 4.0
trigger3 =  var(10) <= 0
trigger4 = MoveReversed
value = 13100
;---------------------------------------------------------------------------
;Ki Ball Hit
[StateDef 10082]
type = A
physics = N
movetype = A
velset = GetHitVar(xvel)*1.5*facing,GetHitVar(yvel)*0.5
sprpriority = 3
anim = 10082

[State 10082, Shockwave]
type = Explod
trigger1 = !time
anim = 13120
id = 13120
postype = p1
pos = 5, -5
scale = 0.75,0.75
sprpriority = 3
ownpal = 1

[State 10082, Sound]
type = PlaySnd
trigger1 = time = 5
value = 1806, 0

[State 10082, Explod_Ball]
type = Explod
trigger1 = time && !movecontact
Anim = 10081
Pos = 0, 0
Id = 10080
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = 1
ownpal = 1
scale = 0.5, 0.5

[State 10082, VarSetX1]
type = VarRandom
trigger1 = Time % 4=0
v = 6
range = -12,12

[State 10082, VarSetY1]
type = VarRandom
trigger1 = Time % 4=0
v = 7
range = -12,12

[State 10082, Sparkles]
type = Explod
trigger1 = Time % 4=0
anim = 11555
id = 11555
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10082, VelAddX]
type = VelAdd
triggerall = p2dist x > 0
trigger1 = vel X < 6.0
x = 0.11
[State 10082, VelAddY1]
type = VelAdd
triggerall = (p2dist y -40) > 0
trigger1 = vel Y < 6.0
y = 0.11
[State 10082, VelAddY2]
type = VelAdd
triggerall = (p2dist y -40) < 0
trigger1 = vel Y > -6.0
y = -0.11
[State 10082, Turn]
type = Turn
trigger1 = p2bodydist x < -20

[State 10082, VelSetX1]
type = VelSet
trigger1 = (vel x > 6.0)
x = 6.0
[State 10082, VelSetX2]
type = VelSet
trigger1 = (vel x < -6.0)
x = -6.0
[State 10082, VelSetX1]
type = VelSet
trigger1 = (vel y > 6.0)
y = 6.0
[State 10082, VelSetX2]
type = VelSet
trigger1 = (vel y < -6.0)
y = -6.0

[State 10082, LifeLoss]
type = VarAdd
trigger1 = !time
v = 10
value = -120

[State 10082, HitDef]
type = HitDef
trigger1 = !time 
attr = S, SP
affectteam = F
animtype  = Hard
Damage = floor(50*(1+parent,power/30000.0)),floor(10*(1+parent,power/30000.0))
hitflag = MAFD
guardflag = MA
pausetime = 1,15
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = 5, -4
air.fall = 1
palfx.time = 40
palfx.add = 120,80,0
palfx.sinadd = -120,-80,-0, 120

[State 10082, NotHit]
type = NotHitBy
trigger1 = time <= 2
trigger2 = movecontact
value = ,AA, AP, AT
time = 1

[State 10082, NotHit]
type = NotHitBy
trigger1 = time > 2
value = ,NT,ST,HT
time = 1

[State 10082, Gethit]
type = HitOverride
trigger1 = time > 2
attr = SCA, NP, SP, NA, SA
slot = 1
stateno = 10082

[State 10082, Gethit]
type = HitOverride
trigger1 = time > 2
attr = SCA, HA, HP
slot = 2
stateno = 10083

[State 10082, Next]
type = Changestate
trigger1 = movecontact
trigger2 = pos y >= 0 && vel Y >= 4.0
trigger3 = var(10) <= 0
trigger4 = MoveReversed
value = 13100

[State 10082, Next]
type = Changestate
trigger1 = time >= 24
value = 10080+var(29)

[State 10082, Next]
type = Changestate
trigger1 = time >= 25
value = 10080

[State 10082, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -15,15

[State 10082, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -15,15

[State 10082, VarSet2]
type = VarRandom
trigger1 = 1
v = 25
range = 1,25

[State 10082, Particles]
type = Explod
trigger1 = time < 10
anim = 10083+(random%4)
id = 10080
postype = p1
pos = var(23), var(24)
vel = var(23)*0.3, -abs(var(24)*0.3)
accel = 0, 0.25
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
persistant = 0

;---------------------------------------------------------------------------
;Ki Ball Killer Hit
[StateDef 10083]
type = A
physics = N
movetype = H
velset = GetHitVar(xvel)*1.5*facing,GetHitVar(yvel)*0.5
sprpriority = 3
anim = 10082

[State 10083, Shockwave]
type = Explod
trigger1 = !time
anim = 13120
id = 13120
postype = p1
pos = 5, -5
scale = 0.75,0.75
sprpriority = 3
ownpal = 1

[State 10083, Sound]
type = PlaySnd
trigger1 = time = 3
value = 1806, 0

[State 10081, Explod_Ball]
type = Explod
trigger1 = time && !movecontact
Anim = 10081
Pos = 0, 0
Id = 10080
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = 1
ownpal = 1
scale = 0.5, 0.5

[State 10081, VarSetX1]
type = VarRandom
trigger1 = Time % 4=0
v = 6
range = -12,12

[State 10081, VarSetY1]
type = VarRandom
trigger1 = Time % 4=0
v = 7
range = -12,12

[State 10081, Sparkles]
type = Explod
trigger1 = Time % 4=0
anim = 11555
id = 11555
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10083, VelAddX]
type = VelAdd
triggerall = p2dist x > 0
trigger1 = vel X < 6.0
x = 0.11
[State 10083, VelAddY1]
type = VelAdd
triggerall = (p2dist y -40) > 0
trigger1 = vel Y < 6.0
y = 0.11
[State 10083, VelAddY2]
type = VelAdd
triggerall = (p2dist y -40) < 0
trigger1 = vel Y > -6.0
y = -0.11
[State 10083, Turn]
type = Turn
trigger1 = p2bodydist x < -20

[State 10083, VelSetX1]
type = VelSet
trigger1 = (vel x > 9.0)
x = 9.0
[State 10083, VelSetX2]
type = VelSet
trigger1 = (vel x < -9.0)
x = -9.0
[State 10083, VelSetX1]
type = VelSet
trigger1 = (vel y > 9.0)
y = 9.0
[State 10083, VelSetX2]
type = VelSet
trigger1 = (vel y < -9.0)
y = -9.0

[State 10083, HitDef]
type = HitDef
trigger1 = !time 
attr = S, SP
affectteam = F
animtype  = Hard
Damage = floor(50*(1+parent,power/30000.0)),floor(10*(1+parent,power/30000.0))
hitflag = MAFD
guardflag = MA
pausetime = 1,15
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity =5, -4
air.fall = 1
palfx.time = 40
palfx.add = 120,80,0
palfx.sinadd = -120,-80,-0, 120

[State 10083, NotHit]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1

[State 10083, Next]
type = Changestate
trigger1 = time >= 24
trigger2 = movecontact
trigger3 = pos y >= 0 && vel Y >= 4.0
trigger4 = MoveReversed
value = 13100

[State 10083, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -15,15

[State 10083, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -15,15

[State 10083, VarSet2]
type = VarRandom
trigger1 = 1
v = 25
range = 1,25

[State 10083, Particles]
type = Explod
trigger1 = time < 10
anim = 10083+(random%4)
id = 10080
postype = p1
pos = var(23), var(24)
vel = var(23)*0.3, -abs(var(24)*0.3)
accel = 0, 0.25
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
persistant = 0
;---------------------------------------------------------------------------
;Kakusan Dan
[StateDef 10090]
type = A
physics = N
movetype = A
anim = 10092
ctrl = 0
sprpriority = 3
velset = 4.5,-2

[State 10090, NotHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 10090, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 10090, Trans]
type = Trans
trigger1 = 1
trans = add

[State 10090, FVarAdd]
type = VarAdd
trigger1 = time < 25
fv = 10
value = 0.01

[State 10090, Explod_Ball]
type = Explod
trigger1 = screenpos y <= 320 && screenpos y >= -60
Anim = 10091
Pos = 0, 0
Id = 10090
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = 1
ownpal = 1
scale = 0.15+fvar(10), 0.15+fvar(10)

[State 10090, VelAddX]
type = VelAdd
trigger1 = (vel x >= 0.1)
x = -0.01

[State 10090, VelAddY]
type = VelAdd
trigger1 = 1
y = -0.3

[State 10090, HitDef]
type = HitDef
trigger1 = !time 
attr = S, HP
animtype  = Hard
Damage = floor(60*(1+parent,power/30000.0)),floor(12*(1+parent,power/30000.0))
hitflag = MAFD
guardflag = MA
guard.dist = 20
pausetime = 1,16
sparkno = 2
sparkxy = -20,-15
hitsound   = S307,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -0.5, -18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -0.5, -18
fall = 1
fall.recover = 0
getpower = 0
yaccel = 0.3
palfx.time = 50
palfx.add = 120,100,0
palfx.sinadd = -120,-100,-0, 140

[State 10090, VarSetX1]
type = VarRandom
trigger1 = Time % 4=0
v = 6
range = -12,12

[State 10090, VarSetY1]
type = VarRandom
trigger1 = Time % 4=0
v = 7
range = -12,12

[State 10090, Sparkles]
type = Explod
trigger1 = Time % 4=0
anim = 11555
id = 11555
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10090, Die]
type = DestroySelf
trigger1 = screenpos y > 320
trigger2 = time = 100
trigger3 = MoveReversed
;---------------------------------------------------------------------------
;Kakusan Dan
[StateDef 10091]
type = A
physics = N
movetype = A
anim = 10092
ctrl = 0
sprpriority = 3
velset = 0,20

[State 10099, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.1

[State 10099, Flash]
type = Explod
trigger1 = !time
Anim = 13130
Pos = 160,-800
Id = 13130
velocity = 0,0
sprpriority = 5
removeongethit = 0
bindtime = 1
Postype = back
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.05, 0.05

[State 10099, ModifyExplod]
type = ModifyExplod
trigger1 = time
id = 13130
supermovetime = 9999
pausemovetime = 9999
scale = 0.05+fvar(1),0.05+fvar(1)

[State 10091, PlaySND]
type = PlaySnd
trigger1 = time=8
value = 2002,1
volume = 250

[State 10091, NotHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 10091, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 10091, Trans]
type = Trans
trigger1 = 1
trans = add

[State 10091, Explod_Ball]
type = Explod
trigger1 = screenpos y <= 340 && screenpos y >= -60
Anim = 10091
Pos = 0, 0
Id = 10091
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = 1
ownpal = 1
scale = 0.3, 0.3

[State 10091, HitDef]
type = HitDef
trigger1 = !time 
attr = S, HP
animtype  = Hard
Damage = floor(60*(1+parent,power/30000.0)),floor(12*(1+parent,power/30000.0))
hitflag = MAFD
guardflag = MA
guard.dist = 20
pausetime = 1,26
sparkno = 2
sparkxy = -20,0
hitsound   = S307,0
guardsound = 6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = 0, 10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = 0, 10
fall = 1
fall.recover = 0
getpower = 0
palfx.time = 50
palfx.add = 120,100,0
palfx.sinadd = -120,-100,-0, 160

[State 10091, Die]
type = ChangeState
trigger1 = pos y >= 0
trigeer2 = movecontact
trigger3 = time = 500
trigger4 = MoveReversed
value = 13101
;---------------------------------------------------------------------------
;Kakusan Dan (Kaskusan Kikou Hou)
[StateDef 10099]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 3
velset = 0,0

[State 2002, PlaySND]
type = PlaySnd
trigger1 = !time
value = 2002,0
volume = 100

[State 10099, Var1Random]
type = VarRandom
trigger1 = 1
v = 1
range = 0,15

[State 10099, KakusanKikouHa.Helper]
type = Helper
trigger1 = time%21=0
name = "KakusanDan_Rain1"
stateno = 10091
postype = p2
pos = 0, -900;20+floor(var(1)/4)*93, -1000
keyctrl = 0
ownpal = 1
id = 10091
sprpriority = 3
size.xscale = 0.8
size.yscale = 0.8

[State 10099, Die]
type = DestroySelf
trigger1 = time = 109
;---------------------------------------------------------------------------
;Ki Bubble
[StateDef 10100]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 10100
ctrl = 0
sprpriority = 3

[State 10100, BindToParent]
type = BindToParent
triggerall = parent,stateno!=1810
trigger1 = 1
time = 1
pos = -15,-36
[State 10100, BindToParent]
type = BindToParent
triggerall = parent,stateno=1810
trigger1 = 1
time = 1
pos = -13,-46

[State 10100, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10100, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10100, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10100, VarAdd-Scale]
type = VarAdd
trigger1 = 1
fv = 2
value = 0.055

[State 10100, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(2),fvar(2)

[State 10500, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 3
value = 0

[State 10500, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 10
v = 3
value = (time-10)*20

[State 10500, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -var(3),-var(3),-var(3)
persistent = 1
ignorehitpause = 1

[State 10100, Next]
type = DestroySelf
trigger1 = time = 20
;---------------------------------------------------------------------------
;Ki Bubble 2
[StateDef 10101]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 10100
ctrl = 0
sprpriority = 3

[State 10101, BindToParent]
type = BindToParent
triggerall = parent, stateno = [1100,1110]
trigger1 = 1
time = 1
pos = -15,-36

[State 10101, BindToParent]
type = BindToParent
triggerall = parent, stateno = [1150,1160]
trigger1 = 1
time = 1
pos = -13,-47

[State 10101, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10101, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10101, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10101, VarAdd-Scale]
type = VarAdd
trigger1 = 1
fv = 2
value = 0.035

[State 10101, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(2),fvar(2)

[State 10101, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 3
value = 0

[State 10101, VarAdd-PalFX]
type = VarAdd
trigger1 = time > 8
v = 3
value = (time-8)*32

[State 10101, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -var(3),-var(3),-var(3)
persistent = 1
ignorehitpause = 1

[State 10101, Next]
type = DestroySelf
trigger1 = time = 18
;---------------------------------------------------------------------------
;Ki Bubble
[StateDef 10102]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 12404
ctrl = 0
sprpriority = 3

[State 10102, BindToParent]
type = BindToParent
triggerall = parent,stateno!=1810
trigger1 = 1
time = 1
pos = -15,-36
[State 10102, BindToParent]
type = BindToParent
triggerall = parent,stateno=1810
trigger1 = 1
time = 1
pos = -13,-46

[State 10102, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10102, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10102, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10102, VarAdd-Scale]
type = VarAdd
trigger1 = 1
fv = 2
value = 0.05

[State 10102, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(2),fvar(2)

[State 10102, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 3
value = 0

[State 10102, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 10
v = 3
value = (time-10)*20

[State 10102, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -var(3),-var(3),-var(3)
persistent = 1
ignorehitpause = 1

[State 10102, Next]
type = DestroySelf
trigger1 = time = 20
;--------------------------------------------------------------------------------------
;Dash Lines-RunFwd [State 100 && 102]
[StateDef 10200]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10200, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 60

[State 10200, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 10,0

[State 10200, DashLine]
type = Explod
trigger1 = !(time%2)
Anim = 10200
Postype = p1
Pos = -45+floor(Var(10)*0.5), -var(10)
velocity = 1, 0
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.4,0.5

[State 10200, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10200, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10200, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 100 && parent, stateno != 102)
;--------------------------------------------------------------------------------------
;Dash Lines-RunBack [States 105 && 107]
[StateDef 10201]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10201, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 60

[State 10201, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -3,0

[State 10201, DashLine]
type = Explod
trigger1 = time%2
Anim = 10201
Postype = p1
Pos = 45-floor(Var(10)*0.5), -var(10)
velocity = -1, 0
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.4,0.5

[State 10201, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10201, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10201, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 105 && parent, stateno != 107)
;--------------------------------------------------------------------------------------
;Dash Lines-RunUp [State 109]
[StateDef 10205]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10205, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 30

[State 10205, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10205, DashLine]
type = Explod
trigger1 = !(time%2)
Anim = 10205
Postype = p1
Pos = -15+Var(10), 5-var(10)
velocity = 0, -1
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.5,0.4

[State 10205, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10205, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10205, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 109)
;--------------------------------------------------------------------------------------
;Dash Lines-SuperJump [State 41]
[StateDef 10206]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10206, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 30

[State 10206, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10206, DashLine]
type = Explod
trigger1 = time%2
Anim = 10205
Postype = p1
Pos = -15+Var(10), 5-var(10)
velocity = 0, -1
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.5,0.4

[State 10206, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10206, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10206, DestroySelf]
type = DestroySelf
trigger1 = time >= 12
;--------------------------------------------------------------------------------------
; AfterImage Aura - Original Code by Roken
[Statedef 10250]
type = U
movetype = U
physics = U
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0

[State 10250, VarSet-Parent State]
type = VarSet
trigger1 = !time
v = 1
value = parent, stateno

[State 10250, VarSet-Die_Timer-Init]
type = VarSet
trigger1 = !time
v = 3
value = 0
[State 10250, VarSet-Die_Timer]
type = VarAdd
trigger1 = var(3)>0
v = 3
value = 1
[State 10250, VarSet-Die_Timer-Start]
type = VarSet
triggerall = var(3) = 0
trigger1 = parent,stateno != var(1) || parent,var(38)=0
v = 3
value = 1

[State 10250, VarSet-StopSpawningImages-Init]
type = VarSet
trigger1 = !time
v = 9
value = 0
[State 10250, VarSet-StopSpawningImages]
type = VarSet
trigger1 = parent, var(38) > 0 && var(9) = 0
v = 9
value = 1

[State 10250, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 10250, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 10250, Turn]
type = Turn
trigger1 = facing!=parent,facing
ignorehitpause = 1

[State 10250, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -3+random%5,-3+random%6
ignorehitpause = 1

[State 10250, AfterImage]
type = AfterImage
triggerall = (parent, stateno != [1800,1813])
trigger1 = !time
time = 30
length = 15
palcolor = 8
palbright = 0,-55,-155
palcontrast = 128,128,128
palmul = 0.60,0.60,0.60
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10250, AfterImage]
type = AfterImage
triggerall = (parent, stateno = [1800,1813])
trigger1 = !time
time = 30
length = 15
palcolor = 8
palbright = 0,5,40
palcontrast = 128,128,128
palmul = 0.80,0.80,0.80
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10250, AfterImageTime]
type = AfterImageTime
trigger1 = 1 && var(3)=0
time = 2
ignorehitpause = 1

[State 10250, ChangeAnim]
type = ChangeAnim
trigger1 = selfanimexist(parent,anim)
value = parent,anim
elem = parent,animelemno(0)

[State 10250, DestroySelf]
type = DestroySelf
trigger1 = var(3)>=10
;--------------------------------------------------------------------------------------
; AfterImage Aura 2
[Statedef 10251]
type = U
movetype = U
physics = U
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0

[State 10251, VarSet-Parent State]
type = VarSet
trigger1 = !time
v = 1
value = parent, stateno
[State 10251, VarSet-Die_Timer-Init]
type = VarSet
trigger1 = !time
v = 3
value = 0
[State 10251, VarSet-Die_Timer]
type = VarAdd
trigger1 = var(3)>0
v = 3
value = 1
[State 10251, VarSet-Die_Timer-Start]
type = VarSet
triggerall = var(3) = 0
trigger1 = parent,stateno != var(1) || parent,var(38)=0
v = 3
value = 1
[State 10251, VarSet-StopSpawningImages-Init]
type = VarSet
trigger1 = !time
v = 9
value = 0
[State 10251, VarSet-StopSpawningImages]
type = VarSet
trigger1 = parent, var(38) > 0 && var(9) = 0
v = 9
value = 1

[State 10251, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 10251, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 10251, Turn]
type = Turn
trigger1 = facing!=parent,facing
ignorehitpause = 1

[State 10251, BindToParent]
type =BindToParent
trigger1 =1
time =1
pos =random%3,-3+random%6
ignorehitpause =1
supermovetime = 9999
pausemovetime = 9999

[State 10251, AfterImage]
type = AfterImage
triggerall = (parent, stateno != [1800,1813])
trigger1 = time%2=0
time = 30
length = 15
palcolor = 8
palbright = 0,-55,-155
palcontrast = 128,128,128
palmul = 0.60,0.60,0.60
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10250, AfterImage]
type = AfterImage
triggerall = (parent, stateno = [1800,1813])
trigger1 = time%2=0
time = 30
length = 15
palcolor = 8
palbright = 0,5,40
palcontrast = 128,128,128
palmul = 0.80,0.80,0.80
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10251, AfterImageTime]
type = AfterImageTime
trigger1 = 1 && var(3)=0
time = 2
ignorehitpause = 1

[State 10251, ChangeAnim]
type = ChangeAnim
trigger1 = selfanimexist(parent,anim)
value = parent,anim
elem = parent,animelemno(0)

[State 10251, DestroySelf]
type = DestroySelf
trigger1 = var(3)>=10
;--------------------------------------------------------------------------------------
; AfterImage Aura - For use in Ki SHot Helper
[Statedef 10252]
type = U
movetype = U
physics = U
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0

[State 10252, VarSet-Parent State]
type = VarSet
trigger1 = !time
v = 1
value = parent, stateno

[State 10252, VarSet-Die_Timer-Init]
type = VarSet
trigger1 = !time
v = 3
value = 0
[State 10252, VarSet-Die_Timer]
type = VarAdd
trigger1 = var(3)>0
v = 3
value = 1
[State 10252, VarSet-Die_Timer-Start]
type = VarSet
triggerall = var(3) = 0
trigger1 = parent,stateno != var(1) || parent,var(38)=0
v = 3
value = 1

[State 10252, VarSet-StopSpawningImages-Init]
type = VarSet
trigger1 = !time
v = 9
value = 0
[State 10252, VarSet-StopSpawningImages]
type = VarSet
trigger1 = parent, var(38) > 0 && var(9) = 0
v = 9
value = 1

[State 10252, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 10252, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 10252, Turn]
type = Turn
trigger1 = facing!=parent,facing
ignorehitpause = 1

[State 10252, BindToParent]
type = BindToParent
trigger1 = frontedgebodydist > -30
time = 1
pos = -3+random%5,-3+random%6
ignorehitpause = 1

[State 10252, AfterImage: Yellow]
type = AfterImage
triggerall = palno%2=1
trigger1 = !time
time = 30
length = 15
palcolor = 8
palbright = 0,0,0;Flame Effect: 0,-55,-155
palcontrast = 128,128,64;Flame Effect: 128,128,128 
palmul = 0.60,0.60,0.60;you can do some pretty neat looking stuff with these 3 settings.
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10252, AfterImage: Blue]
type = AfterImage
triggerall = palno%2=0
trigger1 = !time
time = 30
length = 15
palcolor = 8
palbright = 0,0,0
palcontrast = 64,64,64
palmul = 0.40,0.40,0.60
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10252, Remove_This-Testing_the_full_Length_and_girth]
type = null;AfterImage
trigger1 = !time
time = 30
length = 15
palcolor = 256
palbright = 0,0,0
palcontrast = 128,128,128
postpalbright = -30,0,0
paladd = 0,0,0
palmul = 1.0,1.0,1.0
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10252, AfterImageTime]
type = AfterImageTime
trigger1 = 1 && var(3)=0
time = 2
ignorehitpause = 1

[State 10252, ChangeAnim]
type = ChangeAnim
trigger1 = selfanimexist(parent,anim)
value = parent,anim
elem = parent,animelemno(0)

[State 10252, DestroySelf]
type = DestroySelf
trigger1 = var(3)>=10 || frontedgebodydist < -30
;--------------------------------------------------------------------------------------
; Pulse AfterImage Aura
[Statedef 10260]
type = U
movetype = U
physics = U
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0

[State 10260, VarSet-ParentState]
type = VarSet
trigger1 = !time
v = 1
value = parent, stateno

[State 10260, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 10260, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 10260, Turn]
type = Turn
trigger1 = facing!=parent,facing
ignorehitpause = 1

[State 10260, BindToParent]
type = BindToParent
trigger1 = !time
time = 1
pos = -2+random%5,-2+random%5
ignorehitpause = 1

[State 10260, AfterImage]
type = AfterImage
trigger1 = time%2
time = 2
length = 2
;palbright = -64,-64,-64
palcontrast = 128,128,128
palmul = 0.80,0.80,0.80
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10260, ChangeAnim]
type = ChangeAnim
trigger1 = selfanimexist(parent,anim)
value = parent,anim
elem = parent,animelemno(0)

[State 10260, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1.0+(time*0.02),1.0+(time*0.02)

[State 10260, PalFX.Var]
type = VarSet
trigger1 = !time
v = 10
value = 0
[State 10260, PalFX.VarAdd]
type = VarSet
trigger1 = time
v = 10
value = -25
[State 10260, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(10),var(10),var(10)
persistent = 1
ignorehitpause = 1

[State 10260, DestroySelf]
type = DestroySelf
trigger1 = time>=16
;---------------------------------------------------------------------------
;Deflect Barrier
[StateDef 11100]
type = A
physics = N
movetype = A
ctrl = 0
anim = 11100

[State 11100, BindToParent]
type = BindToParent
trigger1 = 1
pos = 30, -39

[State 11100, NoHit]
type = NotHitBy
trigger1 = 1
value =  ,HP, NT, ST, HT, NA, SA, HA
time = 1

[State 11100, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NP, SP
stateno = 11101
slot = 1

[State 11101, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = unguardable
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1

[State 11100, Hitdef]
type = HitDef
trigger1 = 1
attr = S, NP
animtype  = Hard
Damage = 1,1
hitflag = P
guardflag = MA
guard.dist = 1
pausetime = 1,12
sparkno = -1
sparkxy = 0,0
hitsound   = S1156,0
guardsound = S1156,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -9, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -9, -5
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
id = 11100
nochainid = 11100
p1sprpriority = 1

[State 11100, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != [340,345])

[State 11100, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 11101
;---------------------------------------------------------------------------
;Ki Barrier Get Hit
[StateDef 11101]
type = A
physics = N
movetype = I
ctrl = 0

[State 11101, BindToParent]
type = BindToParent
trigger1 = 1
pos = 30, -39

[State 11101, RemoveExplod]
type = RemoveExplod
trigger1 = !time
ID = 11105

[State 11101, Deflect.Explod]
type = Explod
trigger1 = !time
Anim = 11105
Pos = 0,0
Id = 11105
sprpriority = 2
removeongethit = 1
Postype = p1
Bindtime = -1
ownpal = 1
scale = 0.5, 0.5

[State 11101, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NP, SP
stateno = 11101
slot = 2

[State 11101, ChangeState]
type = ChangeState
trigger1 = time = 1
value = 11100

[State 11101, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != [340,345]) 
;---------------------------------------------------------------------------
;Air Dash Upwards Effect: Used in States [109]
[StateDef 11609]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 11600
ctrl = 0
sprpriority = 2
poweradd = 0

[State 11609, Trans]
type = Trans
trigger1 = 1
trans = add

[State 11609, AngleSet]
type = AngleSet
trigger1 = !time
value = 90

[State 11609, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11609, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Solar Flare
[StateDef 12000]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12000
ctrl = 0
sprpriority = 3

[State 12000, Flash_Rays]
type = Explod
trigger1 = !time
Anim = 12001
Pos = 0,0
Id = 12001
sprpriority = 4
removeongethit = 1
Postype = p1
Bindtime = -1
ownpal = 1
scale = 0.75, 0.75

[State 12000, FVarAdd]
type = VarAdd
trigger1 = time < 30
fv = 1
value = 0.05

[State 12000, Flash]
type = Explod
trigger1 = !time
Anim = 13132
Pos = 0,0
Id = 13132
sprpriority = 4
bindtime = 1
Postype = p1
persistent = 0
ownpal = 1
scale = 0.01, 0.01
supermovetime = 9999
pausemovetime = 9999
ontop = 1

[State 12000, ModifyExplod]
type = ModifyExplod
trigger1 = time
id = 13132
scale = 0.01+fvar(1),0.01+fvar(1)
supermovetime = 9999
pausemovetime = 9999

[State 12000, HitDef]
type = HitDef
trigger1 = !Time
attr = S, SP
animtype  = Light
damage    = 0
hitflag = MA
guardflag = MA
getpower = 0
pausetime = 0,110
guard.pausetime = 0,10
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
air.velocity = -6,0
palfx.time = 110
palfx.sinadd = 120,120,120, 220

[State 12000, Next]
type = DestroySelf
trigger1 = time = 100
trigger2 = MoveReversed
;---------------------------------------------------------------------------
;Ki Shot-old (fireball style): 1000
[StateDef 12150]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12150
ctrl = 0
sprpriority = 3

[State 12150, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 12150, VarSet]
type = VarRandom
trigger1 = !time
v = 5
range = -6,6

[State 12150, VelSet]
type = VelSet
trigger1 = !time
x = 8
y = -(var(5)/12.0)

[State 12150, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12150, AfterImage]
type = AfterImage
trigger1 = !time
time = 60
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 64,64,64
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12150, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12150, HitDef]
type = HitDef
trigger1 = !time 
attr = S, SP
animtype  = Light
Damage = floor(10*(1+parent,power/30000.0)),floor(2*(1+parent,power/30000.0))
hitflag = MAFD
guardflag = MA
pausetime = 1,14
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -4
getpower = 0
givepower = 0
palfx.time = 30
palfx.add = 90,80,0
palfx.sinadd = -90,-80,0, 100

[State 12150, VarSet]
type = VarRandom
trigger1 = Time % 3=0
v = 23
range = -12,0

[State 12150, VarSet2]
type = VarRandom
trigger1 = Time % 3=0
v = 24
range = -5,5

[State 12150, Sparkles]
type = Explod
trigger1 = Time % 3=0 && !movecontact
anim = ifelse(random>300,11555,11559)
id = 11550
postype = p1
pos = var(23), var(24)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0
ownpal = 1
scale = 0.15, 0.15
sprpriority = 3

[State 12150, Next]
type = Changestate
trigger1 = Movecontact
trigger2 = MoveReversed
value = 13000

[State 12150, DestroySelf]
type = DestroySelf
trigger1 = time = 50
trigger2 = frontedgebodydist < -40
;---------------------------------------------------------------------------
;Ki Shot (sphere style): 1000
[StateDef 12151]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12157;12155
ctrl = 0
sprpriority = 3

[State 12151, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 12151, VarSet]
type = VarRandom
trigger1 = !time
v = 5
range = -6,6

[State 12151, VelSet]
type = VelSet
trigger1 = !time
x = 9.0
y = 0

[State 12151, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12151, AfterImage.Helper]
type = Helper
trigger1 = !movecontact && frontedgebodydist > -10
helpertype = normal
name = "AfterImage Aura"
ID = 10252
stateno = 10252
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12151, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12151, HitDef]
type = HitDef
trigger1 = !time 
attr = S, NP
animtype  = Light
Damage = floor(10*(1+parent,power/30000.0)),floor(2*(1+parent,power/30000.0))
hitflag = MAFD
guardflag = MA
pausetime = 1,14
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -4
getpower = 0
givepower = 0
palfx.time = 30
palfx.add = 90,80,0
palfx.sinadd = -90,-80,0, 100

[State 12151, Next]
type = Changestate
trigger1 = Movecontact
trigger2 = MoveReversed
value = 13000

[State 12151, DestroySelf]
type = DestroySelf
trigger1 = time = 400
trigger2 = frontedgebodydist < -90
;---------------------------------------------------------------------------
;Mini-Ki Shot (sphere style): 1000
[StateDef 12155]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12158+(palno%2)
ctrl = 0
sprpriority = 3

[State 12155, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 12155, VarSet-VelRandom]
type = VarRandom
trigger1 = !time
v = 1
range = -20,20

[State 12155, VelSet]
type = VelSet
trigger1 = !time
x = 3.0+(var(1)*0.1)
y = 4.75-(var(1)*0.1)

[State 12155, AngleSet]
type = AngleSet
trigger1 = !time
value = (Atan((-(vel y) / (vel x)))*(180.0 / Pi))
[State 12155, AngleDraw]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1

[State 12155, Trans]
type = Trans
trigger1 = 1
trans = add

[State 2600, AfterImage]
type = AfterImage
trigger1 = !time
time = 32
length = 6
palinvertall = 0
palbright = 0,0,0
palcontrast = 64,64,64
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12155, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12155, HitDef]
type = HitDef
trigger1 = !time 
attr = S, SP
animtype  = Light
Damage = floor(5*(1+parent,power/30000.0)),floor(1*(1+parent,power/30000.0))
hitflag = MAFD
guardflag = MA
pausetime = 1,8
sparkno = -1
sparkxy = 0,0
hitsound   = -1;S1100,0
guardsound = -1;S1100,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4, 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -4, -2
getpower = 0
givepower = 0
palfx.time = 30
palfx.add = 90,80,0
palfx.sinadd = -90,-80,0, 100

[State 12155, Next-Hit]
type = Changestate
trigger1 = Movecontact
trigger2 = MoveReversed
value = 13002
[State 12155, Next-HitGround]
type = Changestate
trigger1 = pos y >= 0
value = 13002

[State 12155, DestroySelf]
type = DestroySelf
trigger1 = time = 200
trigger2 = frontedgebodydist < -90
;-----------------------------------------------------------------------------------------------------
;Destructo Disc
[StateDef 12200]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12200
ctrl = 0
sprpriority = 3

[State 12200, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12200, BindToParent]
type = BindToParent
triggerall = parent, stateno = 1050
trigger1 = parent, animelem = 2,<0
time = 1
pos = -26,-55

[State 12200, BindToParent]
type = BindToParent
triggerall = parent, stateno = 1050
trigger1 = parent, animelem = 2,=0
time = 1
pos = -1,-45

[State 12200, BindToParent]
type = BindToParent
triggerall = parent, stateno = 1050
trigger1 = parent, animelem = 2,=1
time = 1
pos = 24,-35

[State 12200, FVarSet]
Type = VarAdd
Trigger1 = time < 10
fv= 17
value = 0.1

[State 12200, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(17),fvar(17)

[State 12202, AfterImage]
type = AfterImage
trigger1 = !time
time = 99
length = 10
palinvertall = 0
palbright = 8,8,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12200, VelSet]
type = VelSet
trigger1 = parent, animelem = 2,=1
x = 12
y = 5-(parent,var(14))

[State 12200, VelAdd]
type = VelAdd
triggerall = parent, var(14)=3
trigger1 = parent, animelem = 2,>=1
y = -0.05
[State 12200, VelAdd]
type = VelAdd
triggerall = parent, var(14)=4
trigger1 = parent, animelem = 2,>=1
y = -0.125
[State 12200, VelAdd]
type = VelAdd
triggerall = parent, var(14)=5
trigger1 = parent, animelem = 2,>=1
y = -0.20

[State 12200, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12200, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12200, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = Hard
Damage = floor(75*(1+parent,power/30000.0)),floor(25*(1+parent,power/30000.0))
hitflag = MAFDP
guardflag = MA
pausetime = 3,15
sparkno = S12205
sparkxy = 0,0
hitsound   = S1052,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -8, -3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -3
fall = 1
fall.recover = 1
p1sprpriority = 3
getpower = 0

[State 12220, VarSet]
type = VarRandom
trigger1 = Time % 2=0
v = 23
range = -15,15

[State 12220, VarSet2]
type = VarRandom
trigger1 = Time % 2=0
v = 24
range = -5,5

[State 12220, VarSet3]
type = VarRandom
trigger1 = Time % 2=0
v = 25
range = 15,25

[State 12220, Sparkles]
type = Explod
trigger1 = Time % 2=0 && !movecontact
anim = 11555
id = 11550
postype = p1
pos = var(23), var(24)
vel = (vel x)*0.25, (vel y)*0.25
accel = 0, 0
ownpal = 1
scale = var(25)*0.01, var(25)*0.01
sprpriority = 3

[State 12200, DestroySelf]
type = DestroySelf
trigger1 = time = 62
trigger2 = (parent,stateno!=1050) && Vel X <= 1
trigger3 = frontedgebodydist < -70
trigger4 = MoveReversed
;---------------------------------------------------------------------------
;Destructo Disc Mid
[StateDef 12201]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12201
ctrl = 0
sprpriority = 3

[State 12201, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12201, BindToParent]
type = BindToParent
triggerall = parent,stateno=1050
trigger1 = parent, animelem = 2,<0
time = 1
pos = -26,-55

[State 12201, BindToParent]
type = BindToParent
triggerall = parent,stateno=1050
trigger1 = parent, animelem = 2,=0
time = 1
pos = -1,-45

[State 12201, BindToParent]
type = BindToParent
triggerall = parent,stateno=1050
trigger1 = parent, animelem = 2,=1
time = 1
pos = 24,-35

[State 12201, FVarSet]
Type = VarAdd
Trigger1 = time < 10
fv= 17
value = 0.1

[State 12201, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(17),fvar(17)

[State 12202, AfterImage]
type = AfterImage
trigger1 = !time
time = 99
length = 10
palinvertall = 0
palbright = 8,8,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12201, VelSet]
type = VelSet
trigger1 = parent, animelem = 2,>=1
x = 12
y = 1

[State 12201, VelAdd]
type = VelAdd
trigger1 = parent, animelem = 2,>=1
y = -0.25

[State 12201, VelSet]
type = VelSet
trigger1 = parent, animelem = 2,>=1
y = -2

[State 12201, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12201, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12201, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = Hard
Damage = floor(75*(1+parent,power/30000.0)),floor(25*(1+parent,power/30000.0))
hitflag = MAFDP
guardflag = MA
pausetime = 3,15
sparkno = S12205
sparkxy = 0,0
hitsound   = S1052,0
guardsound = 6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -8, -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -2
fall = 1
fall.recover = 1
p1sprpriority = 3
getpower = 0

[State 12201, DestroySelf]
type = DestroySelf
trigger1 = time = 62
trigger2 = (parent,stateno!=[1050,1052]) && Vel X <= 1
trigger3 = frontedgebodydist < -70
trigger4 = MoveReversed
;---------------------------------------------------------------------------
;Destructo Disc
[StateDef 12202]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12200
ctrl = 0
sprpriority = 3

[State 12202, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12202, BindToParent]
type = BindToParent
triggerall = parent, stateno = 1050
trigger1 = parent, animelem = 2,<0
time = 1
pos = -26,-55

[State 12202, BindToParent]
type = BindToParent
triggerall = parent, stateno = 1050
trigger1 = parent, animelem = 2,=0
time = 1
pos = -1,-45

[State 12202, BindToParent]
type = BindToParent
triggerall = parent, stateno = 1050
trigger1 = parent, animelem = 2,=1
time = 1
pos = 24,-35

[State 12202, FVarSet]
Type = VarAdd
Trigger1 = time < 10
fv= 17
value = 0.09

[State 12202, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(17),fvar(17)

[State 12202, AfterImage]
type = AfterImage
trigger1 = !time
time = 128
length = 10
palinvertall = 0
palbright = 8,8,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12202, VelSet]
type = VelSet
trigger1 = parent, animelem = 2,=1
x = 12
y = 2

;[State 12202, VelAdd]
;type = VelAdd
;trigger1 = parent, animelem = 2,>=1
;y = -0.10

[State 12202, VelAdd]
type = VelAdd
triggerall = parent, var(14)=3
trigger1 = parent, animelem = 2,>=1
y = -0.085
[State 12202, VelAdd]
type = VelAdd
triggerall = parent, var(14)=4
trigger1 = parent, animelem = 2,>=1
y = -0.105
[State 12202, VelAdd]
type = VelAdd
triggerall = parent, var(14)=5
trigger1 = parent, animelem = 2,>=1
y = -0.125
[State 12202, VelAdd.Default]
type = VelAdd
triggerall = parent, var(14)!=[3,5]
trigger1 = parent, animelem = 2,>=1
y = -0.105

[State 12202, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12202, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12202, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = Hard
Damage = floor(75*(1+parent,power/30000.0)),floor(25*(1+parent,power/30000.0))
hitflag = MAFDP
guardflag = MA
pausetime = 3,15
sparkno = S12205
sparkxy = 0,0
hitsound   = S1052,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -8, -3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -3
fall = 1
fall.recover = 1
p1sprpriority = 3
getpower = 0

[State 12220, VarSet]
type = VarRandom
trigger1 = Time % 2=0
v = 23
range = -15,15

[State 12220, VarSet2]
type = VarRandom
trigger1 = Time % 2=0
v = 24
range = -5,5

[State 12220, VarSet3]
type = VarRandom
trigger1 = Time % 2=0
v = 25
range = 15,25

[State 12220, Sparkles]
type = Explod
trigger1 = Time % 2=0 && !movecontact
anim = 11555
id = 11550
postype = p1
pos = var(23), var(24)
vel = (vel x)*0.25, (vel y)*0.25
accel = 0, 0
ownpal = 1
scale = var(25)*0.01, var(25)*0.01
sprpriority = 3

[State 12202, DestroySelf]
type = DestroySelf
trigger1 = time = 400
trigger2 = (parent,stateno!=1050) && Vel X <= 1
trigger3 = frontedgebodydist < -90
trigger4 = MoveReversed
;---------------------------------------------------------------------------
;Destrcuto Disc Charge
[StateDef 12205]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 3

[State 12205, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -26,-55

[State 12205, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -50,50
ignorehitpause = 1

[State 12205, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -50,50
ignorehitpause = 1

[State 12205, VarSet3]
type = VarRandom
trigger1 = 1
v = 25
range = 2,25
ignorehitpause = 1

[State 12205, Particles]
type = Explod
trigger1 = time < 36
anim = 10053
id = 10050
postype = p1
pos = var(23), var(24)
vel = -var(23)*0.0625, -var(24)*0.0625
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12205, VarSetA]
type = VarRandom
trigger1 = 1
v = 26
range = -80,80
ignorehitpause = 1

[State 12205, VarSetB]
type = VarRandom
trigger1 = 1
v = 27
range = -80,80
ignorehitpause = 1

[State 12205, VarSetC]
type = VarRandom
trigger1 = 1
v = 28
range = 2,25
ignorehitpause = 1

[State 12205, Particles]
type = Explod
trigger1 = time < 26
anim = 10053
id = 10050
postype = p1
pos = var(26), var(27)
vel = -var(26)*0.0475, -var(27)*0.0475
scale = var(28)*0.0025, var(28)*0.0025
sprpriority = 3
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12205, Next]
type = DestroySelf
trigger1 = time = 36
;---------------------------------------------------------------------------
;Super Destructo Disc 1
[StateDef 12210]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12210
ctrl = 0
sprpriority = 3

[State 12210, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12210, BindToParent]
type = BindToParent
trigger1 = parent, stateno = 2100
time = 1
pos = -26,-55
[State 12210, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2101
trigger1 = (parent, animelem = 2,<0)
time = 1
pos = -24,-54
[State 12210, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2101
trigger1 = (parent, animelem = 2,>=0&&parent, animelem = 3,<0)
time = 1
pos = -15,-52
[State 12210, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2101
trigger1 = parent, animelem = 3,=0
time = 1
pos = 5,-44
[State 12210, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2101
trigger1 = parent, animelem = 3,=1
time = 1
pos = 24,-35

[State 12210, FVarSet]
Type = VarAdd
Trigger1 = time < 10
fv= 17
value = 0.1

[State 12210, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(17),fvar(17)

[State 12210, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 128
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12210, VelSet]
type = VelSet
trigger1 = parent, animelem = 3,>=1 && (vel X < 1.0)
x = 12
y = 2.25

[State 12210, VelAdd]
type = VelAdd
trigger1 = parent, animelem = 3,>=1
y = -0.22

[State 12210, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12210, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12210, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12210, HitDef]
type = HitDef
trigger1 = !time
attr = S, HP
animtype  = Hard
Damage = floor(90*(1+parent,power/30000.0)),floor(33*(1+parent,power/30000.0))
hitflag = MAFDP
guardflag = MA
pausetime = 3,21
sparkno = S12205
sparkxy = 0,0
hitsound   = S1052,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -4
air.fall = 1
fall.recover = 0
p1sprpriority = 3
getpower = 0

[State 12210, VarSet]
type = VarRandom
trigger1 = Time % 2=0
v = 23
range = -20,20

[State 12210, VarSet2]
type = VarRandom
trigger1 = Time % 2=0
v = 24
range = -6,6

[State 12210, VarSet3]
type = VarRandom
trigger1 = Time % 2=0
v = 25
range = 15,25

[State 12210, Sparkles]
type = Explod
trigger1 = Time % 2=0 && !movecontact
anim = 11555
id = 11550
postype = p1
pos = var(23), var(24)
vel = (vel x)*0.25, (vel y)*0.25
accel = 0, 0
ownpal = 1
scale = var(25)*0.01, var(25)*0.01
sprpriority = 3

[State 12210, DestroySelf]
type = DestroySelf
trigger1 = time = 4000
trigger2 = (parent,stateno!=[2100,2103]) && Vel X <= 1
trigger3 = frontedgebodydist < -90
trigger4 = MoveReversed
;---------------------------------------------------------------------------
;Super Destructo Disc 2
[StateDef 12211]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12210
ctrl = 0
sprpriority = 3

[State 12211, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12211, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2102
trigger1 = (parent, animelem = 2,<0)
time = 1
pos = -10,-60
[State 12211, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2102
trigger1 = (parent, animelem = 2,>=0&&parent, animelem = 3,<0)
time = 1
pos = -4,-58
[State 12211, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2102
trigger1 = parent, animelem = 3,=0
time = 1
pos = 12,-45
[State 12211, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2102
trigger1 = parent, animelem = 3,=1
time = 1
pos = 24,-35

[State 12211, FVarSet]
Type = VarAdd
Trigger1 = time < 10
fv= 17
value = 0.1

[State 12211, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(17),fvar(17)

[State 12211, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 128
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12211, VelSet]
type = VelSet
trigger1 = parent, animelem = 3,>=1 && (vel X < 1.0)
x = 12
y = 2.25
[State 12211, VelAdd]
type = VelAdd
trigger1 = parent, animelem = 3,>=1
y = -0.16

[State 12211, VelSet]
type = null;VelSet
trigger1 = parent, animelem = 3,>=1 && (vel X < 1.0)
x = 12
y = 3.6
[State 12211, VelAdd]
type = null;VelAdd
trigger1 = parent, animelem = 3,>=1
y = -0.2

[State 12211, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12211, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12211, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12211, HitDef]
type = HitDef
trigger1 = !time
attr = S, HP
animtype  = Hard
Damage = floor(90*(1+parent,power/30000.0)),floor(33*(1+parent,power/30000.0))
hitflag = MAFDP
guardflag = MA
pausetime = 3,21
sparkno = S12205
sparkxy = 0,0
hitsound   = S1052,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -4
air.fall = 1
fall.recover = 0
p1sprpriority = 3
getpower = 0

[State 12211, VarSet]
type = VarRandom
trigger1 = Time % 2=0
v = 23
range = -20,20

[State 12211, VarSet2]
type = VarRandom
trigger1 = Time % 2=0
v = 24
range = -6,6

[State 12211, VarSet3]
type = VarRandom
trigger1 = Time % 2=0
v = 25
range = 15,25

[State 12211, Sparkles]
type = Explod
trigger1 = Time % 2=0 && !movecontact
anim = 11555
id = 11550
postype = p1
pos = var(23), var(24)
vel = (vel x)*0.25, (vel y)*0.25
accel = 0, 0
ownpal = 1
scale = var(25)*0.01, var(25)*0.01
sprpriority = 3

[State 12211, DestroySelf]
type = DestroySelf
trigger1 = time = 400
trigger2 = (parent,stateno!=[2100,2103]) && Vel X <= 1
trigger3 = frontedgebodydist < -90
trigger4 = MoveReversed
;---------------------------------------------------------------------------
;Super Destructo Disc 3
[StateDef 12212]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12210
ctrl = 0
sprpriority = 3

[State 12212, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12210, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2103
trigger1 = (parent, animelem = 2,<0)
time = 1
pos = -21,-54
[State 12212, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2103
trigger1 = (parent, animelem = 2,>=0&&parent, animelem = 3,<0)
time = 1
pos = -13,-52
[State 12212, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2103
trigger1 = parent, animelem = 3,=0
time = 1
pos = 5,-47
[State 12212, BindToParent]
type = BindToParent
triggerall = parent, stateno = 2103
trigger1 = parent, animelem = 3,=1
time = 1
pos = 24,-38

[State 12212, FVarSet]
Type = VarAdd
Trigger1 = time < 10
fv= 17
value = 0.1

[State 12212, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(17),fvar(17)

[State 12212, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 128
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12212, VelSet]
type = VelSet
trigger1 = parent, animelem = 3,>=1 && (vel X < 1.0)
x = 12
y = 2.25
[State 12212, VelAdd]
type = VelAdd
trigger1 = parent, animelem = 3,>=1
y = -0.10

[State 12212, VelSet]
type = null;VelSet
trigger1 = parent, animelem = 3,>=1 && (vel X < 1.0)
x = 12
y = 1.5
[State 12212, VelAdd]
type = null;VelAdd
trigger1 = parent, animelem = 3,>=1
y = -0.175

[State 12212, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12212, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12212, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12212, HitDef]
type = HitDef
trigger1 = !time
attr = S, HP
animtype  = Hard
Damage = floor(90*(1+parent,power/30000.0)),floor(33*(1+parent,power/30000.0))
hitflag = MAFDP
guardflag = MA
pausetime = 3,17
sparkno = S12205
sparkxy = 0,0
hitsound   = S1052,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -8, -6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -6
fall = 1
fall.recover = 0
p1sprpriority = 3
getpower = 0

[State 12212, VarSet]
type = VarRandom
trigger1 = Time % 2=0
v = 23
range = -20,20

[State 12212, VarSet2]
type = VarRandom
trigger1 = Time % 2=0
v = 24
range = -6,6

[State 12212, VarSet3]
type = VarRandom
trigger1 = Time % 2=0
v = 25
range = 15,25

[State 12212, Sparkles]
type = Explod
trigger1 = Time % 2=0 && !movecontact
anim = 11555
id = 11550
postype = p1
pos = var(23), var(24)
vel = (vel x)*0.25, (vel y)*0.25
accel = 0, 0
ownpal = 1
scale = var(25)*0.01, var(25)*0.01
sprpriority = 3

[State 12212, DestroySelf]
type = DestroySelf
trigger1 = time = 400
trigger2 = (parent,stateno!=[2100,2103]) && Vel X <= 1
trigger3 = frontedgebodydist < -90
trigger4 = MoveReversed
;---------------------------------------------------------------------------
;KHH Blast : Used in State 1100
[StateDef 12300]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12300
ctrl = 0
sprpriority = 3

[State 12300, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 12300, VarSet]
type = VarRandom
triggerall = parent, stateno = [1100,1101]
trigger1 = !time
v = 5
range = -2,2

[State 12300, VarSet]
type = VarRandom
triggerall = parent, stateno = [1102,1103]
trigger1 = !time
v = 5
range = -2,2

[State 12300, VarSet]
type = VarRandom
triggerall = parent, stateno = [1104,1105]
trigger1 = !time
v = 5
range = -2,2

[State 12300, AngleSet]
type = AngleSet
trigger1 = !time
value = 35+var(5)

[State 12300, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12300, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12300, AfterImage]
type = AfterImage
trigger1 = !time
time = 128
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 64,64,64
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12300, KHH_Blast]
type = VelSet
trigger1 = !time
x = 6-(var(5)/4.0)
y = -4-(var(5)/5.0)

[State 12300, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12300, HitDef]
type = HitDef
trigger1 = !time 
attr = S, SP
animtype  = Hard
Damage = floor(30*(1+parent,power/30000.0)),floor(6*(1+parent,power/30000.0))
hitflag = MAFD
guardflag = MA
pausetime = 1,14
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -6, -5.8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -6, -5.8
air.fall = 1
getpower = 0
palfx.time = 30
palfx.add = 0,50,150
palfx.sinadd = 0,-50,-150, 110

[State 12300, VarSet]
type = VarRandom
trigger1 = Time % 2
v = 23
range = -10,15

[State 12300, VarSet2]
type = VarRandom
trigger1 = Time % 2
v = 24
range = -15,10

[State 12300, Sparkles]
type = Explod
trigger1 = Time % 2 && !movecontact
anim = ifelse(random>500,11550,11559)
id = 11550
postype = p1
pos = var(23), var(24)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12300, Next]
type = Changestate
trigger1 = Movecontact
value = 12305

[State 12300, DestroySelf]
type = DestroySelf
trigger1 = time = 400
trigger2 = frontedgebodydist < -90
trigger3 = MoveReversed
;---------------------------------------------------------------------------
;KHH Blast Contact
[StateDef 12305]
type = A
physics = N
movetype = I
velset = (vel x)*0.1, (vel y)*0.1
anim = 12307+(random%2)
ctrl = 0
sprpriority = 3

[State 12305, Shockwave]
type = Explod
trigger1 = time = 4
anim = 13120
id = 13120
postype = p1
pos = 5, -5
scale = 0.75,0.75
sprpriority = 3
ownpal = 1

[State 12305, Sound]
type = PlaySnd
trigger1 = !time
value = 1110, 0
volume = 100

[State 12305, AngleSet]
type = AngleSet
trigger1 = !time
value = ifelse(prevstateno!=12310,35,-35)

[State 12305, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12305, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12305, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 12305, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12305, VarSet]
type = VarRandom
trigger1 = Time % 2
v = 23
range = -15,15

[State 12305, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -15,15

[State 12305, VarSet2]
type = VarRandom
trigger1 = 1
v = 25
range = 1,25

[State 12305, Particles]
type = Explod
trigger1 = time < 13
anim = 10070+(random%4)
id = 10070
postype = p1
pos = var(23), var(24)
vel = var(23)*0.3, -abs(var(24)*0.3)
accel = 0, 0.4
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3

[State 12305, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;KHH Blast : Used in State 1100
[StateDef 12310]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12310
ctrl = 0
sprpriority = 3

[State 12310, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 12310, VarSet]
type = VarRandom
triggerall = parent, stateno = [1150,1151]
trigger1 = !time
v = 5
range = -2,2

[State 12310, VarSet]
type = VarRandom
triggerall = parent, stateno = [1152,1153]
trigger1 = !time
v = 5
range = -2,2

[State 12310, VarSet]
type = VarRandom
triggerall = parent, stateno = [1154,1155]
trigger1 = !time
v = 5
range = -2,2

[State 12310, AngleSet]
type = AngleSet
trigger1 = !time
value = -35-var(5)

[State 12310, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12310, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12310, AfterImage]
type = AfterImage
trigger1 = !time
time = 128
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 64,64,64
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12310, KHH_Blast]
type = VelSet
trigger1 = !time
x = 6-(var(5)/4.0)
y = 4+(var(5)/5.0)

[State 12310, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12310, HitDef]
type = HitDef
trigger1 = !time 
attr = S, SP
animtype  = Hard
Damage = floor(26*(1+parent,power/30000.0)),floor(5*(1+parent,power/30000.0))
hitflag = MAFD
guardflag = MA
pausetime = 1,14
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -12, 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -4, 6
air.fall = 1
getpower = 0
palfx.time = 30
palfx.add = 0,50,150
palfx.sinadd = 0,-50,-150, 110

[State 12310, VarSet]
type = VarRandom
trigger1 = Time % 2
v = 23
range = -10,15

[State 12310, VarSet2]
type = VarRandom
trigger1 = Time % 2
v = 24
range = -15,10

[State 12310, Sparkles]
type = Explod
trigger1 = Time % 2 && !movecontact
anim = ifelse(random>500,11550,11559)
id = 11550
postype = p1
pos = var(23), var(24)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12310, Next]
type = Changestate
trigger1 = Movecontact
trigger2 = pos y >= 0
value = 12305

[State 12310, DestroySelf]
type = DestroySelf
trigger1 = time = 400
trigger2 = frontedgebodydist < -36
trigger3 = MoveReversed
;---------------------------------------------------------------------------
;Ki Beam : Used in State 1801
[StateDef 12400]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12400
ctrl = 0
sprpriority = 4

[State 12400, BindToParent]
type = BindToParent
triggerall = parent,stateno!=1811
trigger1 = 1
time = 1
pos = 24,-34
[State 12400, BindToParent]
type = BindToParent
triggerall = parent,stateno=1811
trigger1 = 1
time = 1
pos = 14,-49

[State 12400, FVarAdd]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.025
[State 12400, Flash]
type = Explod
trigger1 = !time
Anim = 13131
Pos = 15,0
Id = 13131
sprpriority = 4
bindtime = 1
Postype = p1
persistent = 0
ownpal = 1
scale = 0.01, 0.01
supermovetime = 9999
pausemovetime = 9999
[State 12400, ModifyExplod]
type = ModifyExplod
trigger1 = time
id = 13131
scale = 0.01+fvar(1),0.01+fvar(1)
supermovetime = 9999
pausemovetime = 9999

[State 12400, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12400, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12400, HitDef]
type = HitDef
triggerall = var(19) < 5
trigger1 = time%6=0
attr = S, HP
animtype  = Hard
Damage = floor(36*(1+parent,power/30000.0)),floor(8*(1+parent,power/30000.0))
guardflag = MAFD
guardflag = MA
pausetime = 3,16
sparkno = -1
sparkxy = -5,0
hitsound   = S307,0
guardsound = 6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -12, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -12, -5
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
envshake.time = 16
envshake.freq = 140
envshake.ampl = -4
envshake.phase = 90
getpower = 0
palfx.time = 40
palfx.add = 0,50,150
palfx.sinadd = 0,-50,-150, 130

[State 12400, VarAdd]
type = VarAdd
trigger1 = movecontact = 1
v = 19
value = 1

[State 12401, HitSpark]
type = Explod
triggerall = numtarget > 0
trigger1 = movecontact = 1
anim = 12307+(random%2)
id = 12307
postype = p1
pos = floor(abs((target,pos x)-(pos x))), 0
vel = 0.25, 0
ownpal = 1
scale = 0.5, 0.5
sprpriority = 4

[State 12400, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -15,15
ignorehitpause = 1

[State 12400, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -15,15
ignorehitpause = 1

[State 12400, VarSet3]
type = VarRandom
trigger1 = 1
v = 25
range = 2,25
ignorehitpause = 1

[State 12400, Particles]
type = Explod
triggerall = numtarget > 0 && movecontact = [1,16]
trigger1 = var(21) <= 66
anim = 10070+(random%4)
id = 10070
postype = p1
pos = floor(abs((target,pos x)-(pos x)))+var(23), var(24)
vel = var(23)*0.3, -abs(var(24)*0.5)
accel = 0, 0.4
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
ignorehitpause = 1

[State 12400, Sparkles.Helper]
type = Helper
trigger1 = time = 20
name = "Sparkley"
stateno = 12401
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12401

[State 12400, VarSet]
type = VarAdd
trigger1 = var(19) > 0
v = 21
value = 1

[State 12400, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12400, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = parent,stateno!=1801 && parent,stateno!=1811
trigger3 = MoveReversed
;---------------------------------------------------------------------------
;Energy Wave Sparkles
[StateDef 12401]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 12401, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12401, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12401, Pos-VarSetX]
type = VarRandom
trigger1 = 1
v = 21
range = 1, 100

[State 12401, Pos-VarSetY]
type = VarRandom
trigger1 = 1
v = 22
range = -20, 20

[State 12401, Pos-VarSetX]
type = VarRandom
trigger1 = 1
v = 23
range = 0, 100

[State 12401, Pos-VarSetY]
type = VarRandom
trigger1 = 1
v = 24
range = -14, 14

[State 12401, Sparkle-1]
type = Explod
trigger1 = time%2=0
anim = 11550
id = 11555
postype = p1
pos = var(21)*2+10, floor(var(22)/((time+8)*0.15))
vel = 4, 0
accel = -0.15, 0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12401, Sparkle-2]
type = Explod
trigger1 = time%3=0
anim = 11559
id = 11559
postype = p1
pos = var(23)*2+10, floor(var(24)/((time+8)*0.15))
vel = 4, 0
accel = -0.15,0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12401, DestroySelf]
type = DestroySelf
trigger1 = time = 18
;---------------------------------------------------------------------------
;KameHameHa Charge
[StateDef 12405]
type = A
physics = N
movetype = I
anim = 12401
ctrl = 0
sprpriority = 3

[State 12405, BindToParent]
type = BindToParent
triggerall = parent,stateno!=1810
trigger1 = 1
time = 1
pos = -15,-36
[State 12405, BindToParent]
type = BindToParent
triggerall = parent,stateno=1810
trigger1 = 1
time = 1
pos = -13,-46

[State 12405, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12405, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12405, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 3+floor(time*0.05)

[State 12405, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 12405, VarAdd-Scale]
type = VarAdd
trigger1 = time < 20
fv = 2
value = 0.025

[State 12405, VarAdd-Scale]
type = VarAdd
trigger1 = time > 30
fv = 2
value = -0.045

[State 12405, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(2),fvar(2)

[State 12405, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 5
value = 0

[State 12405, VarAdd-PalFX]
type = VarAdd
trigger1 = time > 37
v = 3
value = (time-37)*50

[State 12405, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -var(3),-var(3),-var(3)
persistent = 1
ignorehitpause = 1

[State 12405, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -50,50
ignorehitpause = 1

[State 12405, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -50,50
ignorehitpause = 1

[State 12400, VarSet3]
type = VarRandom
trigger1 = 1
v = 25
range = 2,25
ignorehitpause = 1

[State 12400, Particles]
type = Explod
trigger1 = time < 20
anim = 10070+(random%4)
id = 10070
postype = p1
pos = var(23), var(24)
vel = -var(23)*0.0625, -var(24)*0.0625
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12405, VarSetA]
type = VarRandom
trigger1 = 1
v = 26
range = -80,80
ignorehitpause = 1

[State 12405, VarSetB]
type = VarRandom
trigger1 = 1
v = 27
range = -80,80
ignorehitpause = 1

[State 12405, VarSetC]
type = VarRandom
trigger1 = 1
v = 28
range = 2,25
ignorehitpause = 1

[State 12405, Particles]
type = Explod
trigger1 = time < 20
anim = 10070+(random%4)
id = 10070
postype = p1
pos = var(26), var(27)
vel = -var(26)*0.0475, -var(27)*0.0475
scale = var(28)*0.0025, var(28)*0.0025
sprpriority = 3
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12405, Next]
type = DestroySelf
trigger1 = time = 42
;---------------------------------------------------------------------------
;Ki Beam : Used in State 1802
[StateDef 12410]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12410
ctrl = 0
sprpriority = 4

[State 12410, BindToParent]
type = BindToParent
triggerall = parent,stateno!=1812
trigger1 = 1
time = 1
pos = 23,-44
[State 12410, BindToParent]
type = BindToParent
triggerall = parent,stateno=1812
trigger1 = 1
time = 1
pos = 9,-60

[State 12410, FVarAdd]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.025

[State 12410, Flash]
type = Explod
trigger1 = !time
Anim = 13131
Pos = 15,-10
Id = 13131
sprpriority = 4
bindtime = 1
Postype = p1
persistent = 0
ownpal = 1
scale = 0.01, 0.01
supermovetime = 9999
pausemovetime = 9999
[State 12410, ModifyExplod]
type = ModifyExplod
trigger1 = time
id = 13131
scale = 0.01+fvar(1),0.01+fvar(1)
supermovetime = 9999
pausemovetime = 9999

[State 12410, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1
pausemovetime=9999
supermovetime=9999

[State 12410, AngleSet]
type = AngleSet
trigger1 = 1
value = 30
ignorehitpause = 1
pausemovetime=9999
supermovetime=9999

[State 12410, AngleDraw]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1
pausemovetime=9999
supermovetime=9999

[State 12410, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12410, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12410, HitDef]
type = HitDef
triggerall = var(19) < 5
trigger1 = time%6=0
attr = S, HP
animtype  = Hard
Damage = floor(36*(1+parent,power/30000.0)),floor(8*(1+parent,power/30000.0))
guardflag = MAFD
guardflag = MA
pausetime = 3,16
sparkno = -1
sparkxy = -5,0
hitsound   = S307,0
guardsound = 6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -10, -7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -10, -7
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
envshake.time = 16
envshake.freq = 140
envshake.ampl = -4
envshake.phase = 90
getpower = 0
palfx.time = 40
palfx.add = 0,50,150
palfx.sinadd = 0,-50,-150, 130

[State 12410, VarAdd]
type = VarAdd
trigger1 = movecontact = 1
v = 19
value = 1

[State 12401, HitSpark]
type = Explod
triggerall = numtarget > 0
trigger1 = movecontact = 1
anim = 12307+(random%2)
id = 12307
postype = p1
pos = floor(abs((target,pos x)-(pos x))), -floor(abs((target,pos x)-(pos x))*0.65)
vel = 0.25, 0
ownpal = 1
scale = 0.5, 0.5
sprpriority = 4

[State 12410, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -15,15
ignorehitpause = 1

[State 12410, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -15,15
ignorehitpause = 1

[State 12410, VarSet3]
type = VarRandom
trigger1 = 1
v = 25
range = 2,25
ignorehitpause = 1

[State 12410, Particles]
type = Explod
triggerall = numtarget > 0 && movecontact = [1,16]
trigger1 = var(21) <= 66
anim = 10070+(random%4)
id = 10070
postype = p1
pos = floor(abs((target,pos x)-(pos x)))+var(23), -floor(abs((target,pos x)-(pos x))*0.65)+var(24)
vel = var(23)*0.3, -abs(var(24)*0.5)
accel = 0, 0.4
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
ignorehitpause = 1

[State 12410, VarSet]
type = VarAdd
trigger1 = var(19) > 0
v = 21
value = 1

[State 12410, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12410, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = parent,stateno!=1802 && parent,stateno!=1812
trigger3 = MoveReversed
;---------------------------------------------------------------------------
;Ki Beam : Used in State 1823
[StateDef 12420]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12411
ctrl = 0
sprpriority = 4

[State 12420, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 13,-36

[State 12420, FVarAdd]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.025

[State 12420, Flash]
type = Explod
trigger1 = !time
Anim = 13131
Pos = 15,10
Id = 13131
sprpriority = 4
bindtime = 1
Postype = p1
persistent = 0
ownpal = 1
scale = 0.01, 0.01
supermovetime = 9999
pausemovetime = 9999
[State 12420, ModifyExplod]
type = ModifyExplod
trigger1 = time
id = 13131
scale = 0.01+fvar(1),0.01+fvar(1)
supermovetime = 9999
pausemovetime = 9999

[State 12420, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12420, AngleSet]
type = AngleSet
trigger1 = 1
value = -30
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12420, AngleDraw]
type = AngleDraw
trigger1 = 1
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12420, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12420, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
ignorehitpause=1
pausemovetime=9999
supermovetime=9999

[State 12420, HitDef]
type = HitDef
triggerall = var(19) < 5
trigger1 = time%6=0
attr = S, HP
animtype  = Hard
Damage = floor(36*(1+parent,power/30000.0)),floor(8*(1+parent,power/30000.0))
guardflag = MAFD
guardflag = MA
pausetime = 3,16
sparkno = -1
sparkxy = -5,0
hitsound   = S307,0
guardsound = 6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -12, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -12, -5
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
envshake.time = 16
envshake.freq = 140
envshake.ampl = -4
envshake.phase = 90
getpower = 0
palfx.time = 40
palfx.add = 0,50,150
palfx.sinadd = 0,-50,-150, 130

[State 12420, VarAdd]
type = VarAdd
trigger1 = movecontact = 1
v = 19
value = 1

[State 12420, HitSpark]
type = Explod
triggerall = numtarget > 0
trigger1 = movecontact = 1
anim = 12307+(random%2)
id = 12307
postype = p1
pos = floor(abs((target,pos x)-(pos x))), floor(abs((target,pos x)-(pos x))*0.65)
vel = 0.25, 0
ownpal = 1
scale = 0.5, 0.5
sprpriority = 4

[State 12420, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -15,15
ignorehitpause = 1

[State 12420, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -15,15
ignorehitpause = 1

[State 12420, VarSet3]
type = VarRandom
trigger1 = 1
v = 25
range = 2,25
ignorehitpause = 1

[State 12420, Particles]
type = Explod
triggerall = numtarget > 0 && movecontact = [1,16]
trigger1 = var(21) <= 66
anim = 10070+(random%4)
id = 10070
postype = p1
pos = floor(abs((target,pos x)-(pos x)))+var(23), floor(abs((target,pos x)-(pos x))*0.65)+var(24)
vel = var(23)*0.3, -abs(var(24)*0.5)
accel = 0, 0.4
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
ignorehitpause = 1

[State 12420, VarSet]
type = VarAdd
trigger1 = var(19) > 0
v = 21
value = 1

[State 12420, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12420, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = parent,stateno!=1803 && parent,stateno!=1813
trigger3 = MoveReversed
;---------------------------------------------------------------------------
;Rising Blue Particles
[StateDef 12450]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 3

[State 12450, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = 0,320
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12450, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -5,-1
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12450, VarSet2]
type = VarRandom
trigger1 = 1
v = 25
range = 1,25
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12450, VarSet]
type = VarRandom
trigger1 = 1
v = 26
range = -5,5
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12450, Particles]
type = Explod
trigger1 = 1
anim = 10072+(random%4)
id = 10070
postype = left
pos = var(23), 248
vel = var(26), var(24)*0.5
accel = -var(26)*0.025, 0
scale = var(25)*0.0025, var(25)*0.0025
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1
ontop = 1

[State 12450, Next]
type = DestroySelf
trigger1 = time = 42
;---------------------------------------------------------------------------
;Rising Orange Particles
[StateDef 12451]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 3

[State 12451, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = 0,320
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12451, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -5,-1
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12451, VarSet2]
type = VarRandom
trigger1 = 1
v = 25
range = 2,26
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12451, VarSet]
type = VarRandom
trigger1 = 1
v = 26
range = -5,5
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 12451, Particles]
type = Explod
trigger1 = 1
anim = 10083+(random%4)
id = 10080
postype = left
pos = var(23), 248
vel = var(26), var(24)*0.5
accel = -var(26)*0.025, 0
scale = var(25)*0.0025, var(25)*0.0025
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1
ontop = 1

[State 12451, Next]
type = DestroySelf
trigger1 = time = 42
;---------------------------------------------------------------------------
;Strong Physical Attack Energy Effect [620]
[StateDef 12600]
type = A
physics = N
velset = 0, 0
anim = 12600
sprpriority = 3

[State 12600, VarSet-ParentState]
type = VarSet
trigger1 = !time
v = 9
value = (parent, stateno)

[State 12600, BindToParent]
type = BindToParent
trigger1 = var(9) = 620
time = 1
pos = 24,-29

[State 12600, NoShadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12600, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12600, AngleSet]
type = AngleSet
trigger1 = !time
value = -45

[State 12600, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12600, End]
type = DestroySelf
trigger1 = !animtime || (parent, stateno!=var(9)) || (parent, movetype = H)
;---------------------------------------------------------------------------
;Strong Physical Attack Energy Effect [650]
[StateDef 12630]
type = A
physics = N
velset = 0, 0
anim = 12630
sprpriority = 3

[State 12630, VarSet-ParentState]
type = VarSet
trigger1 = !time
v = 9
value = (parent, stateno)

[State 12630, BindToParent]
type = BindToParent
trigger1 = var(9) = 650
time = 1
pos = 24,-8

[State 12630, BindToParent]
type = BindToParent
trigger1 = var(9) = 450
time = 1
pos = 34,-5

[State 12630, NoShadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12630, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12630, AngleSet]
type = AngleSet
trigger1 = var(9) = 650
value = -90

[State 12630, AngleSet]
type = AngleSet
trigger1 = var(9) = 450
value = -60

[State 12630, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12630, End]
type = DestroySelf
trigger1 = !animtime || (parent, stateno!=var(9)) || (parent, movetype = H)
;---------------------------------------------------------------------------
;Charge-Push Forward
[StateDef 12650]
type = A
physics = N
movetype = I
velset = 12, 0
anim = 12650
ctrl = 0

[State 12650, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.25

[State 12650, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12650, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12650, End]
type = DestroySelf
trigger1 = time = 12
;---------------------------------------------------------------------------
;Charge-Push Back
[StateDef 12651]
type = A
physics = N
movetype = I
velset = -12, 0
anim = 12650
ctrl = 0

[State 12651, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.25

[State 12651, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12651, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12651, End]
type = DestroySelf
trigger1 = time = 12

;---------------------------------------------------------------------------
;Charge-Push Still
[StateDef 12652]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 12650
ctrl = 0

[State 12651, BindToParent]
type = BindToParent
trigger1 = 1
time = 1

[State 12651, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12651, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12651, End]
type = DestroySelf
trigger1 = time = 7
;---------------------------------------------------------------------------
;Advance Guard-Push Forward
[StateDef 12700]
type = A
physics = N
movetype = I
velset = 20, 0
anim = 12700
ctrl = 0

[State 12700, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.5

[State 12700, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12700, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12700, End]
type = DestroySelf
trigger1 = time = 20

;---------------------------------------------------------------------------
;Small Explosion (From Basic FireBall)
[StateDef 13000]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13000, Sound]
type = PlaySnd
trigger1 = time = 0
value = 1100,0

[State 13000, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13000, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13000, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.01

[State 13000, Explod: Explosion_Small]
type = Explod
trigger1 = (!time)
Anim = 13000
Pos = 0,0
Id = 13000
velocity = 0,0
sprpriority = 5
removeongethit = 0
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.5, 0.5

[State 13000, Explod: Flash]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13000, ModifyExplod: Flash]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 13000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13000, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14501
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13000, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Small Explosion (From Ki Barrage)
[StateDef 13001]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13001, Sound]
type = PlaySnd
trigger1 = time = 0
value = 1100,0

[State 13001, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13001, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13001, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.01

[State 13001, SmallExplosion]
type = Explod
trigger1 = (!time)
Anim = 13000
Pos = 0,0
Id = 13000
velocity = 0,0
sprpriority = 5
removeongethit = 0
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.5, 0.5

[State 13001, Explod: Flash]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13001, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 13001, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13001, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13001, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14503
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13001, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Small Explosion (From Ki Barrage Escape)
[StateDef 13002]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13002, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13002, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13002, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.01

[State 13001, Sound: Small Explosion]
type = PlaySnd
trigger1 = time = 0
value = 1062,0

[State 13002, Explod: Small Explosion]
type = Explod
trigger1 = (!time)
Anim = 13000
Pos = 0,0
Id = 13000
velocity = 0,0
sprpriority = 5
removeongethit = 0
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.5, 0.5

[State 13002, Explod: Flash]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13002, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 13002, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13002, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13002, Disperse Effect]
type = Helper
trigger1 = !time
name = "DisperseEffect"
stateno = 14501
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13002, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Small Explosion (From Big Exposion)
[StateDef 13010]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 13000
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13010, VarSet]
type = VarRandom
trigger1 = !time
v = 17
range = -5, 5

[State 13010, VarSet]
type = VarRandom
trigger1 = !time
v = 18
range = -7, 4

[State 13010, VelSet]
type = VelSet
trigger1 = !time
x = Var(17)
y = Var(18)

[State 13010, VelAdd]
type = VelAdd
trigger1 = 1
x = (-Var(17)*.01)
y = ifelse(var(18)=0, 0.2, abs(Var(18)*.05))

[State 13010, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13010, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13010, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 20
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add
;--------------------------
[State 13010, Vel-VarSet]
type = VarSet
trigger1 = !time
fv = 19
value = var(17)

[State 13010, Vel-VarSet]
type = VarSet
trigger1 = !time
fv = 20
value = var(18)

[State 13010, VelAdd]
type = VarAdd
trigger1 = 1
fv = 19 
value = (-FVar(19)*.01)

[State 13010, VelAdd]
type = VarAdd
trigger1 = 1
fv = 20
value = ifelse(fvar(20)=0, 0.2, abs(fVar(20)*.05))

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 21
range = -13, 13

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 22
range = -13, 13

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -13, 13

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 24
range = -13, 13

[State 13010, Sparkle-1]
type = Explod
triggerall = time = [1,17]
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(21), var(22)
vel = fvar(19)*.5, fvar(20)*.25
accel = -fvar(19)*.01, ifelse(fvar(20)=0, 0.1, abs(fvar(20))*.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 13010, Sparkle-2]
type = Explod
triggerall = time = [2,18]
trigger1 = Time % 2
anim = 11555
id = 11555
postype = p1
pos = var(23), var(24)
vel = fvar(19)*.5, fvar(20)*.25
accel = -fvar(19)*.01, ifelse(fvar(20)=0, 0.1, abs(fvar(20))*.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3
;-----------------------
[State 13010, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Big Explosion
[StateDef 13100]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 13100
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13100, SoundPoom]
type = PlaySnd
trigger1 = !time
value = 1150,0
volume = 255

[State 13100, Sound]
type = PlaySnd
trigger1 = !time
value = 1100,1

[State 13100, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13100, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13100, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.05

[State 13100, Explod: Flash]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.05, 0.05

[State 13100, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.15+fvar(1),0.15+fvar(1)

[State 13100, Shake]
type = EnvShake
trigger1 = (!time)
Time = 17
freq = 90
ampl = -3
phase = 0

[State 13100, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13100, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13100, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -15,15

[State 13100, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -15,15

[State 13100, VarSet2]
type = VarRandom
trigger1 = 1
v = 25
range = 1,25

[State 12300, Particles-1]
type = Explod
trigger1 = time < 20
anim = 10083+(random%4)
id = 10080
postype = p1
pos = var(23), var(24)
vel = var(23)*0.4, -abs(var(24)*0.5)
accel = 0, 0.4
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
persistant = 0

[State 13100, VarSet]
type = VarRandom
trigger1 = 1
v = 26
range = -15,15

[State 13100, VarSet2]
type = VarRandom
trigger1 = 1
v = 27
range = -15,15

[State 13100, VarSet2]
type = VarRandom
trigger1 = 1
v = 28
range = 1,25

[State 12300, Particles-2]
type = Explod
trigger1 = time < 15
anim = 10083+(random%4)
id = 10080
postype = p1
pos = var(26), var(28)
vel = var(26)*0.4, -abs(var(27)*0.5)
accel = 0, 0.4
scale = var(28)*0.0025, var(28)*0.0025
sprpriority = 3
persistant = 0

[State 13100, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Big Explosion 2
[StateDef 13101]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 13100
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13101, SoundPoom]
type = PlaySnd
trigger1 = !time
value = 1150,0
volume = 255

[State 13101, Sound]
type = PlaySnd
trigger1 = !time
value = 1100,1

[State 13101, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13101, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13101, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.15-(time*0.005)

[State 13101, Explod: Flash]
type = Explod
trigger1 = (!time)
Anim = 13107
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.1, 0.1

[State 13101, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 13101, Shake]
type = EnvShake
trigger1 = (!time)
Time = 35
freq = 90
ampl = -3
phase = 0

[State 13101, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13101, VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -14,14

[State 13101, VarSet2]
type = VarRandom
trigger1 = 1
v = 24
range = -20,3

[State 13101, VarSet2]
type = VarRandom
trigger1 = 1
v = 25
range = 2,35

[State 13101, Particles-1]
type = Explod
trigger1 = time < 20 && time%2
anim = 10083+(random%4)
id = 10080
postype = p1
pos = var(23), var(24)
vel = var(23)*0.4, -abs(var(24)*0.5)
accel = 0, 0.4
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
persistant = 0

[State 13101, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;Circular Disperse Effect 1
[StateDef 14500]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14500, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14500, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 14500, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.5, var(15)*0.5
accel = 0,0.22
scale = 0.25, 0.25
sprpriority = 3

[State 14500, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.75, var(15)*0.75
accel = 0,0.22
scale = 0.25, 0.25
sprpriority = 3

[State 14500, DestroySelf]
type = DestroySelf
trigger1 = time = 20
;---------------------------------------------------------------------------
;Circular Disperse Effect 2
[StateDef 14501]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14501, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -5,5

[State 14501, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -7,3

[State 14501, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Time%2=0
anim = 11559
id = 11559
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.25, var(15)*0.25
accel = 0,0.22
scale = 0.15, 0.15
sprpriority = 3

[State 14501, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Time%2=1
anim = ifelse((root, palno%2=0),11550,11555)
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.4, var(15)*0.4
accel = 0,0.22
scale = 0.15, 0.15
sprpriority = 3

[State 14501, DestroySelf]
type = DestroySelf
trigger1 = time = 16
;---------------------------------------------------------------------------
;Circular Disperse Effect 3 (For Ki Barrage)
[StateDef 14503]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14501, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14501, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 14501, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Time%2
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.25, var(15)*0.25
scale = 0.25, 0.25
sprpriority = 3

[State 14501, Sparkle-2]
type = Explod
triggerall = time < 12 
trigger1 = Time%2
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.4, var(15)*0.4
scale = 0.25, 0.25
sprpriority = 3

[State 14501, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Sparkle Perse Effect 1
[StateDef 14505]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14505, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,-45

[State 14505, RandomVariable-Scale]
type = VarRandom
trigger1 = 1
v = 13
range = 1,2

[State 14505, RandomVariable-PosX]
type = VarRandom
trigger1 = 1
v = 14
range = -120,120

[State 14505, RandomVariable-PosY]
type = VarRandom
trigger1 = 1
v = 15
range = -120,120

[State 14505, Sparkle-1]
type = Explod
trigger1 = !(time%2)
anim = 11550
id = 11550
postype = p1
pos = var(14), var(15)
ownpal = 1
velocity = -var(14)*0.04, -var(15)*0.04
scale = 0.25*var(13), 0.25*var(13)
sprpriority = 1

[State 14505, Sparkle-2]
type = Explod
trigger1 = time%2
anim = 11555
id = 11555
postype = p1
pos = var(14), var(15)
ownpal = 1
velocity = -var(14)*0.04, -var(15)*0.04
scale = 0.25*var(13), 0.25*var(13)
sprpriority = 0

[State 14505, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 14505, FVarset]
type = VarAdd
trigger1 = time>5
fv = 1
value = 0.003

[State 14505, Ball]
type = Explod
trigger1 = (time=5)
Anim = 11590
Pos = 0,0
Id = 11590
velocity = 0,0
sprpriority = 1
removeongethit = 0
bindtime = 999
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.001, 0.001

[State 14505, ModifyExplod]
type = ModifyExplod
trigger1 = (time>5)
id = 11590
supermovetime = 9999
pausemovetime = 9999
scale = 0.001+fvar(1),0.001+fvar(1)

[State 14505, RemoveExplod]
type = RemoveExplod
trigger1 = time = 154 
trigger2 = parent,stateno!= 1600 && parent,stateno!= 4100 && parent,stateno!= 1601
id = 11590

[State 14505, DestroySelf]
type = DestroySelf
trigger1 = time = 155 
trigger2 = parent,stateno!= 1600 && parent,stateno!= 4100 && parent,stateno!= 1601

;---------------------------------------------------------------------------
;P2 Smoke/Explosions
[StateDef 15300]
type = A
physics = N
movetype = I
velset = 0, 0
anim = -1
ctrl = 0
sprpriority = 4

[State 15300, Smoke1]
type = Explod
trigger1 = time = 8
Anim = 15300
Pos = 0,-25
Id = 15300
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, Smoke2]
type = Explod
trigger1 = time = 15
Anim = 15300
Pos = 20,-15
Id = 15301
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, Smoke3]
type = Explod
trigger1 = time = 23
Anim = 15300
Pos = -10,-5
Id = 15302
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.7, 0.7

[State 15300, Smoke4]
type = Explod
trigger1 = time = 31
Anim = 15300
Pos = 10,-25
Id = 15303
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, DestroySelf]
type = DestroySelf
trigger1 = p2stateno = 5120
;---------------------------------------------------------------------------
;Rock Helper 00
[StateDef 15200]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15200, VelSet]
type = VelSet
triggerall = !time
trigger1 = parent, stateno = 1701
y = -2

[State 15200, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -3
trigger1 = parent, stateno = 1701
y = -0.08

[State 15200, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15200, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper 01
[StateDef 15201]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15201, VelSet]
type = VelSet
triggerall = !time
trigger1 = parent, stateno = 1701
y = -3

[State 15201, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -3
trigger1 = parent, stateno = 1701
y = -0.08

[State 15201, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15201, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper 02
[StateDef 15202]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15202, VelSet]
type = VelSet
triggerall = !time
trigger1 =  parent, stateno = 1701
y = -4

[State 15202, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -4
trigger1 = parent, stateno = 1701
y = -0.08

[State 15202, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15202, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper 03
[StateDef 15203]
type = A
physics = N
movetype = I
anim = 15200 + Parent, Var(3)
sprpriority = 2

[State 15203, StateVar]
type = VarRandom
trigger1 = 1
v = 2
range = 0, 11

[State 15203, StateVar]
type = VarRandom
trigger1 = !time
v = 3
range = 0, 75

[State 15203, VarX]
type = VarSet
trigger1 = !time
v = 4
value = parent, var(4)

[State 15203, VarX]
type = VarSet
trigger1 = !time
v = 5
value = parent, var(5)

[State 15203, Anim]
type = ChangeAnim
trigger1=!time
value = 15200+var(2)

[State 15203, VelSet]
type = VelSet
trigger1 = !time
x = var(4)*0.25
y = -10+var(5)*0.25

[State 15203, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.44

[State 15203, AngleSet]
type = AngleAdd
trigger1 = 1
value = var(4)

[State 15203, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(var(3)/100),1-(var(3)/100)

[State 15203, Pos-VarSetY]
type = VarRandom
trigger1 = 6
v = 25
range = -10, 10

[State 15203, Pos-VarSetY]
type = VarRandom
trigger1 = 7
v = 25
range = -10, 10

[State 15203, VarRandom]
type = VarRandom
trigger1 = time
v = 41
range = 0,3

[State 15203, MakeDust]
type = Explod
trigger1 = time
Anim = 15310+Var(41)
Pos = Var(6), var(7)
Id = 15310
sprpriority = 2
removeongethit = 0
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5,0.5
velocity = 0, 0

[State 15203, PosSet]
type = Posset
trigger1 = pos y > 0
y = 0

[State 15203, Next]
type = ChangeState
trigger1 = pos y = 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper Die
[StateDef 15255]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15255
ctrl = 0
sprpriority = 4

[State 15202, PlaySND]
type = PlaySnd
trigger1 = time= 0
value = 1720,0

[State 15255, DestroySelf]
type = DestroySelf
trigger1 = time = 4
;---------------------------------------------------------------------------
;Dust Helper
[StateDef 15000]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 2

[State 15000, Bind]
type = BindtoParent
trigger1 = 1
time = 1
pos = -50,1

[State 15000, Dust]
type = Explod
triggerall = Parent, Pos Y > -20
trigger1 = (timemod = 3,0)
Anim = 15010
Pos = 0, -Floor(Parent, Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.35, 0.35

[State 15000, DestroySelf]
type = DestroySelf
trigger1 = (Parent, Stateno != 1300) && (Parent, Stateno != 1305)
;---------------------------------------------------------------------------
;Dust Helper Ki Blast
[StateDef 15010]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 2

[State 15010, Bind]
type = BindtoParent
trigger1 = 1
time = 1
pos = -40,1

[State 15010, Dust]
type = Explod
triggerall = Parent, Pos Y > -80
trigger1 = (timemod = 3,0)
Anim = 15010
Pos = 0, -Floor(Parent, Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.35, 0.35

[State 15010, DestroySelf]
type = DestroySelf
trigger1 = (Parent, Stateno != 12100)
;-------------------------------------------------------------------------------
;Dizzy Stars
[StateDef 15800]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x

[State 15801, Pos X]
type = VarSet
trigger1 = !time
v = 4
value = ifelse(facing=1,-2,1)

[State 15801, Pos Y]
type = VarSet
trigger1 = !time
v = 5
value = -65

;Tired Variable from Parent Dizzy State.
[State 15801, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)

;Star Start locations
;   B
;A     C
;   D

[State 15800, Star_Helper.A]
type = Helper
trigger1 = !time
name = "StarA"
stateno = 15801
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15801
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.B]
type = Helper
trigger1 = !time
name = "StarB"
stateno = 15802
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15802
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.C]
type = Helper
trigger1 = !time
name = "StarC"
stateno = 15803
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15803
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.D]
type = Helper
trigger1 = !time
name = "StarD"
stateno = 15804
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15804
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Die State]
type = ChangeState
trigger1 = parent, stateno != 5300
value = 15809
;-------------------------------------------------------------------------------
;Dizzy Star A
[StateDef 15801]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15801, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15801, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15801, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = time*0.05

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15801, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15801, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15801, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15801, End]
type = ChangeState
trigger1 = var(6) >= 75
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star B
[StateDef 15802]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15802, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15802, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15802, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables
[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+30)*0.05

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15802, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15802, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15802, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15802, End]
type = ChangeState
trigger1 = var(6) >= 225
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star C
[StateDef 15803]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15803, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15803, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15803, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+60)*0.05

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15803, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15803, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15803, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15803, End]
type = ChangeState
trigger1 = var(6) >= 150
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star D
[StateDef 15804]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15804, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15804, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15804, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15804, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+90)*0.05

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15804, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15804, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15804, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15804, End]
type = ChangeState
trigger1 = var(6) >= 300
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star Remove/Pop Off/Bounce
[StateDef 15805]
type = A
physics = N
movetype = I
anim = 15800
ctrl = 0
sprpriority = 3

[State 15805, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15805, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

;Scaling(for 3d orbit effect)
[State 15805, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15805, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)

[State 15805, VelSet]
type = VelSet
trigger1 = !time
y = -4

[State 15805, VelAdd]
type = VelAdd
trigger1 = time
y = 0.3

[State 15805, PosSet-Ground]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 15805, VelSet]
type = VelSet
trigger1 = pos y = 0
y = -(vel y) * 0.5

[State 15805, End]
type = ChangeState
trigger1 = time >= 80 && random < 75
trigger2 = time = 100
value = 15806

;-------------------------------------------------------------------------------
;Dizzy Star Burst/Explode/Pop
[StateDef 15806]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15806, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1003,0

[State 15806, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.005

[State 15806, Explod: Flash]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 15806, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 15806, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 15806, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 15806, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11555
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.25*((0.5-fvar(13))*0.75), var(15)*0.25*((0.5-fvar(13))*0.75)
scale = (0.5-fvar(13))*0.5, (0.5-fvar(13))*0.5
sprpriority = 3

[State 15806, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.4*((0.5-fvar(13))*0.75), var(15)*0.4*((0.5-fvar(13))*0.75)
scale = (0.5-fvar(13))*0.5, (0.5-fvar(13))*0.5
sprpriority = 3

[State 15806, End]
type = DestroySelf
trigger1 = time = 15
;-------------------------------------------------------------------------------
;Dizzy Stars End State(Used to Kill Remaining stars)
[StateDef 15809]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15804, End]
type = DestroySelf
trigger1 = time = 1

;-------------------------------------------------------------------------------
;Teleport Trail
[StateDef 17900]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 17900
ctrl = 0
sprpriority = -1

[State 17900, End.X]
type = VarSet
trigger1 = time=0
fv = 3
value = parent, p2bodydist x

[State 17900, End.Y]
type = VarSet
trigger1 = time=0
fv = 4
value = parent, p2bodydist y

[State 17900, VelSet]
type = VelSet
trigger1 = time>=2
x = fvar(3)*0.1
y = fvar(4)*0.1

[State 17900, AfterImage]
type = AfterImage
trigger1 = !time
time = 10
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 130,100,0
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 17900, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 17900, PalFX]
type = PalFX
trigger1 = 1
time=1
add = 0-time*10,0-time*10,-64-time*10
persistent = 1
ignorehitpause = 1

[State 17900, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 17900, End]
type = DestroySelf
trigger1 = time = 11

;---------------------------------------------------------------------------
;Super Portrait
[Statedef 19000]
physics  = N
anim     = 9999
sprpriority = 0

[State 19000, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19000, VarAdd]
type = VarAdd
trigger1 = time >= 30
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.02

[State 19000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19000, Picture]
type = Explod
trigger1 = time = 0
anim = 19000
id = 19000
pos = -30,120
postype = back
ownpal = 0
sprpriority = 0
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = 0.48,0.48

[State 19000, ModExplod]
type = ModifyExplod
trigger1 = time >= 30
id = 19000
supermovetime = 9999
pausemovetime = 9999
scale = 0.48+fvar(1),0.48+fvar(1)

[State 19000, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60
id = 19000

[State 19000, DestroySelf]
type = DestroySelf
trigger1 = time = 60
;---------------------------------------------------------------------------
;Super Portrait2
[Statedef 19002]
physics  = N
anim     = 9999
sprpriority = 0

[State 19002, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19002, VarAdd]
type = VarAdd
trigger1 = time >= 30
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.02

[State 19002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19002, Picture]
type = Explod
trigger1 = time = 0
anim = 19002
id = 19002
pos = -30,120
postype = back
ownpal = 0
sprpriority = 0
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = 0.48,0.48

[State 19002, ModExplod]
type = ModifyExplod
trigger1 = time >= 30
id = 19002
supermovetime = 9999
pausemovetime = 9999
scale = 0.48+fvar(1),0.48+fvar(1)

[State 19002, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60
id = 19002

[State 19002, DestroySelf]
type = DestroySelf
trigger1 = time = 60
;---------------------------------------------------------------------------
;Super Portrait3
[Statedef 19003]
physics  = N
anim     = 9999
sprpriority = 0

[State 19003, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19003, VarAdd]
type = VarAdd
trigger1 = time >= 30
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.02

[State 19003, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19003, Picture]
type = Explod
trigger1 = time = 0
anim = 19003
id = 19003
pos = -30,120
postype = back
ownpal = 0
sprpriority = 0
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = 0.40,0.40

[State 19003 ModExplod]
type = ModifyExplod
trigger1 = time >= 30
id = 19003
supermovetime = 9999
pausemovetime = 9999
scale = 0.40+fvar(1),0.40+fvar(1)

[State 19003, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60
id = 19003

[State 19003, DestroySelf]
type = DestroySelf
trigger1 = time = 60
;---------------------------------------------------------------------------
;Super Portrait
[Statedef 19004]
physics  = N
anim     = 9999
sprpriority = 0

[State 19004, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19004, VarAdd]
type = VarAdd
trigger1 = time >= 70
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.02

[State 19004, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19004, Picture]
type = Explod
trigger1 = time = 0
anim = 19004
id = 19000
pos = -30,120
postype = back
ownpal = 0
sprpriority = 0
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = 0.48,0.48

[State 19004, ModExplod]
type = ModifyExplod
trigger1 = time >= 70
id = 19000
supermovetime = 9999
pausemovetime = 9999
scale = 0.48+fvar(1),0.48+fvar(1)

[State 19004, RemoveExplod]
type = RemoveExplod
trigger1 = time = 120
id = 19000

[State 19004, DestroySelf]
type = DestroySelf
trigger1 = time = 120
;---------------------------------------------------------------------------
;WinKO Effect

[Statedef 9998]
type = S
movetype = I
physics = N
anim = 9999

[State 9998: Pause]
type = Pause
trigger1 = !Time
time = 12
movetime = 12

[State 9998: EnvColor]
type = EnvColor
trigger1 = Time < 12
value = Time*4, Time*4, Time*4
time = 1
under = 1

[State 9998: EnvShake]
type = EnvShake
trigger1 = !Time
time = 12
freq = 120
ampl = -3
phase = 90

[State 9998: AllPalFX]
type = AllPalFX
trigger1 = Time < 50
time = 1
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = Time*5
;---------------------------------------------------------------------------
;Android 18 - Intro - Zanzoken In
[StateDef 40000]
type = S
physics = N
movetype = I
anim = 40000+parent,var(42)
ctrl = 0
sprpriority = 2
velset = 0,0

[State 40000, Pallette_remap]
type = RemapPal
trigger1 = 1
source = 1,1
dest = 0,(parent, palno)

[State 40000, VelSet]
type = VelSet
trigger1 = time = 120
x = 8

[State 40000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 40003
;---------------------------------------------------------------------------
;Android 18 - Intro - Zanzoken Out
[StateDef 40001]
type = S
physics = N
movetype = I
anim = 40001+parent,var(42)
ctrl = 0
sprpriority = 2
velset = 0,0

[State 40001, Pallette_remap]
type = RemapPal
trigger1 = 1
source = 1,1
dest = 0,(parent, palno)

[State 40001, VelSet]
type = VelSet
trigger1 = time = 120
x = 8

[State 40001, Remove]
type = DestroySelf
trigger1 = roundstate = 3

;---------------------------------------------------------------------------
;Android 18 - Stand (Intro)
[StateDef 40002]
type = S
physics = N
movetype = I
anim = 40000+parent,var(42)
ctrl = 0
sprpriority = 2
velset = 0,0

[State 40002, Pallette_remap]
type = RemapPal
trigger1 = 1
source = 1,1
dest = 0,(parent, palno)

[State 40002, VelSet]
type = VelSet
trigger1 = !time
x = 0
y = 0

[State 40002, ChangeState]
type = ChangeState
trigger1 = roundstate = 2
value = 40003
;---------------------------------------------------------------------------
;Android 18 - Shrug (Intro)
[StateDef 40003]
type = S
physics = N
movetype = I
anim = 40003+parent,var(42)
ctrl = 0
sprpriority = 2
velset = 0,0

[State 40003, Pallette_remap]
type = RemapPal
trigger1 = 1
source = 1,1
dest = 0,(parent, palno)

[State 40003, VelSet]
type = VelSet
trigger1 = !time
x = 0
y = 0

[State 183, PlaySND]
type = PlaySnd
trigger1 = !time
value = 4000, ifelse(random%2,1,3)
volume = 255

[State 40003, ChangeState]
type = ChangeState
trigger1 = time = 100; || parent, abs(vel x) > 0.0 || parent, abs(vel y) > 0.0
value = 40005
;---------------------------------------------------------------------------
;Android 18 - Cross Arms (Win)
[StateDef 40004]
type = S
physics = N
movetype = I
anim = 40004+parent,var(42)
ctrl = 0
sprpriority = 2
velset = 0,0

[State 40004, Pallette_remap]
type = RemapPal
trigger1 = 1
source = 1,1
dest = 0,(parent, palno)

[State 40007, Voice]
type = PlaySnd
trigger1 = time = 20
value = 4000, 2

[State 40004, VelSet]
type = VelSet
trigger1 = !time
x = 0
y = 0
;---------------------------------------------------------------------------
;Android 18 - Dash Backwards Offscreen (Intro)
[StateDef 40005]
type = S
physics = N
movetype = I
anim = 40005+parent,var(42)
ctrl = 0
sprpriority = 2
velset = 0,0

[State 40005, Pallette_remap]
type = RemapPal
trigger1 = 1
source = 1,1
dest = 0,(parent, palno)

[State 40005, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -7.0

[State 40005, Sound: Dash]
type = PlaySnd
trigger1 = time = 1
value = 100, 0
[State 40005, AfterImage]
type = AfterImage
trigger1 = time = 4
time = 64
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 110,50,100
paladd = 25,0,20
timegap = 1
framegap = 1
trans = Add
[State 40005, Explod: Kick Dust]
type = Explod
trigger1 = time = 3
anim = 15011
Pos = 21, 0
Id = 15011
sprpriority = 2
removeongethit = 0
removetime = 24
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.35,0.35
[State 40005, Explod: MakeDust]
type = Explod
trigger1 = time > 4 && time%2
anim = 15310+random%4
Pos = 21, -1
Id = 15310
sprpriority = 3
removeongethit = 0
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5,0.5

[State 40005, Remove]
type = DestroySelf
trigger1 = backedgebodydist < -90;abs(screenpos x) > 320
trigger2 = time = 200
;---------------------------------------------------------------------------
;Android 18 - Jump In (Winpose)
[StateDef 40006]
type = S
physics = N
movetype = I
anim = 40006+parent,var(42)
ctrl = 0
sprpriority = 2
velset = 0,0

[State 40006, Pallette_remap]
type = RemapPal
trigger1 = 1
source = 1,1
dest = 0,(parent, palno)

[State 40006, VelSet]
type = VelSet
trigger1 = !time
x = 4
y = 12 

[State 40006, VelSet]
type = VelSet
trigger1 = pos y >= 0
x = 0
y = 0 

[State 40006, PosSet]
type = VelSet
trigger1 = pos y > 0
y = 0 

[State 40006, ChangeState]
type = ChangeState
trigger1 = pos y = 0
value = 40007 ;Land and Stand
[State 40006, Remove]
type = DestroySelf
trigger1 = roundstate = 3

;---------------------------------------------------------------------------
;Android 18 - Land and Stand (Winpose)
[StateDef 40007]
type = S
physics = N
movetype = I
anim = 40007+parent,var(42)
ctrl = 0
sprpriority = 2
velset = 0,0

[State 40007, Pallette_remap]
type = RemapPal
trigger1 = 1
source = 1,1
dest = 0,(parent, palno)

[State 40007, Landing Sound]
type = PlaySnd
trigger1 = !time
value = 40, 1

[State 40007, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 40004 ;Cross Arms