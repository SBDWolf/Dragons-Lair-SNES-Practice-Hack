@include

org print_score
    nop #3

org initialize_score_graphics
    nop #3

; remove game overs
org game_over_hijack
    nop #2

; allow free movement in overworld
org overworld_movement_hijack
    db $80 ; bra

org overworld_map_graphic_hijack
    db $80 ; bra