@include

; rom
print_score = $00ba8e
initialize_score_graphics = $00b88c
igt_hijack = $00ba79
game_over_hijack = $0084e9
overworld_movement_hijack = $00be3c
overworld_map_graphic_hijack = $00bf7c 

free_space = $00f0a0

; ram
!timer_frames = $0fcc

; new ram
!timer_frames_tens_digit = $022c
!timer_frames_units_digit = $0230