; movsb
; es:[di] = ds:[si] (byte ptr)
; if (DF == 0)
;   then si = si + 1; di = di + 1
;   else di = di - 1; di = di - 1

; movsw
; es:[di] = ds:[si] (word ptr)
; if (DF == 0)
;   then si = si + 2; di = di + 2
;   else di = di - 2; di = di - 2


; rep movsb ; s:
            ;     movsb
            ;     loop s

; rep movsw ; s:
            ;     movsw
            ;     loop s

cld   ; DF = 0
std   ; DF = 1
