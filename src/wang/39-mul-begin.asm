; mul byte ptr ds:[0]        ; (ax) = al * ((ds) * 16 + 0)
; mul word ptr [bx + si + 8] ; (ax) = (ax) * ((ds) * 16 + (bx) + (si) + 8) ; low 16 bits
                             ; (dx) = (ax) * ((ds) * 16 + (bx) + (si) + 8) ; high 16 bits

