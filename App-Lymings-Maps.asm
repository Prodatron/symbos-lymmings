;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@                                                                            @
;@                               L y m I N G S                                @
;@                      Lemmings Mobile Clone for SymbOS                      @
;@                                 LEVEL DATA                                 @
;@                                                                            @
;@               (c) 2022 by Prodatron / SymbiosiS (J�rn Mika)                @
;@                                                                            @
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


org #0000
write "f:\symbos\apps\lymings.lvl"


;==============================================================================
;### PLANETS ##################################################################
;==============================================================================

plsiz   dw plend-plnum
plnum   db 15       ;total number of planets (about 40 max currently, see additional memory in header)
pltab
dw pl00dat,pl01dat,pl02dat,pl03dat,pl04dat,pl05dat,pl06dat,pl07dat,pl08dat,pl09dat,pl10dat,pl11dat,pl12dat,pl13dat,pl14dat

pl00dat db 2,2:dw map_test:     db "Test",0
pl01dat db 4,4:dw map_tuto:     db "Tutorial",0
pl02dat db 8,3:dw map_begn:     db "Beginners",0
pl03dat db 9,2:dw map_easy:     db "It's easy",0
pl04dat db 7,1:dw map_jigsaw:   db "Jigsaw",0
pl05dat db 3,1:dw map_burn:     db "Burning World",0
pl06dat db 9,3:dw map_hardrock: db "Hard Rock",0
pl07dat db 9,2:dw map_team:     db "Teamwork",0
pl08dat db 6,4:dw map_advanced: db "Advanced",0
pl09dat db 9,1:dw map_trky:     db "Tricky",0
pl10dat db 8,3:dw map_new:      db "New",0
pl11dat db 7,2:dw map_new2:     db "New2",0
pl12dat db 9,4:dw map_bigsaw:   db "Big Saw",0
pl13dat db 9,1:dw map_bigsaw2:  db "Big Saw2",0
pl14dat db 9,3:dw map_bigsaw3:  db "Big Saw3",0


plend

;planet 1 = toxic
;planet 2 = ocean
;planet 3 = rock
;planet 4 = cratered



;race
;- 0 total, 0 min, 1 total, 1 min

;number of
;- exits
;- keys
;- exit limit (0=no)
;- key  type (0=one, 1=all)
;- race type (0=one, 1=two, 2=princesses)

;limits
;- second, minute, items

;num, xps, yps, dir, dly, cnt, rac, *r*

map_test

db 2,1,12,06,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|A       |"
db "|   O    |"
db "|  * * x |"
db "|******X*|"
db "| r R R  |"
db "|        |"
db "|        |"
db "| * ? #  |"
db "|        |"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|     oooo" ;compressed ID


;==============================================================================
;### TUTORIAL #################################################################
;==============================================================================

map_tuto

;### Input      HL=map data (number of lemmings, min to save, start delay, drop delay, key type, race type, seconds, minutes, items,
db 6,2,12,35,0,0
db 59,59,99
db "|########|"
db "|********|"
db "|        |"
db "|        |"
db "|        |"
db "|********|"
db "|########|"
db "|A       |"
db "|        |"
db "|######  |"
db "|        |"
db "|   #    |"
db "| x #####|"
db "|#X######|"

db 6,4,12,35,0,0
db 59,59,99
db "|########|"
db "|********|"
db "|        |"
db "|        |"
db "|        |"
db "|********|"
db "|########|"
db "|########|"
db "|A  #    |"
db "|   #  x o"
db "|#*## #X#|"
db "|   #*## |"
db "|##    * o"
db "|########|"

db 6,4,12,35,0,0
db 59,59,99
db "|########|"
db "|********|"
db "|        |"
db "|        |"
db "|        |"
db "|********|"
db "|########|"
db "|########|"
db "|        |"
db "| x      |"
db "|#X      |"
db "|##     a|"
db "|##      |"
db "|##    ##|"

db 6,4,12,35,0,0
db 59,59,99
db "|########|"
db "|********|"
db "|        |"
db "|        |"
db "|        |"
db "|********|"
db "|########|"
db "|########|"
db "|     * a|"
db "|   # *  |"
db "|   #####|"
db "|        |"
db "|      x |"
db "|W#####X#|"


;==============================================================================
;### BEGINNERS ################################################################
;==============================================================================

map_begn

db 6,4,12,35,0,0
db 00,02,20
db "|########|"
db "|A     **|"
db "|       *|"
db "|*****   |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|*       |"
db "|***    x|"
db "|****   X|"
db "|########|"
db "|########|"

db 6,4,12,35,0,0
db 00,02,20
db "|########|"
db "|A #     |"
db "|  *     |"
db "|####**##|"
db "|  #    *|"
db "|       *|"
db "o  #    *|"
db "|#######*|"
db "|  #     |"
db "|  *     |"
db "o  #    x|"
db "|###   #X|"
db "|########|"
db "|********|"

db 6,4,12,35,0,0
db 00,02,20
db "|**#*****|"
db "|**#*****|"
db "|  #     |"
db "|  A     |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "| # #  x |"
db "|*###**X*|"
db "|**#*****|"
db "|**#*****|"

db 6,4,12,35,0,0
db 00,02,20
db "|######a#|"
db "|        |"
db "o        |"
db "|     ###|"
db "|    ****|"
db "|########|"
db "|**    o |"
db "o *      |"
db "|###*### |"
db "|        |"
db "|        |"
db "|        |"
db "|## x ###|"
db "|###X####|"

db 6,4,12,35,0,0
db 00,02,20
db "|**    a |"
db "|*       |"
db "|*  #####|"
db "|*       |"
db "|*       |"
db "|****    |"
db "|        |"
db "o        |"
db "| x      |"
db "|#X##    |"
db "| **     |"
db "o ***  ##|"
db "|########|"
db "|########|"

db 6,4,12,35,0,0
db 00,02,20
db "|********|"
db "|###  o  |"
db "|#A      o"
db "|     ###|"
db "|        |"
db "|######  |"
db "|*****   |"
db "|**  *   o"
db "|**  ####|"
db "|*       |"
db "|        |"
db "|     x #|"
db "|#*  #X##|"
db "|########|"

db 6,4,12,35,0,0
db 00,02,20
db "| A      |"
db "|        |"
db "| #      |"
db "|#######*|"
db "|  o*****|"
db "|   *    |"
db "|  * ****|"
db "|   *****|"
db "o   *    |"
db "|****    |"
db "|        |"
db "|      x |"
db "o      X |"
db "|###*****|"

db 6,4,12,35,0,0
db 00,02,20
db "|        |"
db "|        |"
db "|A  *    o"
db "|    ###*|"
db "|    ****|"
db "|        o"
db "|    ****|"
db "|        |"
db "o   *    |"
db "|###*    |"
db "|        |"
db "|        |"
db "o       x|"
db "|###*   X|"


;==============================================================================
;### TRICKY ###################################################################
;==============================================================================

map_trky

db 8,7,12,35,1,0
db 00,4,30
db "|********|"
db "|*###a##*|"
db "|*#    #*|"
db "|*#????#*|"
db "|*#    #*|"
db "|*#    #*|"
db "o        o"
db "|##W##W##|"
db "|########|"
db "|########|"
db "|  A     |"
db "o        o"
db "|#    x #|"
db "|#####X##|"

db 8,7,12,35,0,0
db 00,4,30
db "|  R     |"
db "|      x |"
db "o    * X |"
db "|###*####|"
db "| ?R*    |"
db "|   **   o"
db "|  * ###*|"
db "|  R     |"
db "o   ?    |"
db "|  *  ?  |"
db "| A      |"
db "|        |"
db "| #      o"
db "|####?***|"

db 8,7,12,35,1,0
db 30,2,20
db "|###*****|"
db "|#A*     |"
db "|      x*|"
db "o   ***X*|"
db "|########|"
db "|**## ?*?|"
db "|     #R#|"
db "o        o"
db "|###x # #|"
db "|*##X    o"
db "|**    **|"
db "| **   ##|"
db "|  *W#W##|"
db "|#W######|"

db 8,7,12,35,1,0
db 00,6,25
db "|   *    |"
db "| A ** ?a|"
db "o   ***  |"
db "|*#**####|"
db "|    *R  |"
db "o   ?* ? |"
db "|*M******|"
db "|     R  |"
db "|   **   o"
db "|*M** *? |"
db "|        |"
db "|x  *    |"
db "|X **    o"
db "|#######*|"

db 8,7,12,35,0,0
db 00,4,30
db "| A      |"
db "|      a |"
db "| #  *   o"
db "|    **#*|"
db "|   *    |"
db "|   * x  o"
db "|*W** X**|"
db "|   * >  |"
db "x   >    |"
db "|*W** *  |"
db "|    * x |"
db "| ? *? X |"
db "x  ***   |"
db "|****    |"

db 8,8,12,35,0,0
db 00,03,30
db "|        |"
db "| x    A |"
db "| X  *   |"
db "|    **#*|"
db "|  R ****|"
db "o   *    |"
db "| ?* ****|"
db "|    * R |"
db "|   **   o"
db "| +    * |"
db "|     ?  |"
db "|   #*  a|"
db "o  ##**  o"
db "|**?***?#|"

db 8,8,12,35,1,0
db 00,4,16
db "|*######*|"
db "|A*####*a|"
db "| *?##?* |"
db "o  ****  o"
db "|#  **  #|"
db "|*#    #*|"
db "|**#  #**|"
db "|*      *|"
db "|  x##x  |"
db "|  X##X  |"
db "o ###### o"
db "|##****##|"
db "|#******#|"
db "|********|"

db 8,8,12,35,1,0
db 00,4,41
db "|*?    ?*|"
db "|*a    #*|"
db "|*      *|"
db "|        |"
db "|    x   |"
db "|  ?*X?  |"
db "o        o"
db "|        |"
db "|  W  W  |"
db "| ?    A |"
db "|        |"
db "| *#**#? |"
db "o        o"
db "|#W####W#|"

db 8,8,12,35,1,0
db 00,6,50
db "|  <Aa>  |"
db "|x *  * x|"
db "|X #  **X|"
db "| ?*  # ?|"
db "|* *  >  |"
db "|*##  ##*|"
db "|* <  ***|"
db "|o?#  ##*|"
db "|  *  > ?|"
db "| ##  #*#|"
db "|        |"
db "|W#    #W|"
db "|*#W##W#*|"
db "|***##***|"


;==============================================================================
;### TEAMWORK #################################################################
;==============================================================================

map_team

db 8,6,12,35,1,1
db 00,4,30
db "|    *   |"
db "|    *x  |"
db "o ?  *1  |"
db "|****    |"
db "|        |"
db "|  ?   x o"
db "|*^** *2*|"
db "|   *    |"
db "o   **   |"
db "|*W*  G  |"
db "|   *    |"
db "|   *  c |"
db "|C  **   o"
db "|    *?#*|"

db 8,6,12,35,0,1
db 00,4,30
db "|        |"
db "|    ?  x|"
db "o       1|"
db "|********|"
db "|    ****|"
db "|  x     o"
db "|**2     |"
db "| R      |"
db "o    *   |"
db "| *      |"
db "|A       |"
db "|      b |"
db "|# ?     o"
db "|    *###|"

db 8,6,12,35,0,1
db 00,4,30
db "|        |"
db "|x  ** ? |"
db "|1 ****  o"
db "|********|"
db "|    *   |"
db "o  x *   |"
db "|**2 *W**|"
db "|        |"
db "|  ?*    o"
db "|  ? *W**|"
db "|       B|"
db "| A  #   |"
db "o    ## #|"
db "|*#**    |"

db 8,6,12,35,0,1
db 00,4,30
db "|        |"
db "| x *    |"
db "| 2 *    o"
db "|****    |"
db "|        |"
db "o x?     |"
db "|*1* **G*|"
db "|        |"
db "|    *   o"
db "| G   G? |"
db "|        |"
db "|   #   c|"
db "o  ##    |"
db "|    ####|"

db 8,6,12,35,1,1
db 00,4,30
db "|        |"
db "|       x|"
db "o       2|"
db "|*###****|"
db "|        |"
db "| x ?*   o"
db "|*1*  G  |"
db "|    * R |"
db "o   **   |"
db "|*M**  * |"
db "|    *   |"
db "| B  *  a|"
db "|    *   o"
db "|*#***?*#|"

db 8,6,12,35,1,1
db 00,4,30
db "|        |"
db "|     x  |"
db "o     1  |"
db "|********|"
db "|      R |"
db "|  x *   o"
db "|**2 ** *|"
db "|   ?    |"
db "o   *    |"
db "|*M**? * |"
db "|B      a|"
db "|   *    |"
db "|# **    o"
db "|        |"

db 8,6,12,35,0,1
db 00,4,30
db "|      x |"
db "|      1 |"
db "o        |"
db "|        |"
db "|    * R |"
db "|  x *   o"
db "|**2   * |"
db "|   **   |"
db "o    *   |"
db "|*M****M*|"
db "|C       |"
db "|    *   |"
db "|#   **  o"
db "|****###*|"

db 8,6,12,35,1,1
db 00,4,30
db "|        |"
db "|x ?##   |"
db "|1 ####  o"
db "|####****|"
db "|  R*    |"
db "o   * x  |"
db "|  *  2**|"
db "|   ?  R |"
db "| ?  *   o"
db "|**M*  * |"
db "|C   *   |"
db "|    *  c|"
db "o    *   |"
db "|*?*****#|"

db 8,6,12,35,1,1
db 00,4,30
db "|        |"
db "|  x  ?  |"
db "|  1     o"
db "|********|"
db "|     R R|"
db "o   *  x |"
db "|###*  2 |"
db "|   *****|"
db "|   *    o"
db "|        |"
db "|        |"
db "| A *#  b|"
db "o  ?*##  |"
db "|*#**####|"


;==============================================================================
;### IT'S EASY ################################################################
;==============================================================================

map_easy

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "o      x*|"
db "|##***#X#|"
db "|    ****|"
db "|      **|"
db "o      o*|"
db "|**      |"
db "|####  ##|"
db "|***   **|"
db "|**    **|"
db "|A     **|"
db "|      **|"
db "|********|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|      a |"
db "o    *   |"
db "|###***#*|"
db "|  r*    |"
db "o   *    |"
db "|********|"
db "|  r *   |"
db "|    *   o"
db "|  * ****|"
db "|        |"
db "|x       |"
db "|X       o"
db "|#######*|"

db 8,6,12,35,0,0
db 00,4,30
db "|##o     |"
db "o #     x|"
db "|  *#  #X|"
db "|########|"
db "|#r  *   |"
db "|    *   o"
db "|     ***|"
db "| #      |"
db "|    ####|"
db "o        |"
db "|####    |"
db "|A       o"
db "|       #|"
db "|***#####|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|    o   o"
db "| x      |"
db "|#X#***##|"
db "|  *     |"
db "o  *     |"
db "|  ***   o"
db "|****####|"
db "|*       |"
db "o        |"
db "|       a|"
db "| #      |"
db "|     ***|"
db "|********|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|  x     |"
db "|##X#### |"
db "|******# |"
db "|******# |"
db "|******# |"
db "|******# o"
db "|******# |"
db "|*****   |"
db "|#A##    |"
db "|        |"
db "|     *  o"
db "|####**##|"
db "|########|"

db 8,6,12,35,0,0
db 00,4,30
db "|**#    *|"
db "|#  r    |"
db "|        |"
db "o      a#|"
db "|* #    #|"
db "|*## ####|"
db "|* ###  #|"
db "|        |"
db "o        |"
db "|#**   x |"
db "|    * X |"
db "|   ##   |"
db "|*  #####|"
db "|########|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "| A *    |"
db "|   *    o"
db "|#######*|"
db "|      o |"
db "|        o"
db "|     ** |"
db "|     o  |"
db "o        |"
db "|********|"
db "|  r     |"
db "|    #  x|"
db "o    ## X|"
db "|###*####|"

db 8,6,12,35,0,0
db 00,4,30
db "|A    ***|"
db "|       *|"
db "|        o"
db "|####**##|"
db "|***  R  |"
db "|**      |"
db "|**   *  o"
db "|*   ##**|"
db "|        |"
db "o        |"
db "|########|"
db "|    o#  |"
db "o     # x|"
db "|  ##** X|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "o    * a |"
db "|###*    |"
db "|        |"
db "o        |"
db "|********|"
db "|   * o  |"
db "|  ***   o"
db "| *******|"
db "|        |"
db "|  x*    |"
db "|  X*    o"
db "|#######*|"


;==============================================================================
;### JIGSAW ###################################################################
;==============================================================================

map_jigsaw

db 8,6,12,35,0,0
db 00,4,30
db "|    *###|"
db "|       a|"
db "o        |"
db "|###*#*##|"
db "|        |"
db "o        o"
db "|##***###|"
db "| o **o  |"
db "|        |"
db "| *   *  |"
db "|      * |"
db "|x  #  o |"
db "|X ##*   o"
db "|********|"

db 8,6,12,35,0,0
db 00,4,30
db "|       a|"
db "|    *   |"
db "o    ** #|"
db "|****    |"
db "|  o     |"
db "o        |"
db "|********|"
db "|  o     |"
db "|   *    o"
db "|  * ###*|"
db "|      * |"
db "|  x*  o |"
db "|  X*    o"
db "|######**|"

db 8,6,12,35,0,0
db 00,4,30
db "|A       |"
db "|   #    |"
db "|# ##    o"
db "|****###*|"
db "|        |"
db "|        o"
db "|********|"
db "|  o   o |"
db "o        |"
db "|****  * |"
db "|  *     |"
db "|  o  x  |"
db "o     X  |"
db "|##******|"

db 8,6,12,35,0,0
db 00,4,30
db "|       a|"
db "|    #   |"
db "o    ## #|"
db "|###*    |"
db "|  o   o |"
db "o        |"
db "|********|"
db "|  o**o  |"
db "|   **   o"
db "|  *  *  |"
db "|     *  |"
db "|   * o  |"
db "| x *    o"
db "| X  #*#*|"

db 8,6,12,35,0,0
db 00,4,30
db "|  *     |"
db "|  o   x |"
db "o      X |"
db "|##**    |"
db "| o   o  |"
db "|        o"
db "| *  ****|"
db "| o    o |"
db "o   *    |"
db "| *    * |"
db "|        |"
db "|   #    |"
db "|A ##    o"
db "|    ****|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|   #    |"
db "|A ##    o"
db "|    ###*|"
db "| o  *   |"
db "|   **   o"
db "|********|"
db "| o    o |"
db "o   *    |"
db "|****  * |"
db "| *      |"
db "| o     x|"
db "o       X|"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|   ??? x|"
db "o    ** X|"
db "|****    |"
db "|********|"
db "|        |"
db "|        |"
db "|#ooo?oo#|"
db "o        o"
db "|#******#|"
db "|        |"
db "| A      |"
db "|        o"
db "|####****|"


;==============================================================================
;### HARD ROCK ################################################################
;==============================================================================

map_hardrock

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|    *  x|"
db "o    ** X|"
db "|###*    |"
db "|       *|"
db "|   *  * o"
db "|     ***|"
db "|  R    *|"
db "o   *  **|"
db "|  *  ***|"
db "|        |"
db "|A  #    |"
db "|  ##    |"
db "|#***###*o"

db 8,6,12,35,0,0
db 00,4,30
db "| A      |"
db "|        |"
db "| #      o"
db "|********|"
db "|  R * R |"
db "|   **   o"
db "|******R*|"
db "|        |"
db "o        |"
db "|********|"
db "|  R     |"
db "|    * x |"
db "o    * X |"
db "|****####|"

db 8,6,12,35,0,0
db 00,4,30
db "|  R     |"
db "|    *  x|"
db "o    *  X|"
db "|****    |"
db "|  R   R |"
db "|   **   o"
db "|  * ****|"
db "|  R   R |"
db "o    *   |"
db "|  *   * |"
db "|        |"
db "|   #    |"
db "|A ##    o"
db "|    ###*|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|   *    o"
db "|A   ****|"
db "|  R*  R |"
db "|   *    o"
db "|****  * |"
db "|      R |"
db "|   *    |"
db "|****  * |"
db "|    *   |"
db "|    *  x|"
db "|    *  X|"
db "|###*****|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|  x     |"
db "|  X     o"
db "|#######*|"
db "|  R   R |"
db "o        |"
db "|****  * |"
db "|        |"
db "|        o"
db "|*****  *|"
db "|        |"
db "|    #  a|"
db "o    ##  |"
db "|###*####|"

db 8,6,12,35,1,0
db 00,4,30
db "|       x|"
db "|  ?#*? X|"
db "o ?##*   |"
db "|*###****|"
db "|    ****|"
db "|        o"
db "|**#*    |"
db "| R      |"
db "o   **   |"
db "| *   #  |"
db "|    *   |"
db "|A  **   |"
db "|  ***   o"
db "|#*******|"

db 8,6,12,35,1,0
db 00,4,30
db "|        |"
db "|  ??*  a|"
db "o    **  |"
db "|###*    |"
db "|    *R  |"
db "o ?  *   |"
db "|*W** *  |"
db "|  R  R  |"
db "|   **   o"
db "|  * ****|"
db "|        |"
db "|  x *   |"
db "|  X*?*  o"
db "|#######*|"

db 6,5,12,35,0,0
db 00,4,30
db "|        |"
db "|x  *    |"
db "|X **    o"
db "|####****|"
db "|        |"
db "o  x   x |"
db "|**X  *X*|"
db "|  R *R  |"
db "|    *   o"
db "|  *  *  |"
db "|       a|"
db "|A  *#   |"
db "o  **## #|"
db "|#***####|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|     x  |"
db "o     X  |"
db "|********|"
db "|##****##|"
db "|  RR*?  |"
db "|    RR  |"
db "|        |"
db "o        o"
db "|########|"
db "|        |"
db "| A      |"
db "|        o"
db "|####****|"


;==============================================================================
;### ADVANCED #################################################################
;==============================================================================

map_advanced

db 8,6,12,35,1,0
db 00,4,30
db "|        |"
db "|A       |"
db "|      ? o"
db "|    ****|"
db "|  R     |"
db "|   *  x o"
db "|  *  *X*|"
db "| R    ? |"
db "o        |"
db "|**** <> |"
db "|        |"
db "|        |"
db "o      x |"
db "|****  X |"

db 8,6,12,35,1,0
db 00,4,30
db "|    *   |"
db "|A  #*   |"
db "|  ##*   o"
db "|#######*|"
db "|  ? *   |"
db "|    *   o"
db "|******W*|"
db "|   **   |"
db "o   **   |"
db "|  G   G |"
db "|    ?x  |"
db "| ?   X  |"
db "o    * ? |"
db "|###*    |"

db 8,6,12,35,1,0
db 00,4,30
db "|A       |"
db "|        |"
db "|#       o"
db "|####****|"
db "|    ?<> |"
db "|    *   o"
db "| ^  ****|"
db "|     <> |"
db "o   *    |"
db "| #?     |"
db "| R      |"
db "|        |"
db "o     x  |"
db "|*### X  |"

db 8,6,12,35,1,0
db 00,4,35
db "|   *  R |"
db "|x  *    |"
db "|X ?* ?  o"
db "|####****|"
db "|     R  |"
db "o   *    |"
db "|**G*****|"
db "| R   R  |"
db "|  ?*    o"
db "| *   *? |"
db "|       a|"
db "|   #*   |"
db "o  ##** #|"
db "|***?    |"

db 8,6,12,35,1,0
db 00,4,30
db "|        |"
db "|x  #* A |"
db "|X ##*   |"
db "|  ? **#*|"
db "| R *    |"
db "o   *  x |"
db "|**** *X*|"
db "|     R  |"
db "|   ?*   o"
db "| *W* *  |"
db "|        |"
db "|   #   a|"
db "o  ##    o"
db "|*******#|"

db 6,5,12,35,1,0
db 00,4,30
db "|        |"
db "|   #*?  |"
db "o  ##**  o"
db "|*###*###|"
db "|        |"
db "o  x  x  |"
db "|**X? X**|"
db "| R    R |"
db "|  ??    o"
db "| * #  * |"
db "|   #*   |"
db "| x #*  a|"
db "| X #*   |"
db "|####    |"


;==============================================================================
;### BURNING WORLD ############################################################
;==============================================================================

map_burn

db 8,6,12,35,1,0
db 00,4,30
db "|        |"
db "|       a|"
db "o        |"
db "|*#######|"
db "|        |"
db "o      x |"
db "|  >  *X*|"
db "|    *   |"
db "| <> *   o"
db "|   ?    |"
db "|   *?   |"
db "|  x* ?  |"
db "|  X*    o"
db "|*****###|"

db 8,6,12,35,1,0
db 00,4,30
db "| A      |"
db "|   ** a |"
db "o # **   |"
db "|*#######|"
db "| ?  *   |"
db "o  x *   |"
db "|**X **W*|"
db "|        |"
db "| <> *   o"
db "|     ^  |"
db "|  x     |"
db "|  X     |"
db "|   ?    o"
db "|********|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|      a |"
db "o        |"
db "|****####|"
db "|    * ? |"
db "o    *   |"
db "|*****^**|"
db "|    *   |"
db "|   **<> o"
db "|  # ****|"
db "|        |"
db "|x  #    |"
db "|X ## ^  o"
db "|********|"


;==============================================================================
;### NEW ######################################################################
;==============================================================================

map_new

db 8,6,12,35,0,0
db 00,4,30
db "|  r     |"
db "|       x|"
db "o    *  X|"
db "|###*    |"
db "|        |"
db "|   *    o"
db "|**M* G  |"
db "|    *   |"
db "o   **   |"
db "|     *W*|"
db "|        |"
db "|A  *    |"
db "|  **    o"
db "|#***###*|"

db 8,6,12,35,1,0
db 00,4,30
db "|        |"
db "|       x|"
db "o       X|"
db "|********|"
db "|    *   |"
db "| x  *   o"
db "|*X* *G**|"
db "|     R  |"
db "o ?  *   |"
db "|**M* *  |"
db "|        |"
db "|A  *    |"
db "|  *?*   o"
db "|####****|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|x       |"
db "|X       o"
db "|    *###|"
db "|        |"
db "o   * x  |"
db "|**M* X**|"
db "|    ****|"
db "|        o"
db "|**M*    |"
db "|        |"
db "| a ** A |"
db "o  ***   |"
db "|*#**####|"

db 8,6,12,35,1,0
db 00,4,30
db "|        |"
db "|    ?   |"
db "o        o"
db "|*****###|"
db "|    *   |"
db "o  x *   |"
db "|**X *#**|"
db "|        |"
db "|   *?   o"
db "|*W*#  ? |"
db "|   #    |"
db "|  x#*   |"
db "|  X#*  a|"
db "|***#    |"

db 6,5,12,35,1,0
db 00,4,40
db "|        |"
db "|   #  ? |"
db "|A?##    o"
db "|    ****|"
db "|        |"
db "|  x   x o"
db "|**X  *X*|"
db "|  R   ? |"
db "o    *   |"
db "|  *  +  |"
db "|        |"
db "|      x |"
db "o      X |"
db "|    ****|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|  x     |"
db "|  X*    |"
db "|    ****|"
db "|*   * R |"
db "|   **   |"
db "|  #   * |"
db "| R * R* |"
db "|   **   |"
db "| *   *  |"
db "|A*      |"
db "|   **   |"
db "|   *** a|"
db "|****    |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|A  #    |"
db "|  ##    o"
db "|#***###*|"
db "|o# **R  |"
db "|   **   o"
db "|********|"
db "|      R |"
db "|        |"
db "|###   * |"
db "|  *     |"
db "|  o #  x|"
db "|    ## X|"
db "|##**####|"

db 8,6,12,35,0,0
db 00,4,30
db "|    *   |"
db "|    o   |"
db "| x      o"
db "|#X##*###|"
db "|  R     |"
db "o        |"
db "|***#    |"
db "|      R |"
db "|**      o"
db "|#***  **|"
db "|        |"
db "|    *   |"
db "o    ** a|"
db "|*##*    |"


map_new2

db 8,6,12,35,1,0
db 00,4,30
db "|        |"
db "|x  *    |"
db "|X **    o"
db "| ?  ****|"
db "| ?      |"
db "o   ?  x |"
db "|*^** *X*|"
db "|        |"
db "|        o"
db "|*W* ?   |"
db "|        |"
db "|   #*   |"
db "o  ##* a |"
db "|****    |"

db 6,5,12,35,1,0
db 00,4,30
db "|A       |"
db "|   ## A |"
db "|# ####  o"
db "|    **#*|"
db "|   ?    |"
db "|  x   x o"
db "|**X  *X*|"
db "|  R  R  |"
db "o   *    |"
db "|  * ****|"
db "|   ?*x  |"
db "|    *X  |"
db "o    *   |"
db "|****  ? |"

db 8,6,12,35,0,0
db 00,4,30
db "|    *   |"
db "| A  *   |"
db "|    *   o"
db "|####****|"
db "|        |"
db "|  x     o"
db "|**X *W* |"
db "|    *   |"
db "o    *   |"
db "|*M** *W*|"
db "|        |"
db "|   **  x|"
db "o  ***  X|"
db "|###*####|"


db 8,6,12,35,0,1
db 00,4,30
db "|        |"
db "|x  ** ? |"
db "|2 ****  o"
db "|********|"
db "|    *   |"
db "o  x *   |"
db "|**1 *W**|"
db "|        |"
db "|  ?*    o"
db "|  ? *M**|"
db "|       c|"
db "| C  #   |"
db "o    ## #|"
db "|*#**    |"

db 8,6,12,35,0,0
db 00,4,30
db "|A       |"
db "| ?      |"
db "|#       o"
db "| ?? ****|"
db "|  R     |"
db "|        o"
db "|  * *+**|"
db "|   **   |"
db "o   **   |"
db "|WG** +  |"
db "|        |"
db "| ? #    |"
db "o  ##  x |"
db "|###*  X |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|  ?**  x|"
db "o  **** X|"
db "|###     |"
db "|  ?     |"
db "|   * x  o"
db "|  G  X**|"
db "|        |"
db "o   *?   |"
db "|**M***M*|"
db "|        |"
db "| A      |"
db "|        o"
db "|*#****?*|"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|     x  |"
db "o    *X  |"
db "|**M*    |"
db "|##****##|"
db "|    *R  |"
db "| ?  R   |"
db "|        |"
db "o        o"
db "|########|"
db "|        |"
db "|A       |"
db "|        o"
db "|#*******|"


map_bigsaw

db 8,6,12,35,0,0
db 00,4,30
db "| A      |"
db "|    #  x|"
db "| #  ## X|"
db "|********|"
db "|      O |"
db "| x ?    o"
db "|*X*   * |"
db "| O  ?   |"
db "o    *  *|"
db "| *    ^ |"
db "|        |"
db "|   ?    |"
db "o  ?     o"
db "|###*****|"

db 8,6,12,35,0,1
db 00,4,30
db "|        |"
db "|   # x  |"
db "o ?## 2  |"
db "|****    |"
db "|     O  |"
db "|  x *   o"
db "|**1 ****|"
db "| R * O  |"
db "o   ** ? |"
db "| *   *  |"
db "|C       |"
db "|   **   |"
db "|# ****  o"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|      * |"
db "|x     O |"
db "|X  *    o"
db "|****##**|"
db "|        |"
db "o   *    |"
db "|*M****G*|"
db "|        |"
db "|   **   o"
db "| *W**M**|"
db "|       a|"
db "|        |"
db "o       #|"
db "|****    |"

db 8,6,12,35,0,1
db 00,4,30
db "|        |"
db "|x  # ?  |"
db "|1 ##    o"
db "|****  ? |"
db "|        |"
db "o x      |"
db "|*2* *W* |"
db "| O  *   |"
db "|    *   o"
db "| *  *W* |"
db "|        |"
db "| C  #  c|"
db "o    ##  |"
db "|*#**####|"

db 8,6,12,35,0,1
db 00,4,30
db "|A     b |"
db "|        |"
db "o    * # |"
db "|###*####|"
db "|  ?   O |"
db "o x  *   |"
db "|*2* ****|"
db "|   ?    |"
db "|    *   o"
db "|**G***M*|"
db "|  x     |"
db "|  1     |"
db "| ?      o"
db "|    ###*|"

db 8,6,12,35,0,0
db 00,4,30
db "|     *  |"
db "|x    O  |"
db "|X  *?   o"
db "|    ****|"
db "|        |"
db "|     ?  |"
db "o   ?*###|"
db "|  R * O |"
db "|    *?  o"
db "|****  * |"
db "|   *   a|"
db "|   *    |"
db "o   *?  #|"
db "|*#######|"

db 6,5,12,35,0,0
db 00,4,30
db "|        |"
db "|    *  a|"
db "o   ?**  |"
db "|****    |"
db "|        |"
db "o x   x  |"
db "|*X* ?X**|"
db "|   ?*O  |"
db "|    *   o"
db "| *W*****|"
db "|        |"
db "|  x     |"
db "|  X     o"
db "|********|"

db 8,6,12,35,1,0
db 00,4,30
db "|  *     |"
db "|  O   x |"
db "o      X |"
db "|****??  |"
db "|**   O  |"
db "|***     o"
db "|**** *  |"
db "|  O?  ? |"
db "o   *    |"
db "|  * ?^  |"
db "|        |"
db "|A   #   |"
db "|    ##  o"
db "|#*******|"

db 8,6,12,35,0,0
db 00,4,30
db "| A      |"
db "|     ?  |"
db "o #      o"
db "|********|"
db "|   * O  |"
db "| ? *?   o"
db "|**^*****|"
db "|  O  O  |"
db "o   *    |"
db "|****#*? |"
db "|    #   |"
db "|A  ## x |"
db "|  ### X |"
db "|#####***|"


map_bigsaw2

db 8,6,12,35,1,1
db 00,4,30
db "|        |"
db "| ? #*  x|"
db "o  ##** 2|"
db "|****####|"
db "|   *    |"
db "|   *  x o"
db "|**G* *1*|"
db "|   ??O  |"
db "o   *    |"
db "|**M* * *|"
db "| A  * b |"
db "|    *   |"
db "| #  * # o"
db "|#### ?  |"

db 8,6,12,35,1,1
db 00,4,30
db "|C       |"
db "|      x |"
db "|#     1 |"
db "|        |"
db "|      O |"
db "| x      o"
db "|*2*  ?* |"
db "|    ?   |"
db "o    *   |"
db "|**#*  + |"
db "|    ?   |"
db "| C      |"
db "o        o"
db "|*#**    |"

db 8,6,12,35,1,1
db 00,4,30
db "|        |"
db "|x  *    |"
db "|2?*?    o"
db "|####****|"
db "|      O |"
db "o  x?    |"
db "|**1 ****|"
db "|  O     |"
db "| ? *    o"
db "|  *  *W*|"
db "|       a|"
db "| B  *   |"
db "o    *  #|"
db "|*#******|"

db 8,6,12,35,1,1
db 00,4,30
db "|    *   |"
db "|    *? x|"
db "o ?  *  2|"
db "|****    |"
db "|  R     |"
db "|     x  o"
db "|  *  1**|"
db "|     O  |"
db "o        |"
db "|**M* *  |"
db "|        |"
db "|A  #  b |"
db "|  ##    o"
db "|####**#*|"

db 8,6,12,35,0,1
db 00,4,30
db "|        |"
db "|x  #    |"
db "|1 ##    o"
db "|####    |"
db "|    *O  |"
db "o  x *   |"
db "|**2  *  |"
db "|        |"
db "|        o"
db "|  #   # |"
db "|        |"
db "|       c|"
db "o        |"
db "|    ####|"

db 8,6,12,35,1,1
db 00,4,30
db "|        |"
db "|A  *#  b|"
db "|  **##  o"
db "|########|"
db "|      R |"
db "|  x *   o"
db "|**2 ****|"
db "| R *  O |"
db "o   *    |"
db "| *  ****|"
db "|   ?    |"
db "|    *  x|"
db "o       1|"
db "|###**?**|"

db 8,6,12,35,1,0
db 00,4,30
db "|    *   |"
db "|    *   |"
db "o    *?a |"
db "|###*    |"
db "| R  ?   |"
db "o     x  |"
db "|**** X**|"
db "|  O**O  |"
db "|   **   o"
db "|  *  *  |"
db "|        |"
db "|  x ?   |"
db "|  X  ?  o"
db "|    ****|"

db 8,6,12,35,0,0
db 00,4,30
db "|      * |"
db "|x   ? O |"
db "|X       o"
db "|********|"
db "|  O     |"
db "o        |"
db "|********|"
db "|  O     |"
db "|        o"
db "|******  |"
db "|    *   |"
db "|    * a |"
db "o    *   |"
db "|###***#*|"

db 8,6,12,35,1,1
db 00,4,30
db "|   *    |"
db "|  x*    |"
db "|  1*    o"
db "|****    |"
db "|    *   |"
db "o x ?*   |"
db "|*2*  ^  |"
db "| O  ?   |"
db "|        o"
db "| *  *W* |"
db "| A      |"
db "|        |"
db "o #    b |"
db "|        |"


map_bigsaw3

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"

db 8,6,12,35,0,0
db 00,4,30
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
db "|        |"
