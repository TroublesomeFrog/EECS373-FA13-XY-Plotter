// Actel Corporation Proprietary and Confidential
//  Copyright 2008 Actel Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// Actel Corporation Proprietary and Confidential
//  Copyright 2008 Actel Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//  Revision Information:
// Jun09    Revision 4.1
// Aug10    Revision 4.2
// SVN Revision Information:
// SVN $Revision: 8508 $
// SVN $Date: 2009-06-15 16:49:49 -0700 (Mon, 15 Jun 2009) $
`timescale 1ns/100ps
module
TOP_CoreUARTapb_0_fifo_256x8
(
CUARTI11
,
CUARTl11
,
CUARTOOOI
,
CUARTIOOI
,
WRB
,
RDB
,
RESET
,
FULL
,
EMPTY
)
;
output
[
7
:
0
]
CUARTI11
;
input
CUARTl11
;
input
CUARTOOOI
;
input
[
7
:
0
]
CUARTIOOI
;
input
WRB
;
input
RDB
;
input
RESET
;
output
FULL
;
output
EMPTY
;
parameter
[
7
:
0
]
CUARTIOlI
=
255
;
wire
AEMPTY
,
AFULL
,
FULL
,
EMPTY
;
reg
[
7
:
0
]
CUARTI11
;
wire
[
7
:
0
]
CUARTO00I
;
always
@
(
posedge
CUARTl11
)
begin
CUARTI11
<=
CUARTO00I
;
end
TOP_CoreUARTapb_0_fifo_256x8_pa3
TOP_CoreUARTapb_0_fifo_256x8_pa3
(
.CUARTlOOl
(
CUARTIOOI
)
,
.CUARTOI1I
(
CUARTO00I
)
,
.CUARTOl1I
(
WRB
)
,
.CUARTIl1I
(
RDB
)
,
.CUARTOOOI
(
CUARTOOOI
)
,
.CUARTl11
(
CUARTl11
)
,
.AEMPTY
(
AEMPTY
)
,
.AFULL
(
GEQTH
)
,
.FULL
(
FULL
)
,
.EMPTY
(
EMPTY
)
,
.RESET
(
RESET
)
,
.CUARTIOlI
(
CUARTIOlI
)
)
;
endmodule
module
TOP_CoreUARTapb_0_fifo_256x8_pa3
(
CUARTlOOl
,
CUARTOI1I
,
CUARTOl1I
,
CUARTIl1I
,
CUARTOOOI
,
CUARTl11
,
FULL
,
EMPTY
,
RESET
,
AEMPTY
,
AFULL
,
CUARTIOlI
)
;
input
[
7
:
0
]
CUARTlOOl
;
output
[
7
:
0
]
CUARTOI1I
;
input
CUARTOl1I
,
CUARTIl1I
,
CUARTOOOI
,
CUARTl11
;
output
FULL
,
EMPTY
;
input
RESET
;
output
AEMPTY
,
AFULL
;
input
[
7
:
0
]
CUARTIOlI
;
wire
CUARTOIOl
,
VCC
,
GND
;
VCC
CUARTO11I
(
.Y
(
VCC
)
)
;
GND
CUARTI11I
(
.Y
(
GND
)
)
;
INV
CUARTIIOl
(
.A
(
CUARTIl1I
)
,
.Y
(
CUARTOIOl
)
)
;
FIFO4K18
CUARTlIOl
(
.AEVAL11
(
GND
)
,
.AEVAL10
(
GND
)
,
.AEVAL9
(
GND
)
,
.AEVAL8
(
GND
)
,
.AEVAL7
(
GND
)
,
.AEVAL6
(
GND
)
,
.AEVAL5
(
GND
)
,
.AEVAL4
(
GND
)
,
.AEVAL3
(
VCC
)
,
.AEVAL2
(
GND
)
,
.AEVAL1
(
GND
)
,
.AEVAL0
(
GND
)
,
.AFVAL11
(
GND
)
,
.AFVAL10
(
CUARTIOlI
[
7
]
)
,
.AFVAL9
(
CUARTIOlI
[
6
]
)
,
.AFVAL8
(
CUARTIOlI
[
5
]
)
,
.AFVAL7
(
CUARTIOlI
[
4
]
)
,
.AFVAL6
(
CUARTIOlI
[
3
]
)
,
.AFVAL5
(
CUARTIOlI
[
2
]
)
,
.AFVAL4
(
CUARTIOlI
[
1
]
)
,
.AFVAL3
(
CUARTIOlI
[
0
]
)
,
.AFVAL2
(
GND
)
,
.AFVAL1
(
GND
)
,
.AFVAL0
(
GND
)
,
.WD17
(
GND
)
,
.WD16
(
GND
)
,
.WD15
(
GND
)
,
.WD14
(
GND
)
,
.WD13
(
GND
)
,
.WD12
(
GND
)
,
.WD11
(
GND
)
,
.WD10
(
GND
)
,
.WD9
(
GND
)
,
.WD8
(
GND
)
,
.WD7
(
CUARTlOOl
[
7
]
)
,
.WD6
(
CUARTlOOl
[
6
]
)
,
.WD5
(
CUARTlOOl
[
5
]
)
,
.WD4
(
CUARTlOOl
[
4
]
)
,
.WD3
(
CUARTlOOl
[
3
]
)
,
.WD2
(
CUARTlOOl
[
2
]
)
,
.WD1
(
CUARTlOOl
[
1
]
)
,
.WD0
(
CUARTlOOl
[
0
]
)
,
.WW0
(
VCC
)
,
.WW1
(
VCC
)
,
.WW2
(
GND
)
,
.RW0
(
VCC
)
,
.RW1
(
VCC
)
,
.RW2
(
GND
)
,
.RPIPE
(
GND
)
,
.WEN
(
CUARTOl1I
)
,
.REN
(
CUARTOIOl
)
,
.WBLK
(
GND
)
,
.RBLK
(
GND
)
,
.WCLK
(
CUARTOOOI
)
,
.RCLK
(
CUARTl11
)
,
.RESET
(
RESET
)
,
.ESTOP
(
VCC
)
,
.FSTOP
(
VCC
)
,
.RD17
(
)
,
.RD16
(
)
,
.RD15
(
)
,
.RD14
(
)
,
.RD13
(
)
,
.RD12
(
)
,
.RD11
(
)
,
.RD10
(
)
,
.RD9
(
)
,
.RD8
(
)
,
.RD7
(
CUARTOI1I
[
7
]
)
,
.RD6
(
CUARTOI1I
[
6
]
)
,
.RD5
(
CUARTOI1I
[
5
]
)
,
.RD4
(
CUARTOI1I
[
4
]
)
,
.RD3
(
CUARTOI1I
[
3
]
)
,
.RD2
(
CUARTOI1I
[
2
]
)
,
.RD1
(
CUARTOI1I
[
1
]
)
,
.RD0
(
CUARTOI1I
[
0
]
)
,
.FULL
(
)
,
.AFULL
(
FULL
)
,
.EMPTY
(
EMPTY
)
,
.AEMPTY
(
AEMPTY
)
)
;
endmodule
