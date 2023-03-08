;Krillin's CMD
;-| Super Motions |--------------------------------------------------------

[Command]
name = "DestructoDisc1"
command = ~D, DB, B, x+y
time = 30

[Command]
name = "DestructoDisc2"
command = ~D, DB, B, y+z
time = 30

[Command]
name = "DestructoDisc3"
command = ~D, DB, B, x+z
time = 30

[Command]
name = "KameHameHa1"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "KameHameHa2"
command = ~D, DB, B, b+c
time = 30

[Command]
name = "KameHameHa3"
command = ~D, DB, B, a+c
time = 30

[Command]
name = "2xTsuihikidan1"
command = ~D, DF, F, a+b
time = 30

[Command]
name = "2xTsuihikidan2"
command = ~D, DF, F, b+c
time = 30

[Command]
name = "2xTsuihikidan3"
command = ~D, DF, F, a+c
time = 30

[Command]
name = "KakusanDan1"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "KakusanDan2"
command = ~D, DF, F, y+z
time = 30

[Command]
name = "KakusanDan3"
command = ~D, DF, F, x+z
time = 30

;-| Special Motions |------------------------------------------------------
;Solar Flare
[Command]
name = "QCBQCF_a"
command = ~D, DB, B, D, DF, F, a
time = 30
[Command]
name = "QCBQCF_b"
command = ~D, DB, B, D, DF, F, b
time = 30
[Command]
name = "QCBQCF_c"
command = ~D, DB, B, D, DF, F, c
time = 30

[Command]
name = "HCF_x"
command = ~B, D, F, x
time = 15
[Command]
name = "HCF_y"
command = ~B, D, F, y
time = 15
[Command]
name = "HCF_z"
command = ~B, D, F, z
time = 15

[Command]
name = "QCFB_a"
command = ~D, DF, F, B, a
[Command]
name = "QCFB_b"
command = ~D, DF, F, B, b
[Command]
name = "QCFB_c"
command = ~D, DF, F, B, c

[Command]
name = "QCFB_x"
command = ~D, DF, F, B, x
[Command]
name = "QCFB_y"
command = ~D, DF, F, B, y
[Command]
name = "QCFB_z"
command = ~D, DF, F, B, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a
[Command]
name = "QCF_b"
command = ~D, DF, F, b
[Command]
name = "QCF_c"
command = ~D, DF, F, c

;HeadButt Upwards
[Command]
name = "QCF_x"
command = ~D, DF, F, x
[Command]
name = "QCF_y"
command = ~D, DF, F, y
[Command]
name = "QCF_z"
command = ~D, DF, F, z

;Head Butt Downards
[Command]
name = "QCDF_x"
command = ~F, DF, x
[Command]
name = "QCDF_y"
command = ~F, DF, y
[Command]
name = "QCDF_z"
command = ~F, DF, z

;Flip Kick
[Command]
name = "QCDF_a"
command = ~F, D, DF, a
[Command]
name = "QCDF_b"
command = ~F, D, DF, b
[Command]
name = "QCDF_c"
command = ~F, D, DF, c

;KamehameHa
[Command]
name = "QCB_a"
command = ~D, DB, B, a
[Command]
name = "QCB_b"
command = ~D, DB, B, b
[Command]
name = "QCB_c"
command = ~D, DB, B, c

;Ki Shots
[Command]
name = "QCB_x"
command = ~D, DB, B, x
[Command]
name = "QCB_y"
command = ~D, DB, B, y
[Command]
name = "QCB_z"
command = ~D, DB, B, z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "kk1"
command = a+b
time = 1
[Command]
name = "kk2"
command = b+c
time = 1
[Command]
name = "kk3"
command = a+c
time = 1
[Command]
name = "pp1"
command = x+y
time = 1
[Command]
name = "pp2"
command = y+z
time = 1
[Command]
name = "pp3"
command = x+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_yb"
command = /y+b
time = 1

[Command]
name = "hold_xa"
command = /x+a
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "parry"
command = /c+z
time = 1
;-| AI Activate |--------------------------------------------------------------
; Artificial Intelligence
[Command]
name = "AI_01"
command = ~D, DF, F, F, DF, D, DB, B, a
time = 1

[Command]
name = "AI_02"
command = ~D, DF, F, F, DF, D, DB, B, b
time = 1

[Command]
name = "AI_03"
command = ~D, DF, F, F, DF, D, DB, B, c
time = 1

[Command]
name = "AI_04"
command = ~D, DF, F, F, DF, D, DB, B, x
time = 1

[Command]
name = "AI_05"
command = ~D, DF, F, F, DF, D, DB, B, y
time = 1

[Command]
name = "AI_06"
command = ~D, DF, F, F, DF, D, DB, B, z
time = 1

[Command]
name = "AI_07"
command = ~D, DB, B, B, DB, D, DF, F, a
time = 1

[Command]
name = "AI_08"
command = ~D, DB, B, B, DB, D, DF, F, b
time = 1

[Command]
name = "AI_09"
command = ~D, DB, B, B, DB, D, DF, F, c
time = 1

[Command]
name = "AI_10"
command = ~D, DB, B, B, DB, D, DF, F, x
time = 1

[Command]
name = "AI_11"
command = ~D, DB, B, B, DB, D, DF, F, y
time = 1

[Command]
name = "AI_12"
command = ~D, DB, B, B, DB, D, DF, F, z
time = 1
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;AI Activation
;---------------------------------------------------------------------------
[State -1, ArtificialIntelligence]
type = null;VarSet	
triggerall = Var(39) != 1
trigger1 = command = "AI_01" 
trigger2 = command = "AI_02"
trigger3 = command = "AI_03"
trigger4 = command = "AI_04"
trigger5 = command = "AI_05"
trigger6 = command = "AI_06"
trigger7 = command = "AI_07"
trigger8 = command = "AI_08"
trigger9 = command = "AI_09"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
v = 39
value = 1
;===========================================================================
;Hyper Attacks
;---------------------------------------------------------------------------
;KameHameHa
[State -1, KameHameHa]
type = ChangeState
value = 1800
triggerall = (command = "KameHameHa1" || command = "KameHameHa2" || command = "KameHameHa3") && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 ||  stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440 ||  stateno = 450) && movecontact
trigger4 = (stateno = 1110) && time > 2
trigger5 = stateno = 341
;---------------------------------------------------------------------------
;AirKameHameHa
[State -1, AirKameHameHa]
type = ChangeState
value = 1810
triggerall = (command = "KameHameHa1" || command = "KameHameHa2" || command = "KameHameHa3") && power >= 1000
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1300,1309]) && movecontact
trigger4 = (stateno = 1160) && time > 2
trigger5 = stateno = 1355 || stateno = 1305
;---------------------------------------------------------------------------
;Double Tsuihikidan
[State -1, Double Tsuihikidan]
type = ChangeState
value = 1900
triggerall = (command = "2xTsuihikidan1" || command = "2xTsuihikidan2" || command = "2xTsuihikidan3") && power >= 1000 && (numhelper(10081)=0&&numhelper(10080)=0)
trigger1 = (statetype = S||statetype = A) && ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 ||  stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440 ||  stateno = 450) && movecontact
trigger4 = (stateno = [1300,1309]) && movecontact
trigger5 = (stateno = 1110) && time > 2
trigger6 = stateno = 341 || stateno = 1355 || stateno = 1305
;---------------------------------------------------------------------------
;Kakusan Kikou Ha
[State -1, KakusanDan]
type = ChangeState
value = 2000
triggerall = (command = "KakusanDan1" || command = "KakusanDan2" || command = "KakusanDan3") && power >= 3000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 341
;---------------------------------------------------------------------------
;Super DestructoDisc
[State -1, DestructoDisc]
type = ChangeState
value = 2100
triggerall = (command = "DestructoDisc1" || command = "DestructoDisc2" || command = "DestructoDisc3") && power >= 2000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 341

;===========================================================================
;-=Special Attacks/Special Abilities/Throws/Combinations=-
;---------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = (command = "holdup" || (command="a"&&command="b"&&command="c"))
trigger1 = statetype = C && ctrl = 1
trigger2 = (stateno = 260 && movecontact)
;---------------------------------------------------------------------------
; Run_Fwd
[State -1, RunFwd]
type = ChangeState
value = 100
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = S && ctrl && (stateno != 100 || stateno != 102)

; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 102)
trigger2 = command = "FF" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Run_Back
[State -1, RunBack]
type = ChangeState
value = 105
triggerall = var(4) = 0 && !(var(42)>0&&power=0)
trigger1 = command = "BB" && statetype = S && ctrl

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
triggerall = var(4) = 0 && !(var(42)>0&&power=0)
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
trigger2 = command = "BB" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Air Run_Up
[State -1, AirUp]
type = ChangeState
value = 109
triggerall = var(4) = 0 && !(var(42)>0&&power=0)
trigger1 = command = "UU" && statetype = A && ctrl
trigger2 = command = "UU" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Zanzoken Forward
[State -1, Zanzoken.F]
type = ChangeState
value = 2900
triggerall = (command = "a"  && command = "x") && (stateno = 100 || stateno = 102)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Zanzoken Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2901
triggerall = (command = "a"  && command = "x") && (stateno = 105 || stateno = 107)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Zanzoken Upward
[State -1, Zanzoken.U]
type = ChangeState
value = 2903
triggerall = (command = "a"  && command = "x") && (stateno = 109)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;----------------------------------------------------------------------------
; Ki Chains
[State -1, KiChain.W-M-S]
type = ChangeState
value = 1000
triggerall = (command = "QCB_x")||(command = "QCB_y")||(command = "QCB_z")
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = stateno = 341
;----------------------------------------------------------------------------
; Destructo Disc (Kienzan)
;For some reason I coded the chain command from the Ki Chains into the CNS
;Don't remember why and I'm not going to fix it, stop bullying me! :'(
;Ths handles the chain to the Basic throw.
[State -1, Destructo.Disc.Chain]
type = ChangeState
value = 1050
;I dont want to confuse the player with what direction Krillin is technically or visually facing during the throw. So QCF & QCB.
triggerall = (command = "QCB_x")||(command = "QCB_y")||(command = "QCB_z")||(command = "QCF_x")||(command = "QCF_y")||(command = "QCF_z")
trigger1 = (stateno = 810) && (time = [15,35])
;---------------------------------------------------------------------------
; KameHameHa Blast Up
[State -1, KHHBlast.W]
type = ChangeState
value = 1100
triggerall = (command = "QCB_a")
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = stateno = 341
[State -1, KHHBlast.M]
type = ChangeState
value = 1102
triggerall = (command = "QCB_b")
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = stateno = 341
[State -1, KHHBlast.S]
type = ChangeState
value = 1104
triggerall = (command = "QCB_c")
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = stateno = 341
;---------------------------------------------------------------------------
; Air KameHameHa Blast Down
[State -1, AKHHBlast.W]
type = ChangeState
value = 1150
triggerall = (command = "QCB_a")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
[State -1, AKHHBlast.M]
type = ChangeState
value = 1152
triggerall = (command = "QCB_b")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
[State -1, AKHHBlast.S]
type = ChangeState
value = 1154
triggerall = (command = "QCB_c")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
;---------------------------------------------------------------------------
; Solar Flare (Taioken)
[State -1, S_Flare]
type = ChangeState
value = 1200
triggerall = (command = "QCBQCF_a" || command = "QCBQCF_b" || command = "QCBQCF_c") && numhelper(12000)=0
trigger1 = (statetype = S) && ctrl
;---------------------------------------------------------------------------
; KameHame HeadButt Up
[State -1, KHHBU.W]
type = ChangeState
value = 1300
triggerall = (command = "QCF_x")
trigger1 = (statetype = S || statetype = A) && ctrl && stateno!=1305
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
trigger5 = stateno = 341
[State -1, KHHBU.M]
type = ChangeState
value = 1301
triggerall = (command = "QCF_y")
trigger1 = (statetype = S || statetype = A) && ctrl && stateno!=1305
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
trigger5 = stateno = 341
[State -1, KHHBU.S]
type = ChangeState
value = 1302
triggerall = (command = "QCF_z")
trigger1 = (statetype = S || statetype = A) && ctrl && stateno!=1305
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
trigger5 = stateno = 341
;---------------------------------------------------------------------------
; KameHame HeadButt Down
[State -1, KHHBD.W]
type = ChangeState
value = 1310
triggerall = (command = "QCDF_x")
trigger1 = (statetype = A) && ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1300,1302]) && movecontact
trigger4 = stateno = 1305
[State -1, KHHBD.M]
type = ChangeState
value = 1311
triggerall = (command = "QCDF_y")
trigger1 = (statetype = A) && ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1300,1302]) && movecontact
trigger4 = stateno = 1305
[State -1, KHHBD.S]
type = ChangeState
value = 1312
triggerall = (command = "QCDF_z")
trigger1 = (statetype = A) && ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1300,1302]) && movecontact
trigger4 = stateno = 1305
;---------------------------------------------------------------------------
; Orin Combo
[State -1, KQKick.W]
type = ChangeState
value = 1350
triggerall = (command = "QCF_a")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1300,1302]) && movecontact
trigger4 = stateno = 1305
[State -1, KQKick.M]
type = ChangeState
value = 1351
triggerall = (command = "QCF_b")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1300,1302]) && movecontact
trigger4 = stateno = 1305
[State -1, KQKick.S]
type = ChangeState
value = 1352
triggerall = (command = "QCF_c")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1300,1302]) && movecontact
trigger4 = stateno = 1305

;Orin Combo - Overhead Smash Chain
[State -1, OverheadSmash]
type = ChangeState
value = 1365
triggerall = (command = "x") || (command = "y") || (command = "z")
trigger1 = (stateno = 1360) && movecontact = [1,8]
;---------------------------------------------------------------------------
; Flip Kick
[State -1, FlipKick.W]
type = ChangeState
value = 1370
triggerall = (command = "QCDF_a")
trigger1 = (statetype = S || statetype = C || statetype = A) && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
trigger5 = (stateno = [1300,1302]) && movecontact
trigger6 = stateno = 1350 && animelem >= 6,>0 && movecontact
trigger7 = (stateno = [1351,1352]) && animelem >= 8,>0 && movecontact
trigger8 = stateno = 1305 || stateno = 1355
trigger9 = stateno = 341
[State -1, FlipKick.M]
type = ChangeState
value = 1371
triggerall = (command = "QCDF_b")
trigger1 = (statetype = S || statetype = C || statetype = A) && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
trigger5 = (stateno = [1300,1302]) && movecontact
trigger6 = stateno = 1350 && animelem >= 6,>0 && movecontact
trigger7 = (stateno = [1351,1352]) && animelem >= 8,>0 && movecontact
trigger8 = stateno = 1305 || stateno = 1355
trigger9 = stateno = 341
[State -1, FlipKick.S]
type = ChangeState
value = 1372
triggerall = (command = "QCDF_c")
trigger1 = (statetype = S || statetype = C || statetype = A) && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
trigger5 = (stateno = [1300,1302]) && movecontact
trigger6 = stateno = 1350 && animelem >= 6,>0 && movecontact
trigger7 = (stateno = [1351,1352]) && animelem >= 8,>0 && movecontact
trigger8 = stateno = 1305 || stateno = 1355
trigger9 = stateno = 341
;---------------------------------------------------------------------------
; Shoulder Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "x" && command = "y") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Advance Guard
[State -1, Advance Guard]
type = ChangeState
value = 330
triggerall = ((command = "x" && command = "y") || (command = "x" && command = "z") || (command = "z" && command = "y")) && command != "holddown" && power >= 200
trigger1 = stateno = [150, 156]
trigger2 = stateno = 341
;---------------------------------------------------------------------------
; Parry/Deflect
[State -1, Parry/Deflect]
type = null;ChangeState
value = 340
triggerall = (command = "c" && command = "z") && power >= 200
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 341 && time
;---------------------------------------------------------------------------
; Recovery Roll (backflip and energy volley)
[State -1, RecoverRoll]
type = ChangeState
value = 2600
triggerall = ((command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z"))&& alive
trigger1 = (stateno=5110) && power >= 334
;===========================================================================
; Chain Attacks
;---------------------------------------------------------------------------
; TeleCKickBack Chain
[State -1, TKick.Chain]
type = ChangeState
value = 2700
triggerall = (command = "a" && command = "x") && (var(34) = 1)
trigger1 = (stateno = 2711) && movehit && time = [3,25]

; TeleJKick Chain
[State -1, TKick2.Chain]
type = ChangeState
value = 2710
triggerall = (command = "a" && command = "x") && (var(34) = 0)
trigger1 = (stateno = 260) && movehit && time = [10,25]
trigger2 = (stateno = 810) && time = [20,35]

; TeleKick Up Chain
[State -1, TKickUp.Chain]
type = ChangeState
value = 2720
triggerall = (command = "a" && command = "x") && (var(34) = 2)
trigger1 = (stateno = 2701) && movehit && time = [3,25]

; TeleBash Down Chain
[State -1, TElbow.Chain]
type = ChangeState
value = 2730
triggerall = (command = "a" && command = "x") && (var(34) = 3)
trigger1 = (stateno = 2721) && movehit && time = [3,25]

; Back-flip and Power Kick
[State -1, BFlipKick.Chain]
type = VarSet
value = 1321
triggerall = (command = "a" || command = "b" || command = "c") && var(41) = 0
trigger1 = (stateno = 1320)
v=41
value=1
;---------------------------------------------------------------------------
;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 1700
triggerall = power < 3000 && (command != "holdfwd" && command != "holdback") && !(AILevel)
trigger1 = command = "hold_b" && command = "hold_y" && statetype = S && ctrl
;Charge Up/Power Up AI
[State -1, AI.ChargePower]
type = ChangeState
value = 1700
triggerall = power < 3000 && (command != "holdfwd" && command != "holdback") && (AILevel) && p2bodydist x > 150
trigger1 = command = "hold_b" && command = "hold_y" && statetype = S && ctrl && random < 250
;===========================================================================
;-=Basic Attacks=-
;---------------------------------------------------------------------------
; Launcher
[State -1, Launcher]
type = ChangeState
value = 260
triggerall = (command = "a" && command = "b") || (command = "b" && command = "c") || (command = "a" && command = "c") && command != "holddown"
trigger1 = (statetype = S) && ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 210 || stateno = 230 || stateno = 240) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
;---------------------------------------------------------------------------
 ;WPunch
[State -1, WPunch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
 ;Slide WPunch
[State -1, SlideWPunch]
type = ChangeState
value = 201
triggerall = command = "x" && command = "holdfwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 210) && movecontact
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
 ;Slide MPunch
[State -1,SlideMPunch]
type = ChangeState
value = 211
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 201) && movecontact
;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,219]) || (stateno = [225,240])) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Light Kick
[State -1, LKick]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
; Medium Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Standing Stong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 200) && movecontact
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno=400 || stateno=430) && movecontact
trigger3 = (stateno=200||stateno=210||stateno=230) && movecontact
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno=400 || stateno=430 || stateno=410 || stateno=440) && movecontact
trigger3 = (stateno=200||stateno=210||stateno=220||stateno=230||stateno=240) && movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=230||stateno=235) && movecontact
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno=400 || stateno=410 || stateno=430) && movecontact
trigger3 = (stateno=200||stateno=210||stateno=230||stateno=240) && movecontact
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno=400 || stateno=410||stateno=430||stateno=440) && movecontact
trigger3 = (stateno=200||stateno=205||stateno=210||stateno=220||stateno=230||stateno=240) && movecontact
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x")
trigger1 = statetype = A && ctrl 
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = (command = "z")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = 610 || stateno = 640) && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a")
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = 610) && movecontact
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = (command = "c")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = 610 || stateno = 640) && movecontact
trigger4 = (stateno = 620) && movecontact
;---------------------------------------------------------------------------
; Costume Select
[State -1, Cell Saga]
type = VarSet
trigger1 = (palno = [1,3])
v = 0
value = 0

[State -1, Saiyan Saga]
type = VarSet
trigger1 = (palno = [4,6])
v = 0
value = 20000

[State -1, Buu Saga]
type = VarSet
trigger1 = (palno != [1,6])
v = 0
value = 30000
;---------------------------------------------------------------------------
