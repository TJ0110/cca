O0001 (Main Program)

$AddRegPart 1
G21 (Set Units to Millimeters)
G90 (Absolute Distance Mode)
G0 Z30.0 (Move Z-axis to Safe Height)

(Tool 1: 6mm flat end mill)
T1 M6 (Select Tool 1)
S5000 (Set Spindle Speed to 5000 RPM)
G54 (Select Work Coordinate System 1)
G0 X25.0 y25.0 (Rapid Move to Position 1)
M98 P0002 (Call Subprogram O0002)
G0 X100.0 Y100.0 (Rapid Move to Position 2)
M98 P0002 (Call Subprogram O0002)
G0 X150.0 Y150.0 (Rapid Move to Position 3)
M98 P0002 (Call Subprogram O0002)

G0 X100.0 Y150.0 (Rapid Move to Position 4)
M98 P0002 (Call Subprogram O0002)

G0 X25.0 Y100.0 (Rapid Move to Position 4)
M98 P0002 (Call Subprogram O0002)

G0 X25.0 Y155.0 (Rapid Move to Position 4)
M98 P0002 (Call Subprogram O0002)

G0 X100.0 Y25.0 (Rapid Move to Position 4)
M98 P0002 (Call Subprogram O0002)

G0 X150.0 Y100.0 (Rapid Move to Position 4)
M98 P0002 (Call Subprogram O0002)

G0 X150.0 Y25.0 (Rapid Move to Position 4)
M98 P0002 (Call Subprogram O0002)

M30 (End of Program)


O0002

G1 Z0.0 F500 (Move to Cutting Depth)
g91
g01 x30 
g01 y30
g01 x-30
g01 y-30
g01 z30
g01 x 10 y10
g01 z-30
g01 y20 
g01 y-10 x10
g01 x-10 y-10
g90
g01 z30
M99 (End of Subprogram)

