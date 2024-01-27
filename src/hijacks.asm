@include

; print timer frames after it's done computing the timer for the current frame
org igt_hijack
    jmp print_timer_frames
