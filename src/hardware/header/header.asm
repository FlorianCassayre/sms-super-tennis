; ROM header
.DB "TMR SEGA"

; Reserved
.DB $ff $ff

; Checksum
.DW HEADER_CHECKSUM

; Product code + revision
.DB HEADER_PRODUCT_CODE & $ff
.DB (HEADER_PRODUCT_CODE >> 8) & $ff
.DB ((HEADER_PRODUCT_CODE >> 16) & $ff) | HEADER_REVISION

; Region code + ROM size
.DB (HEADER_REGION << 4) | HEADER_ROM_SIZE
