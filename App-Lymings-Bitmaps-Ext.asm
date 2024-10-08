;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@                                                                            @
;@                               L y m I N G S                                @
;@                      Lemmings Mobile Clone for SymbOS                      @
;@                           BITMAP DATA (EXTERNAL)                           @
;@                                                                            @
;@               (c) 2022 by Prodatron / SymbiosiS (J�rn Mika)                @
;@                            Planets by Master484                            @
;@                                                                            @
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


org #0000
write "f:\symbos\apps\lymings.dat"

dw bmp_tabend-bmp_tabbeg
dw bmp_datend-bmp_datbeg

bmp_tabbeg

dw gamlog,ui_pause,ui_speed,ui_speedr,ui_quit,ui_timer,ui_items
dw gmp_end_u,gmp_end_d
dw men_planet1,men_planet2,men_planet3,men_planet4
dw men_line,men_flag,men_arwrgt,men_arwlft,men_arwup,men_arwdw

bmp_tabend

org #0000
bmp_datbeg


;==============================================================================
;### MISC #####################################################################
;==============================================================================

;upper border
gmp_end_u   db 60,120,2:dw $+7,$+4,60*2:db 5
db #11,#11,#11,#32,#22,#23, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #32,#22,#23,#11,#11,#11
db #71,#11,#11,#13,#33,#31, #13,#33,#33,#33,#33,#31, #13,#33,#33,#33,#33,#31, #13,#33,#33,#33,#33,#31, #13,#33,#33,#33,#33,#31, #13,#33,#33,#33,#33,#31, #13,#33,#33,#33,#33,#31, #13,#33,#33,#33,#33,#31, #13,#33,#33,#33,#33,#31, #13,#33,#31,#11,#11,#11

;lower border
gmp_end_d   db 60,120,3:dw $+7,$+4,60*3:db 5
db #17,#17,#17,#10,#00,#07, #10,#00,#00,#00,#00,#01, #10,#00,#00,#00,#00,#01, #10,#00,#00,#00,#00,#01, #10,#00,#00,#00,#00,#01, #10,#00,#00,#00,#00,#01, #10,#00,#00,#00,#00,#01, #10,#00,#00,#00,#00,#01, #10,#00,#00,#00,#00,#01, #32,#22,#23,#11,#11,#11
db #71,#11,#11,#32,#22,#23, #33,#33,#33,#33,#33,#30, #33,#33,#33,#33,#33,#30, #33,#33,#33,#33,#33,#30, #33,#33,#33,#33,#33,#30, #33,#33,#33,#33,#33,#30, #33,#33,#33,#33,#33,#30, #33,#33,#33,#33,#33,#30, #33,#33,#33,#33,#33,#30, #32,#22,#23,#11,#11,#11
db #11,#11,#11,#32,#22,#23, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #33,#33,#33,#33,#33,#33, #13,#33,#31,#11,#11,#11


;==============================================================================
;### UI BITMAPS ###############################################################
;==============================================================================

;logo
gamlog db 52,104,48:dw $+7:dw $+4,52*48:db 5
db #66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#66,#66,#66,#61,#11,#11,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#66,#66,#66,#1F,#FF,#FF,#F1,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#11,#11,#11,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#66,#66,#11,#FF,#11,#11,#FF,#F1,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#61,#FF,#FF,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#66,#61,#FF,#F1,#CC,#CC,#11,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#1F,#F1,#11,#1F,#F1,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#66,#1F,#F1,#1C,#CC,#CC,#CC,#1F,#F1,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#61,#FF,#1C,#CC,#C1,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#61,#FF,#11,#CC,#CC,#CC,#CC,#C1,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#61,#F1,#CC,#CC,#CC,#1F,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#1F,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#11,#11,#11,#F1,#CC,#CC,#CC,#1F,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#1F,#1C,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#16,#66,#66,#66,#66,#66,#66,#66,#61,#11,#11,#11,#FF,#FF,#FF,#FF,#1C,#CC,#C1,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#61,#FF,#1C,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#16,#66,#66,#66,#66,#11,#11,#11,#1F,#FF,#FF,#FF,#F1,#11,#1F,#FF,#F1,#11,#1F,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#11,#11,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#61,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#16,#66,#66,#66,#61,#FF,#FF,#FF,#FF,#11,#11,#F1,#1C,#CC,#C1,#FF,#FF,#FF,#FF,#F1,#11,#11,#16,#66,#66,#66,#66,#66,#66,#66,#11,#FF,#FF,#16,#66,#66,#66,#66,#66,#66,#66
db #66,#61,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#C1,#FF,#16,#11,#11,#11,#1F,#F1,#11,#11,#F1,#CC,#CC,#1C,#CC,#CC,#CC,#1F,#F1,#11,#1F,#FF,#FF,#FF,#F1,#11,#11,#11,#66,#66,#66,#61,#FF,#F1,#1F,#F1,#66,#66,#66,#66,#66,#66,#66
db #66,#61,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#C1,#FF,#F1,#FF,#FF,#FF,#FF,#1C,#CC,#CC,#1C,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#1C,#CC,#C1,#FF,#11,#11,#FF,#FF,#FF,#FF,#16,#11,#11,#1F,#F1,#1C,#C1,#F1,#66,#66,#66,#66,#66,#66,#66
db #66,#61,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#FF,#FF,#FF,#FF,#11,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#11,#CC,#CC,#C1,#11,#CC,#CC,#1F,#11,#11,#1F,#F1,#FF,#FF,#FF,#1C,#CC,#C1,#F1,#66,#66,#66,#66,#66,#66,#66
db #66,#61,#FF,#1C,#CC,#CC,#CC,#CC,#C1,#FF,#11,#1F,#FF,#F1,#CC,#11,#CC,#CC,#CC,#CC,#CC,#CC,#C1,#CC,#CC,#CC,#1C,#CC,#CC,#C1,#CC,#CC,#CC,#C1,#CC,#CC,#C1,#FF,#F1,#11,#11,#CC,#C1,#1F,#F1,#11,#11,#11,#16,#66,#66,#66
db #66,#61,#FF,#F1,#CC,#CC,#CC,#CC,#1F,#F1,#CC,#C1,#FF,#1C,#CC,#CC,#1C,#CC,#CC,#11,#CC,#CC,#1F,#11,#CC,#CC,#1C,#CC,#CC,#C1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#1C,#CC,#CC,#CC,#C1,#FF,#FF,#FF,#FF,#FF,#F1,#16,#66,#66
db #66,#66,#1F,#FF,#1C,#CC,#CC,#C1,#FF,#1C,#CC,#CC,#1F,#1C,#CC,#CC,#1C,#CC,#C1,#FF,#1C,#CC,#1F,#F1,#CC,#CC,#C1,#CC,#CC,#C1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#11,#CC,#C1,#1C,#CC,#CC,#11,#11,#1F,#F1,#11,#FF,#F1,#66,#66
db #66,#66,#61,#FF,#1C,#CC,#CC,#C1,#F1,#1C,#CC,#CC,#1F,#1C,#CC,#CC,#1C,#CC,#C1,#FF,#1C,#CC,#C1,#F1,#CC,#CC,#C1,#CC,#CC,#C1,#1C,#CC,#CC,#C1,#CC,#CC,#CC,#1C,#CC,#1F,#F1,#CC,#CC,#1C,#CC,#C1,#1C,#CC,#11,#FF,#16,#66
db #66,#66,#66,#1F,#1C,#CC,#CC,#C1,#F1,#CC,#CC,#CC,#1F,#1C,#CC,#CC,#1C,#CC,#C1,#F1,#CC,#CC,#C1,#1C,#CC,#CC,#C1,#CC,#CC,#C1,#F1,#CC,#CC,#1F,#1C,#CC,#CC,#1C,#CC,#1F,#F1,#CC,#CC,#1C,#CC,#CC,#CC,#CC,#CC,#1F,#F1,#66
db #66,#66,#66,#1F,#1C,#CC,#CC,#C1,#F1,#CC,#CC,#CC,#11,#1C,#CC,#CC,#C1,#CC,#CC,#1C,#CC,#CC,#CC,#1C,#CC,#CC,#C1,#CC,#CC,#CC,#1C,#CC,#CC,#1F,#1C,#CC,#CC,#1C,#CC,#C1,#1C,#CC,#C1,#CC,#CC,#CC,#CC,#CC,#CC,#C1,#FF,#16
db #66,#66,#66,#1F,#1C,#CC,#CC,#C1,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#C1,#CC,#CC,#1C,#CC,#CC,#CC,#1C,#CC,#CC,#1C,#CC,#CC,#CC,#1C,#CC,#CC,#1F,#1C,#CC,#CC,#1C,#CC,#CC,#CC,#CC,#1C,#CC,#CC,#11,#CC,#CC,#CC,#CC,#1F,#16
db #66,#66,#66,#1F,#1C,#CC,#CC,#C1,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#1C,#CC,#C1,#CC,#CC,#CC,#11,#CC,#11,#F1,#CC,#CC,#CC,#1C,#CC,#CC,#C1,#1C,#CC,#CC,#11,#CC,#CC,#CC,#11,#CC,#CC,#C1,#FF,#1C,#CC,#CC,#CC,#1F,#16
db #66,#66,#66,#1F,#1C,#CC,#CC,#C1,#F1,#CC,#CC,#11,#11,#CC,#CC,#CC,#CC,#1C,#CC,#CC,#11,#CC,#C1,#FF,#11,#FF,#FF,#1C,#CC,#C1,#CC,#CC,#CC,#CC,#1C,#CC,#CC,#C1,#11,#CC,#CC,#CC,#11,#CC,#C1,#FF,#11,#CC,#CC,#CC,#1F,#16
db #66,#66,#66,#1F,#1C,#CC,#CC,#C1,#FF,#1C,#C1,#CC,#CC,#1C,#CC,#CC,#C1,#CC,#CC,#CC,#1F,#11,#1F,#FF,#FF,#FF,#FF,#F1,#11,#1F,#1C,#CC,#CC,#CC,#1C,#CC,#CC,#C1,#CC,#CC,#CC,#CC,#CC,#1C,#CC,#1F,#FF,#1C,#CC,#CC,#1F,#16
db #66,#66,#66,#1F,#1C,#CC,#CC,#C1,#FF,#1C,#1C,#CC,#CC,#C1,#CC,#CC,#C1,#CC,#CC,#11,#FF,#FF,#FF,#FF,#FF,#11,#1F,#FF,#FF,#FF,#F1,#1C,#CC,#C1,#CC,#CC,#CC,#C1,#CC,#CC,#CC,#CC,#CC,#1C,#CC,#C1,#FF,#F1,#CC,#CC,#1F,#16
db #66,#66,#66,#1F,#1C,#CC,#CC,#C1,#FF,#F1,#1C,#CC,#CC,#C1,#CC,#CC,#C1,#CC,#11,#FF,#FF,#FF,#FF,#11,#11,#66,#61,#FF,#FF,#FF,#FF,#F1,#11,#11,#CC,#CC,#CC,#C1,#CC,#C1,#1C,#CC,#CC,#C1,#CC,#CC,#1F,#FF,#11,#11,#FF,#16
db #66,#66,#66,#1F,#1C,#CC,#CC,#C1,#FF,#F1,#CC,#CC,#CC,#CC,#1C,#CC,#C1,#11,#FF,#FF,#F1,#11,#11,#66,#66,#66,#66,#11,#11,#11,#FF,#FF,#FF,#F1,#CC,#CC,#CC,#C1,#CC,#1F,#F1,#CC,#CC,#C1,#CC,#CC,#C1,#FF,#FF,#FF,#FF,#16
db #66,#66,#61,#FF,#1C,#CC,#CC,#CC,#1F,#1C,#CC,#CC,#CC,#CC,#1C,#CC,#C1,#FF,#FF,#F1,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#11,#FF,#FF,#FF,#11,#CC,#CC,#C1,#CC,#1F,#F1,#CC,#CC,#C1,#CC,#CC,#CC,#1F,#FF,#FF,#F1,#66
db #66,#66,#61,#F1,#CC,#CC,#CC,#CC,#C1,#1C,#CC,#CC,#CC,#CC,#1C,#CC,#C1,#FF,#F1,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#11,#11,#FF,#FF,#11,#11,#1C,#CC,#1F,#F1,#CC,#CC,#C1,#CC,#CC,#CC,#C1,#FF,#11,#16,#66
db #66,#66,#61,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#C1,#1C,#CC,#C1,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#1F,#FF,#F1,#CC,#CC,#CC,#1F,#F1,#CC,#CC,#C1,#CC,#CC,#CC,#CC,#1F,#F1,#66,#66
db #66,#66,#61,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#11,#CC,#CC,#C1,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#61,#1F,#FF,#1C,#CC,#CC,#C1,#1C,#CC,#CC,#C1,#1C,#CC,#CC,#CC,#C1,#FF,#16,#66
db #66,#66,#1F,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#C1,#1C,#CC,#CC,#C1,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#61,#FF,#1C,#CC,#CC,#CC,#CC,#CC,#C1,#1F,#F1,#CC,#CC,#CC,#CC,#1F,#16,#66
db #66,#66,#1F,#1C,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#1C,#CC,#CC,#1F,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#1F,#F1,#CC,#CC,#CC,#CC,#CC,#1C,#1F,#FF,#1C,#CC,#CC,#CC,#1F,#F1,#66
db #66,#61,#FF,#1C,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#C1,#FF,#1C,#CC,#CC,#1F,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#1F,#FF,#11,#CC,#CC,#CC,#11,#CC,#C1,#FF,#1C,#CC,#CC,#CC,#C1,#F1,#66
db #66,#1F,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#C1,#1F,#F1,#CC,#CC,#CC,#1F,#F1,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#61,#FF,#FF,#11,#11,#11,#CC,#CC,#CC,#11,#CC,#CC,#CC,#CC,#C1,#F1,#66
db #66,#1F,#1C,#CC,#CC,#CC,#CC,#CC,#CC,#C1,#1F,#FF,#1C,#CC,#CC,#C1,#FF,#F1,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#1F,#FF,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#F1,#66
db #61,#FF,#1C,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#FF,#11,#CC,#CC,#CC,#C1,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#61,#1F,#FF,#11,#CC,#C1,#CC,#CC,#CC,#CC,#CC,#CC,#CC,#1F,#F1,#66
db #61,#F1,#CC,#CC,#CC,#CC,#CC,#CC,#11,#FF,#11,#CC,#CC,#CC,#CC,#1F,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#61,#FF,#FF,#11,#1F,#1C,#CC,#CC,#CC,#CC,#CC,#C1,#FF,#F1,#66
db #61,#F1,#CC,#CC,#CC,#CC,#CC,#C1,#FF,#F1,#CC,#CC,#CC,#CC,#C1,#FF,#F1,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#1F,#FF,#FF,#FF,#F1,#1C,#CC,#CC,#CC,#CC,#1F,#FF,#16,#66
db #61,#F1,#CC,#CC,#CC,#CC,#CC,#1F,#FF,#F1,#CC,#CC,#CC,#CC,#1F,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#61,#1F,#FF,#FF,#FF,#F1,#1C,#CC,#CC,#C1,#FF,#F1,#66,#66
db #61,#F1,#CC,#CC,#CC,#CC,#C1,#FF,#F1,#FF,#11,#CC,#CC,#11,#FF,#F1,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#61,#11,#11,#FF,#FF,#F1,#11,#11,#1F,#FF,#16,#66,#66
db #61,#FF,#1C,#CC,#CC,#CC,#1F,#FF,#16,#1F,#FF,#11,#11,#FF,#FF,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#11,#FF,#FF,#FF,#FF,#FF,#F1,#66,#66,#66
db #61,#FF,#F1,#1C,#CC,#11,#FF,#F1,#66,#61,#FF,#FF,#FF,#FF,#F1,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#11,#FF,#FF,#FF,#FF,#16,#66,#66,#66
db #66,#1F,#FF,#F1,#11,#FF,#FF,#16,#66,#66,#1F,#FF,#FF,#F1,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#11,#11,#11,#11,#66,#66,#66,#66
db #66,#61,#FF,#FF,#FF,#FF,#F1,#66,#66,#66,#61,#11,#11,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#11,#FF,#FF,#F1,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#66,#11,#11,#16,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66
db #66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66,#66

ui_pause db 16,32,12:dw $+7:dw $+4,16*12:db 5   ;pause button
db #61,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#66
db #11,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#71,#16
db #17,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#81,#11,#18,#11,#11,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#81,#11,#18,#11,#11,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#81,#11,#18,#11,#11,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#81,#11,#18,#11,#11,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#81,#11,#18,#11,#11,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#81,#11,#18,#11,#11,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#87,#16
db #11,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#71,#16
db #61,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#66

ui_speed db 16,32,12:dw $+7:dw $+4,16*12:db 5   ;speed button
db #61,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#66
db #11,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#71,#16
db #17,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#81,#18,#88,#88,#11,#88,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#81,#11,#18,#88,#11,#11,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#81,#11,#11,#18,#11,#11,#11,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#81,#11,#11,#18,#11,#11,#11,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#81,#11,#18,#88,#11,#11,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#81,#18,#88,#88,#11,#88,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#87,#16
db #11,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#71,#16
db #61,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#66

ui_speedr db 16,32,12:dw $+7:dw $+4,16*12:db 5   ;speed button (red)
db #61,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#66
db #11,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#71,#16
db #17,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#8F,#F8,#88,#88,#FF,#88,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#8F,#FF,#F8,#88,#FF,#FF,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#8F,#FF,#FF,#F8,#FF,#FF,#FF,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#8F,#FF,#FF,#F8,#FF,#FF,#FF,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#8F,#FF,#F8,#88,#FF,#FF,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#8F,#F8,#88,#88,#FF,#88,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#87,#16
db #11,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#71,#16
db #61,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#66

ui_quit  db 16,32,12:dw $+7:dw $+4,16*12:db 5   ;quit button
db #61,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#66
db #11,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#71,#16
db #17,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#11,#11,#88,#81,#11,#18,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#81,#11,#18,#11,#11,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#88,#11,#11,#11,#18,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#88,#11,#11,#11,#18,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#81,#11,#18,#11,#11,#88,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#11,#11,#88,#81,#11,#18,#88,#88,#88,#87,#16
db #17,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#88,#87,#16
db #11,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#71,#16
db #61,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#66

ui_timer db 8,14,14:dw $+7:dw $+4,8*14:db 5      ;timer symbol
db #66,#66,#11,#11,#11,#66,#66,#66, #66,#11,#FF,#FF,#FF,#11,#66,#66, #61,#FF,#FC,#1C,#CF,#FF,#16,#66, #61,#F1,#CC,#C7,#CC,#1F,#16,#66, #1F,#FC,#CC,#77,#CC,#CF,#F1,#66, #1F,#CC,#CC,#77,#CC,#CC,#F1,#66, #1F,#1C,#CC,#11,#CC,#C1,#F1,#66
db #1F,#CC,#CC,#11,#7C,#CC,#F1,#66, #1F,#CC,#CC,#C7,#77,#CC,#F1,#66, #1F,#FC,#CC,#CC,#77,#CF,#F1,#66, #61,#F1,#CC,#CC,#CC,#1F,#16,#66, #61,#FF,#FC,#1C,#CF,#FF,#16,#66, #66,#11,#FF,#FF,#FF,#11,#66,#66, #66,#66,#11,#11,#11,#66,#66,#66

ui_items db 8,14,14:dw $+7:dw $+4,8*14:db 5      ;items symbol
db #66,#11,#11,#11,#11,#11,#66,#66, #61,#77,#77,#77,#77,#77,#16,#66, #17,#7C,#CC,#CC,#CC,#C7,#71,#66, #17,#CC,#FF,#1C,#CC,#CC,#71,#66, #17,#CC,#CF,#F1,#CC,#CC,#71,#66, #17,#CC,#CC,#FF,#1C,#CC,#71,#66, #17,#CC,#FF,#FF,#F1,#CC,#71,#66
db #17,#CC,#FF,#FF,#F1,#CC,#71,#66, #17,#CC,#CF,#F1,#CC,#CC,#71,#66, #17,#CC,#CC,#FF,#1C,#CC,#71,#66, #17,#CC,#CC,#CF,#F1,#CC,#71,#66, #17,#7C,#CC,#CC,#CC,#C7,#71,#66, #61,#77,#77,#77,#77,#77,#16,#66, #66,#11,#11,#11,#11,#11,#66,#66



;==============================================================================
;### LEVEL MENU ###############################################################
;==============================================================================

men_line db 2,4,37:dw $+7:dw $+4,2*37:db 5
db #11,#11,#11,#11
db #16,#61,#16,#61,#16,#61,#11,#11,#11,#11
db #16,#61,#16,#61,#16,#61,#11,#11,#11,#11
db #16,#61,#16,#61,#16,#61,#11,#11,#11,#11
db #16,#61,#16,#61,#16,#61,#11,#11,#11,#11
db #16,#61,#16,#61,#16,#61,#11,#11,#11,#11
db #16,#61,#16,#61,#16,#61,#11,#11,#11,#11
db #16,#61,#16,#61,#16,#61,#11,#11,#11,#11

;planet toxic
men_planet1 db 14,28,32:dw $+7:dw $+4,14*32:db 5
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#1B,#BB,#BB,#B1,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#BB,#BB,#EE,#EE,#E6,#66,#11,#11,#11,#11
db #11,#11,#11,#BB,#BB,#EE,#EE,#EE,#EE,#ED,#66,#11,#11,#11
db #11,#11,#1B,#BB,#BE,#EE,#EE,#EE,#EE,#DD,#DD,#61,#11,#11
db #11,#11,#BB,#BB,#EE,#EE,#EE,#EE,#ED,#DD,#DE,#ED,#11,#11
db #11,#1B,#B2,#BE,#EE,#EE,#EE,#ED,#DD,#DE,#EE,#EE,#B1,#11
db #11,#BB,#22,#20,#EE,#EE,#EE,#EE,#EE,#EE,#EE,#EB,#BB,#11
db #11,#BB,#22,#00,#00,#EE,#EE,#EE,#EE,#EE,#EE,#EB,#BB,#11
db #16,#DB,#B2,#20,#00,#00,#EE,#EE,#EE,#ED,#EE,#EB,#B0,#B1
db #16,#DD,#BB,#22,#20,#00,#00,#00,#DD,#DE,#EE,#BB,#00,#B1
db #1B,#DD,#DB,#B2,#22,#22,#22,#2D,#DD,#EE,#EE,#BB,#00,#B1
db #2B,#BB,#DD,#BB,#B2,#22,#2E,#EE,#EE,#EE,#EB,#B0,#00,#2B
db #22,#BB,#BB,#BB,#BB,#BE,#EE,#EE,#EE,#EE,#BB,#00,#02,#BB
db #62,#22,#BB,#BE,#BB,#BB,#BB,#BB,#BB,#BB,#BB,#00,#22,#EB
db #6D,#D2,#2B,#BE,#EE,#EB,#BB,#BB,#BB,#BB,#B0,#02,#2E,#EB
db #6D,#DD,#BB,#BB,#EE,#EE,#EE,#EB,#BB,#BB,#02,#22,#EE,#BB
db #BB,#DD,#DD,#BB,#EE,#EE,#EB,#BB,#BB,#02,#22,#DE,#EE,#BB
db #1B,#BB,#DD,#DD,#DB,#BB,#BB,#BB,#B2,#22,#DD,#EE,#EB,#B1
db #1B,#BB,#BB,#DD,#DD,#BB,#BB,#BB,#BB,#BB,#EE,#EE,#BB,#B1
db #1B,#BB,#BB,#BB,#BB,#BB,#EE,#EE,#EE,#EE,#EE,#BB,#BB,#B1
db #11,#DB,#BB,#BB,#BB,#BB,#BB,#EE,#EE,#EE,#BB,#BB,#D6,#11
db #11,#6D,#BB,#BB,#BB,#BB,#BB,#BB,#BB,#BB,#BD,#DD,#D6,#11
db #11,#16,#D2,#22,#2B,#BB,#BB,#BB,#BB,#BD,#DD,#DD,#61,#11
db #11,#11,#6D,#22,#22,#2B,#BB,#BB,#BB,#BB,#BB,#BB,#11,#11
db #11,#11,#16,#DD,#22,#22,#22,#22,#22,#2B,#BB,#B1,#11,#11
db #11,#11,#11,#66,#DD,#D2,#22,#22,#BB,#BB,#BB,#11,#11,#11
db #11,#11,#11,#11,#66,#6D,#DD,#DD,#D6,#66,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#16,#66,#66,#61,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11

;planet ocean
men_planet2 db 14,28,32:dw $+7:dw $+4,14*32:db 5
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#17,#77,#77,#71,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#77,#77,#66,#66,#67,#77,#11,#11,#11,#11
db #11,#11,#11,#77,#77,#66,#66,#66,#66,#66,#77,#11,#11,#11
db #11,#11,#17,#77,#76,#66,#44,#44,#66,#66,#66,#71,#11,#11
db #11,#11,#77,#77,#66,#66,#66,#44,#44,#66,#66,#67,#11,#11
db #11,#17,#77,#76,#66,#66,#66,#64,#44,#44,#66,#46,#71,#11
db #11,#77,#77,#76,#66,#66,#44,#44,#44,#44,#44,#46,#67,#11
db #11,#77,#77,#66,#66,#44,#44,#44,#44,#44,#44,#66,#67,#11
db #17,#77,#77,#66,#64,#44,#66,#44,#44,#44,#46,#66,#66,#71
db #17,#77,#77,#66,#44,#66,#64,#44,#44,#44,#66,#66,#66,#71
db #17,#77,#77,#66,#66,#66,#64,#44,#44,#44,#46,#66,#66,#71
db #77,#77,#77,#66,#66,#66,#66,#44,#66,#44,#44,#66,#66,#67
db #77,#77,#77,#66,#66,#66,#66,#64,#66,#66,#44,#46,#66,#67
db #77,#77,#77,#76,#66,#66,#66,#66,#46,#66,#66,#66,#66,#67
db #77,#77,#D7,#76,#66,#66,#66,#66,#66,#66,#66,#66,#66,#67
db #77,#77,#D7,#77,#66,#66,#66,#66,#66,#66,#66,#66,#66,#77
db #77,#77,#DD,#77,#66,#66,#66,#64,#66,#66,#66,#66,#66,#77
db #17,#77,#7D,#77,#76,#66,#66,#44,#66,#66,#66,#66,#67,#71
db #17,#77,#7D,#D7,#77,#66,#64,#44,#66,#66,#66,#66,#77,#71
db #17,#77,#7D,#DD,#DD,#D4,#44,#46,#66,#66,#66,#77,#77,#71
db #11,#7D,#77,#DD,#DD,#DD,#DD,#66,#66,#66,#77,#77,#77,#11
db #11,#7D,#DD,#DD,#DD,#DD,#D7,#77,#77,#77,#77,#77,#77,#11
db #11,#17,#7D,#DD,#DD,#DD,#77,#77,#77,#77,#77,#77,#71,#11
db #11,#11,#77,#77,#7D,#D7,#77,#77,#77,#77,#77,#77,#11,#11
db #11,#11,#17,#7D,#DD,#77,#77,#77,#77,#77,#77,#71,#11,#11
db #11,#11,#11,#77,#77,#77,#77,#77,#77,#77,#77,#11,#11,#11
db #11,#11,#11,#11,#77,#77,#77,#77,#77,#77,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#17,#77,#77,#71,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11

;planet rock
men_planet3 db 14,28,32:dw $+7:dw $+4,14*32:db 5
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#1E,#EE,#EE,#E1,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#EE,#E0,#00,#00,#0E,#EE,#11,#11,#11,#11
db #11,#11,#11,#EE,#E0,#00,#00,#33,#30,#00,#EE,#11,#11,#11
db #11,#11,#1E,#E0,#00,#00,#0E,#EE,#30,#33,#30,#E1,#11,#11
db #11,#11,#EE,#00,#03,#33,#30,#00,#0E,#EE,#E3,#0E,#11,#11
db #11,#1E,#EE,#00,#3E,#EE,#E3,#30,#00,#0E,#EE,#30,#E1,#11
db #11,#EE,#E0,#03,#EE,#EE,#EE,#E3,#30,#00,#0E,#E3,#0E,#11
db #11,#EE,#E0,#0E,#EE,#E0,#00,#EE,#30,#03,#30,#0E,#0E,#11
db #1E,#E3,#E0,#0E,#E0,#00,#00,#00,#00,#3E,#E3,#00,#00,#E1
db #1E,#33,#E0,#00,#00,#00,#00,#00,#03,#EE,#E0,#00,#00,#E1
db #1E,#EE,#E0,#00,#03,#33,#30,#00,#0E,#EE,#00,#03,#30,#E1
db #EE,#EE,#E0,#00,#0E,#EE,#30,#00,#00,#00,#00,#0E,#E0,#EE
db #E3,#3E,#EE,#00,#0E,#EE,#00,#30,#00,#33,#00,#0E,#00,#EE
db #E3,#3E,#EE,#00,#00,#EE,#00,#E3,#0E,#EE,#33,#00,#00,#EE
db #E3,#EE,#EE,#E0,#00,#00,#00,#EE,#00,#EE,#E3,#00,#0E,#EE
db #EE,#E3,#EE,#EE,#00,#00,#00,#00,#00,#0E,#E3,#00,#0E,#EE
db #EE,#E3,#33,#EE,#E0,#00,#00,#00,#E0,#00,#E0,#00,#EE,#EE
db #1E,#E3,#33,#EE,#EE,#E0,#00,#00,#00,#00,#00,#EE,#E3,#E1
db #1E,#EE,#3E,#E3,#EE,#EE,#E0,#00,#00,#00,#EE,#EE,#EE,#E1
db #1E,#EE,#EE,#33,#3E,#EE,#EE,#EE,#EE,#EE,#EE,#E3,#EE,#E1
db #11,#EE,#EE,#E3,#3E,#E3,#33,#33,#33,#EE,#EE,#EE,#EE,#11
db #11,#E3,#33,#EE,#EE,#E3,#33,#33,#3E,#EE,#E3,#3E,#EE,#11
db #11,#1E,#33,#3E,#EE,#EE,#33,#3E,#EE,#E3,#33,#3E,#E1,#11
db #11,#11,#E3,#3E,#EE,#3E,#EE,#EE,#E3,#33,#33,#EE,#11,#11
db #11,#11,#1E,#EE,#3E,#E3,#EE,#EE,#33,#33,#EE,#E1,#11,#11
db #11,#11,#11,#EE,#EE,#33,#E3,#3E,#EE,#EE,#EE,#11,#11,#11
db #11,#11,#11,#11,#EE,#EE,#E3,#33,#EE,#EE,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#1E,#EE,#EE,#E1,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11

;planet cratered
men_planet4 db 14,28,32:dw $+7:dw $+4,14*32:db 5
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#55,#55,#55,#55,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#55,#68,#88,#88,#66,#55,#11,#11,#11,#11
db #11,#11,#11,#55,#68,#88,#66,#66,#67,#75,#55,#11,#11,#11
db #11,#11,#15,#68,#88,#66,#66,#77,#77,#77,#75,#51,#11,#11
db #11,#11,#56,#88,#86,#66,#77,#77,#76,#77,#77,#55,#11,#11
db #11,#15,#68,#88,#66,#67,#77,#66,#77,#77,#77,#75,#51,#11
db #11,#56,#88,#86,#66,#77,#77,#66,#77,#77,#71,#77,#55,#11
db #11,#56,#88,#66,#67,#77,#77,#77,#77,#77,#16,#17,#75,#11
db #15,#68,#86,#66,#77,#11,#17,#77,#77,#76,#17,#17,#75,#51
db #15,#68,#86,#66,#71,#77,#61,#77,#77,#77,#71,#77,#77,#51
db #56,#88,#66,#67,#71,#77,#71,#77,#77,#77,#77,#77,#77,#55
db #56,#88,#66,#77,#77,#11,#17,#77,#77,#77,#77,#77,#77,#55
db #56,#61,#68,#77,#77,#77,#77,#77,#77,#77,#77,#77,#77,#75
db #56,#16,#18,#77,#77,#77,#77,#77,#77,#77,#77,#77,#76,#75
db #58,#16,#18,#77,#77,#77,#77,#77,#77,#77,#77,#77,#76,#75
db #58,#16,#18,#77,#77,#77,#77,#77,#77,#11,#77,#77,#76,#75
db #56,#61,#68,#67,#77,#77,#77,#77,#71,#66,#67,#77,#77,#75
db #57,#88,#88,#61,#17,#77,#77,#77,#71,#76,#61,#77,#77,#55
db #15,#88,#88,#16,#81,#77,#77,#77,#71,#17,#71,#77,#77,#51
db #15,#78,#88,#16,#68,#17,#77,#77,#77,#11,#17,#77,#77,#51
db #11,#58,#88,#61,#68,#17,#77,#77,#77,#77,#77,#77,#75,#11
db #11,#57,#78,#86,#11,#66,#77,#77,#77,#77,#77,#77,#55,#11
db #11,#15,#77,#88,#86,#66,#66,#66,#77,#66,#67,#76,#51,#11
db #11,#11,#57,#68,#88,#88,#86,#66,#66,#66,#68,#65,#11,#11
db #11,#11,#15,#57,#68,#87,#78,#88,#88,#88,#65,#51,#11,#11
db #11,#11,#11,#55,#57,#66,#88,#88,#66,#55,#55,#11,#11,#11
db #11,#11,#11,#11,#55,#55,#76,#66,#55,#55,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#55,#55,#55,#55,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11
db #11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11,#11

men_flag db 10,20,15:dw $+7:dw $+4,10*15:db 5
db #11,#11,#11,#11,#11,#11,#11,#11,#C1,#11
db #11,#11,#11,#11,#11,#16,#66,#6C,#0C,#11
db #11,#11,#11,#11,#66,#63,#F3,#F3,#C1,#11
db #11,#11,#16,#66,#F3,#F3,#F3,#F3,#F1,#11
db #11,#16,#61,#11,#F3,#F3,#FF,#AA,#F1,#11
db #11,#61,#11,#11,#F3,#FA,#AA,#AA,#FF,#11
db #16,#11,#11,#11,#FF,#AA,#AA,#FF,#3F,#11
db #61,#11,#11,#11,#F3,#AA,#F3,#FF,#31,#11
db #11,#11,#11,#11,#13,#AA,#FF,#3F,#F1,#11
db #11,#11,#11,#11,#13,#FA,#AF,#3F,#FF,#11
db #11,#11,#11,#11,#1F,#FA,#AA,#3F,#3F,#11
db #11,#11,#11,#11,#11,#F3,#AA,#FF,#3F,#F1
db #11,#11,#11,#11,#11,#F3,#AA,#3F,#3F,#31
db #11,#11,#11,#11,#11,#FF,#3F,#3F,#F3,#F1
db #11,#11,#11,#11,#11,#1F,#3F,#F3,#F1,#11

men_arwrgt  db 4,8,16:dw $+7:dw $+4,4*16:db 5
db #61,#11,#11,#11, #66,#11,#11,#11, #68,#61,#11,#11, #68,#86,#11,#11, #68,#88,#61,#11, #68,#88,#86,#11, #68,#88,#88,#61, #68,#88,#88,#86
db #68,#88,#88,#86, #68,#88,#88,#61, #68,#88,#86,#11, #68,#88,#61,#11, #68,#86,#11,#11, #68,#61,#11,#11, #66,#11,#11,#11, #61,#11,#11,#11

men_arwlft  db 4,8,16:dw $+7:dw $+4,4*16:db 5
db #11,#11,#11,#16, #11,#11,#11,#66, #11,#11,#16,#86, #11,#11,#68,#86, #11,#16,#88,#86, #11,#68,#88,#86, #16,#88,#88,#86, #68,#88,#88,#86
db #68,#88,#88,#86, #16,#88,#88,#86, #11,#68,#88,#86, #11,#16,#88,#86, #11,#11,#68,#86, #11,#11,#16,#86, #11,#11,#11,#66, #11,#11,#11,#16

men_arwup  db 8,16,16:dw $+7:dw $+4,8*16:db 5
db #16,#66,#66,#66,#66,#66,#66,#61
db #67,#77,#77,#77,#77,#77,#77,#74
db #67,#77,#77,#77,#77,#77,#77,#74
db #67,#77,#77,#78,#87,#77,#77,#74
db #67,#77,#77,#88,#88,#77,#77,#74
db #67,#77,#78,#88,#88,#87,#77,#74
db #67,#77,#88,#88,#88,#88,#77,#74
db #67,#78,#88,#88,#88,#88,#87,#74
db #67,#88,#88,#88,#88,#88,#88,#74
db #67,#88,#88,#88,#88,#88,#88,#74
db #67,#77,#77,#88,#88,#77,#77,#74
db #67,#77,#77,#88,#88,#77,#77,#74
db #67,#77,#77,#88,#88,#77,#77,#74
db #67,#77,#77,#77,#77,#77,#77,#74
db #67,#77,#77,#77,#77,#77,#77,#74
db #14,#44,#44,#44,#44,#44,#44,#41

men_arwdw   db 8,16,16:dw $+7:dw $+4,8*16:db 5
db #16,#66,#66,#66,#66,#66,#66,#61
db #67,#77,#77,#77,#77,#77,#77,#74
db #67,#77,#77,#77,#77,#77,#77,#74
db #67,#77,#77,#88,#88,#77,#77,#74
db #67,#77,#77,#88,#88,#77,#77,#74
db #67,#77,#77,#88,#88,#77,#77,#74
db #67,#88,#88,#88,#88,#88,#88,#74
db #67,#88,#88,#88,#88,#88,#88,#74
db #67,#78,#88,#88,#88,#88,#87,#74
db #67,#77,#88,#88,#88,#88,#77,#74
db #67,#77,#78,#88,#88,#87,#77,#74
db #67,#77,#77,#88,#88,#77,#77,#74
db #67,#77,#77,#78,#87,#77,#77,#74
db #67,#77,#77,#77,#77,#77,#77,#74
db #67,#77,#77,#77,#77,#77,#77,#74
db #14,#44,#44,#44,#44,#44,#44,#41

db "CMPR"

bmp_datend
