@include
print_timer_frames:
    lda !timer_frames

    ; restore hijacked instructions pt.1
    rep #$20

    asl #3
    tax 
    lda.l timer_frames_graphics_table, x
    sta !timer_frames_tens_digit
    inx #2
    lda.l timer_frames_graphics_table, x
    sta !timer_frames_tens_digit+2
    inx #2
    lda.l timer_frames_graphics_table, x
    sta !timer_frames_units_digit
    inx #2
    lda.l timer_frames_graphics_table, x
    sta !timer_frames_units_digit+2

    ; restore hijacked instructions pt. 2
    rts


timer_frames_graphics_table:
db $96,$3c,$20,$32,$9e,$3c,$20,$32
db $96,$3c,$20,$32,$9e,$3c,$21,$32
db $96,$3c,$20,$32,$9e,$3c,$30,$32
db $96,$3c,$20,$32,$9e,$3c,$31,$32
db $96,$3c,$20,$32,$9e,$3c,$22,$32
db $96,$3c,$20,$32,$9e,$3c,$23,$32
db $96,$3c,$20,$32,$9e,$3c,$32,$32
db $96,$3c,$20,$32,$9e,$3c,$33,$32
db $96,$3c,$20,$32,$9e,$3c,$25,$32
db $96,$3c,$20,$32,$9e,$3c,$24,$32
db $96,$3c,$21,$32,$9e,$3c,$20,$32
db $96,$3c,$21,$32,$9e,$3c,$21,$32
db $96,$3c,$21,$32,$9e,$3c,$30,$32
db $96,$3c,$21,$32,$9e,$3c,$31,$32
db $96,$3c,$21,$32,$9e,$3c,$22,$32
db $96,$3c,$21,$32,$9e,$3c,$23,$32
db $96,$3c,$21,$32,$9e,$3c,$32,$32
db $96,$3c,$21,$32,$9e,$3c,$33,$32
db $96,$3c,$21,$32,$9e,$3c,$25,$32
db $96,$3c,$21,$32,$9e,$3c,$24,$32
db $96,$3c,$30,$32,$9e,$3c,$20,$32
db $96,$3c,$30,$32,$9e,$3c,$21,$32
db $96,$3c,$30,$32,$9e,$3c,$30,$32
db $96,$3c,$30,$32,$9e,$3c,$31,$32
db $96,$3c,$30,$32,$9e,$3c,$22,$32
db $96,$3c,$30,$32,$9e,$3c,$23,$32
db $96,$3c,$30,$32,$9e,$3c,$32,$32
db $96,$3c,$30,$32,$9e,$3c,$33,$32
db $96,$3c,$30,$32,$9e,$3c,$25,$32
db $96,$3c,$30,$32,$9e,$3c,$24,$32
db $96,$3c,$31,$32,$9e,$3c,$20,$32
db $96,$3c,$31,$32,$9e,$3c,$21,$32
db $96,$3c,$31,$32,$9e,$3c,$30,$32
db $96,$3c,$31,$32,$9e,$3c,$31,$32
db $96,$3c,$31,$32,$9e,$3c,$22,$32
db $96,$3c,$31,$32,$9e,$3c,$23,$32
db $96,$3c,$31,$32,$9e,$3c,$32,$32
db $96,$3c,$31,$32,$9e,$3c,$33,$32
db $96,$3c,$31,$32,$9e,$3c,$25,$32
db $96,$3c,$31,$32,$9e,$3c,$24,$32
db $96,$3c,$22,$32,$9e,$3c,$20,$32
db $96,$3c,$22,$32,$9e,$3c,$21,$32
db $96,$3c,$22,$32,$9e,$3c,$30,$32
db $96,$3c,$22,$32,$9e,$3c,$31,$32
db $96,$3c,$22,$32,$9e,$3c,$22,$32
db $96,$3c,$22,$32,$9e,$3c,$23,$32
db $96,$3c,$22,$32,$9e,$3c,$32,$32
db $96,$3c,$22,$32,$9e,$3c,$33,$32
db $96,$3c,$22,$32,$9e,$3c,$25,$32
db $96,$3c,$22,$32,$9e,$3c,$24,$32
db $96,$3c,$23,$32,$9e,$3c,$20,$32
db $96,$3c,$23,$32,$9e,$3c,$21,$32
db $96,$3c,$23,$32,$9e,$3c,$30,$32
db $96,$3c,$23,$32,$9e,$3c,$31,$32
db $96,$3c,$23,$32,$9e,$3c,$22,$32
db $96,$3c,$23,$32,$9e,$3c,$23,$32
db $96,$3c,$23,$32,$9e,$3c,$32,$32
db $96,$3c,$23,$32,$9e,$3c,$33,$32
db $96,$3c,$23,$32,$9e,$3c,$25,$32
db $96,$3c,$23,$32,$9e,$3c,$24,$32