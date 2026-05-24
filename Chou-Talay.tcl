set z [toplevel ".cc"]
wm title $z "Chou-Talay ANALYSIS"
wm resizable $z 0 0

global GRAPHICS

frame $z.frame1
pack $z.frame1 -padx 1 -fill x

set altezza 450
set larghezza 500
set altezza2 480

#set x1y1 ""
#set x2y1 "" 
#set x3y1 ""
#set x4y1 ""
#set x5y1 ""
#set x6y1 ""
#set x7y1 ""
#set x8y1 ""

button $z.frame1.startButton -background "white" -text "START" -font {Helvetica -14 bold} -relief ridge -borderwidth 5 -command {CT1} -width 15
pack $z.frame1.startButton -side left

button $z.frame1.startButton2 -background "white" -text "START2" -font {Helvetica -14 bold} -relief ridge -borderwidth 5 -command {CT2} -width 15
pack $z.frame1.startButton2 -side left

button $z.frame1.resetButton -background "white" -text "RESET" -font {Helvetica -14 bold} -relief ridge -borderwidth 5 -command {RESET} -width 15
pack $z.frame1.resetButton -side right

button $z.frame1.printButton -background "white" -text "PRINT" -font {Helvetica -14 bold} -relief ridge -borderwidth 5 -command {PRINT} -width 15
pack $z.frame1.printButton -side right

frame $z.frame1bis
pack $z.frame1bis -padx 1 -fill x

frame $z.frame1bis.frame2 -height $altezza2 -width $larghezza -relief ridge -borderwidth 5
pack $z.frame1bis.frame2 -side left

canvas $z.frame1bis.frame2.picture -height $altezza2 -width $larghezza
pack $z.frame1bis.frame2.picture

frame $z.frame1bis.frame2intermezzo0 -height $altezza2 -width 15
pack $z.frame1bis.frame2intermezzo0 -side left

set concY1P [entry $z.frame1bis.frame2intermezzo0.concY1 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concY1 -justify left -width 4]
set concY2P [entry $z.frame1bis.frame2intermezzo0.concY2 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concY2 -justify left -width 4]
set concY3P [entry $z.frame1bis.frame2intermezzo0.concY3 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concY3 -justify left -width 4]
set concY4P [entry $z.frame1bis.frame2intermezzo0.concY4 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concY4 -justify left -width 4]
set concY5P [entry $z.frame1bis.frame2intermezzo0.concY5 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concY5 -justify left -width 4]
set concY6P [entry $z.frame1bis.frame2intermezzo0.concY6 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concY6 -justify left -width 4]
set concY7P [entry $z.frame1bis.frame2intermezzo0.concY7 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concY7 -justify left -width 4]
set concY8P [entry $z.frame1bis.frame2intermezzo0.concY8 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concY8 -justify left -width 4]

grid $concY8P -pady 4
grid $concY7P -pady 4
grid $concY6P -pady 4
grid $concY5P -pady 4
grid $concY4P -pady 4
grid $concY3P -pady 4
grid $concY2P -pady 4
grid $concY1P -pady 4

frame $z.frame1bis.frame2intermezzo -height $altezza2 -width 15
pack $z.frame1bis.frame2intermezzo -side left

canvas $z.frame1bis.frame2intermezzo.picture -height $altezza2 -width 15
pack $z.frame1bis.frame2intermezzo.picture

$z.frame1bis.frame2intermezzo.picture create line 10 365 10 100 -width 2 -arrow last

frame $z.frame1bis.frame2bis -height $altezza2 -width $larghezza
pack $z.frame1bis.frame2bis -side left

set x1y1P [entry $z.frame1bis.frame2bis.x1y1 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x1y1 -justify left -width 4]
set x2y1P [entry $z.frame1bis.frame2bis.x2y1 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x2y1 -justify left -width 4]
set x3y1P [entry $z.frame1bis.frame2bis.x3y1 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x3y1 -justify left -width 4]
set x4y1P [entry $z.frame1bis.frame2bis.x4y1 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x4y1 -justify left -width 4]
set x5y1P [entry $z.frame1bis.frame2bis.x5y1 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x5y1 -justify left -width 4]
set x6y1P [entry $z.frame1bis.frame2bis.x6y1 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x6y1 -justify left -width 4]
set x7y1P [entry $z.frame1bis.frame2bis.x7y1 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x7y1 -justify left -width 4]
set x8y1P [entry $z.frame1bis.frame2bis.x8y1 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x8y1 -justify left -width 4]

set x1y2P [entry $z.frame1bis.frame2bis.x1y2 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x1y2 -justify left -width 4]
set x2y2P [entry $z.frame1bis.frame2bis.x2y2 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x2y2 -justify left -width 4]
set x3y2P [entry $z.frame1bis.frame2bis.x3y2 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x3y2 -justify left -width 4]
set x4y2P [entry $z.frame1bis.frame2bis.x4y2 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x4y2 -justify left -width 4]
set x5y2P [entry $z.frame1bis.frame2bis.x5y2 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x5y2 -justify left -width 4]
set x6y2P [entry $z.frame1bis.frame2bis.x6y2 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x6y2 -justify left -width 4]
set x7y2P [entry $z.frame1bis.frame2bis.x7y2 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x7y2 -justify left -width 4]
set x8y2P [entry $z.frame1bis.frame2bis.x8y2 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x8y2 -justify left -width 4]

set x1y3P [entry $z.frame1bis.frame2bis.x1y3 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x1y3 -justify left -width 4]
set x2y3P [entry $z.frame1bis.frame2bis.x2y3 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x2y3 -justify left -width 4]
set x3y3P [entry $z.frame1bis.frame2bis.x3y3 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x3y3 -justify left -width 4]
set x4y3P [entry $z.frame1bis.frame2bis.x4y3 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x4y3 -justify left -width 4]
set x5y3P [entry $z.frame1bis.frame2bis.x5y3 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x5y3 -justify left -width 4]
set x6y3P [entry $z.frame1bis.frame2bis.x6y3 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x6y3 -justify left -width 4]
set x7y3P [entry $z.frame1bis.frame2bis.x7y3 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x7y3 -justify left -width 4]
set x8y3P [entry $z.frame1bis.frame2bis.x8y3 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x8y3 -justify left -width 4]

set x1y4P [entry $z.frame1bis.frame2bis.x1y4 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x1y4 -justify left -width 4]
set x2y4P [entry $z.frame1bis.frame2bis.x2y4 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x2y4 -justify left -width 4]
set x3y4P [entry $z.frame1bis.frame2bis.x3y4 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x3y4 -justify left -width 4]
set x4y4P [entry $z.frame1bis.frame2bis.x4y4 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x4y4 -justify left -width 4]
set x5y4P [entry $z.frame1bis.frame2bis.x5y4 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x5y4 -justify left -width 4]
set x6y4P [entry $z.frame1bis.frame2bis.x6y4 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x6y4 -justify left -width 4]
set x7y4P [entry $z.frame1bis.frame2bis.x7y4 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x7y4 -justify left -width 4]
set x8y4P [entry $z.frame1bis.frame2bis.x8y4 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x8y4 -justify left -width 4]

set x1y5P [entry $z.frame1bis.frame2bis.x1y5 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x1y5 -justify left -width 4]
set x2y5P [entry $z.frame1bis.frame2bis.x2y5 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x2y5 -justify left -width 4]
set x3y5P [entry $z.frame1bis.frame2bis.x3y5 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x3y5 -justify left -width 4]
set x4y5P [entry $z.frame1bis.frame2bis.x4y5 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x4y5 -justify left -width 4]
set x5y5P [entry $z.frame1bis.frame2bis.x5y5 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x5y5 -justify left -width 4]
set x6y5P [entry $z.frame1bis.frame2bis.x6y5 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x6y5 -justify left -width 4]
set x7y5P [entry $z.frame1bis.frame2bis.x7y5 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x7y5 -justify left -width 4]
set x8y5P [entry $z.frame1bis.frame2bis.x8y5 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x8y5 -justify left -width 4]

set x1y6P [entry $z.frame1bis.frame2bis.x1y6 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x1y6 -justify left -width 4]
set x2y6P [entry $z.frame1bis.frame2bis.x2y6 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x2y6 -justify left -width 4]
set x3y6P [entry $z.frame1bis.frame2bis.x3y6 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x3y6 -justify left -width 4]
set x4y6P [entry $z.frame1bis.frame2bis.x4y6 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x4y6 -justify left -width 4]
set x5y6P [entry $z.frame1bis.frame2bis.x5y6 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x5y6 -justify left -width 4]
set x6y6P [entry $z.frame1bis.frame2bis.x6y6 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x6y6 -justify left -width 4]
set x7y6P [entry $z.frame1bis.frame2bis.x7y6 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x7y6 -justify left -width 4]
set x8y6P [entry $z.frame1bis.frame2bis.x8y6 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x8y6 -justify left -width 4]

set x1y7P [entry $z.frame1bis.frame2bis.x1y7 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x1y7 -justify left -width 4]
set x2y7P [entry $z.frame1bis.frame2bis.x2y7 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x2y7 -justify left -width 4]
set x3y7P [entry $z.frame1bis.frame2bis.x3y7 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x3y7 -justify left -width 4]
set x4y7P [entry $z.frame1bis.frame2bis.x4y7 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x4y7 -justify left -width 4]
set x5y7P [entry $z.frame1bis.frame2bis.x5y7 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x5y7 -justify left -width 4]
set x6y7P [entry $z.frame1bis.frame2bis.x6y7 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x6y7 -justify left -width 4]
set x7y7P [entry $z.frame1bis.frame2bis.x7y7 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x7y7 -justify left -width 4]
set x8y7P [entry $z.frame1bis.frame2bis.x8y7 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x8y7 -justify left -width 4]

set x1y8P [entry $z.frame1bis.frame2bis.x1y8 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x1y8 -justify left -width 4]
set x2y8P [entry $z.frame1bis.frame2bis.x2y8 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x2y8 -justify left -width 4]
set x3y8P [entry $z.frame1bis.frame2bis.x3y8 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x3y8 -justify left -width 4]
set x4y8P [entry $z.frame1bis.frame2bis.x4y8 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x4y8 -justify left -width 4]
set x5y8P [entry $z.frame1bis.frame2bis.x5y8 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x5y8 -justify left -width 4]
set x6y8P [entry $z.frame1bis.frame2bis.x6y8 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x6y8 -justify left -width 4]
set x7y8P [entry $z.frame1bis.frame2bis.x7y8 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x7y8 -justify left -width 4]
set x8y8P [entry $z.frame1bis.frame2bis.x8y8 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable x8y8 -justify left -width 4]

set concX1P [entry $z.frame1bis.frame2bis.concX1 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concX1 -justify left -width 4]
set concX2P [entry $z.frame1bis.frame2bis.concX2 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concX2 -justify left -width 4]
set concX3P [entry $z.frame1bis.frame2bis.concX3 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concX3 -justify left -width 4]
set concX4P [entry $z.frame1bis.frame2bis.concX4 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concX4 -justify left -width 4]
set concX5P [entry $z.frame1bis.frame2bis.concX5 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concX5 -justify left -width 4]
set concX6P [entry $z.frame1bis.frame2bis.concX6 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concX6 -justify left -width 4]
set concX7P [entry $z.frame1bis.frame2bis.concX7 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concX7 -justify left -width 4]
set concX8P [entry $z.frame1bis.frame2bis.concX8 -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable concX8 -justify left -width 4]

set frecciasotto [canvas $z.frame1bis.frame2bis.frecciasotto -height 15 -width 00 ]
$frecciasotto create line 5 7 390 7 -width 2 -arrow last

set compostoYP [entry $z.frame1bis.frame2bis.compostoY -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable compostoY -justify left -width 20]
set compostoXP [entry $z.frame1bis.frame2bis.compostoX -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -14 bold} -textvariable compostoX -justify left -width 20]

grid $compostoYP -sticky "w" -columnspan 8 -padx 4 -pady 4
grid $x1y8P $x2y8P $x3y8P $x4y8P $x5y8P $x6y8P $x7y8P $x8y8P -padx 4 -pady 4
grid $x1y7P $x2y7P $x3y7P $x4y7P $x5y7P $x6y7P $x7y7P $x8y7P -padx 4 -pady 4
grid $x1y6P $x2y6P $x3y6P $x4y6P $x5y6P $x6y6P $x7y6P $x8y6P -padx 4 -pady 4
grid $x1y5P $x2y5P $x3y5P $x4y5P $x5y5P $x6y5P $x7y5P $x8y5P -padx 4 -pady 4
grid $x1y4P $x2y4P $x3y4P $x4y4P $x5y4P $x6y4P $x7y4P $x8y4P -padx 4 -pady 4
grid $x1y3P $x2y3P $x3y3P $x4y3P $x5y3P $x6y3P $x7y3P $x8y3P -padx 4 -pady 4
grid $x1y2P $x2y2P $x3y2P $x4y2P $x5y2P $x6y2P $x7y2P $x8y2P -padx 4 -pady 4
grid $x1y1P $x2y1P $x3y1P $x4y1P $x5y1P $x6y1P $x7y1P $x8y1P -padx 4 -pady 4
grid $frecciasotto -sticky "snew" -columnspan 8
grid $concX1P $concX2P $concX3P $concX4P $concX5P $concX6P $concX7P $concX8P -padx 4
grid $compostoXP -sticky "w" -columnspan 8 -padx 4 -pady 4

proc CT1 {} {
  variable z
  variable altezza
  variable larghezza
  variable GRAPHICS
  set GRAPHICS 1
  $z.frame1bis.frame2.picture delete cancellare
  set primariga ""
  set secondariga ""
  set terzariga ""
  set quartariga ""
  set quintariga ""
  set sestariga ""
  set settimariga ""
  set ottavariga ""
  set primacolonna ""
  set bordoX 10
  set x1y1 [$z.frame1bis.frame2bis.x1y1 get]
  set x2y1 [$z.frame1bis.frame2bis.x2y1 get]
  set x3y1 [$z.frame1bis.frame2bis.x3y1 get]
  set x4y1 [$z.frame1bis.frame2bis.x4y1 get]
  set x5y1 [$z.frame1bis.frame2bis.x5y1 get]
  set x6y1 [$z.frame1bis.frame2bis.x6y1 get]
  set x7y1 [$z.frame1bis.frame2bis.x7y1 get]
  set x8y1 [$z.frame1bis.frame2bis.x8y1 get]
  lappend primariga $x1y1
  lappend primariga $x2y1
  lappend primariga $x3y1
  lappend primariga $x4y1
  lappend primariga $x5y1
  lappend primariga $x6y1
  lappend primariga $x7y1
  lappend primariga $x8y1

  for {set i 0} {$i<[llength $primariga]} {incr i} {
    set col_point [color_map [lindex $primariga $i]]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$i)] [expr $bordoX+(40*10)] [expr 90+(40*$i)] [expr $bordoX+(40*9)] -fill $col_point -outline "" -tags cancellare 
  }

  set x1y2 [$z.frame1bis.frame2bis.x1y2 get]
  set x2y2 [$z.frame1bis.frame2bis.x2y2 get]
  set x3y2 [$z.frame1bis.frame2bis.x3y2 get]
  set x4y2 [$z.frame1bis.frame2bis.x4y2 get]
  set x5y2 [$z.frame1bis.frame2bis.x5y2 get]
  set x6y2 [$z.frame1bis.frame2bis.x6y2 get]
  set x7y2 [$z.frame1bis.frame2bis.x7y2 get]
  set x8y2 [$z.frame1bis.frame2bis.x8y2 get]
  lappend secondariga $x1y2
  lappend secondariga $x2y2
  lappend secondariga $x3y2
  lappend secondariga $x4y2
  lappend secondariga $x5y2
  lappend secondariga $x6y2
  lappend secondariga $x7y2
  lappend secondariga $x8y2

  for {set i 0} {$i<[llength $secondariga]} {incr i} {
    set col_point [color_map [lindex $secondariga $i]]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$i)] [expr $bordoX+(40*9)] [expr 90+(40*$i)] [expr $bordoX+(40*8)] -fill $col_point -outline "" -tags cancellare
  }

  set x1y3 [$z.frame1bis.frame2bis.x1y3 get]
  set x2y3 [$z.frame1bis.frame2bis.x2y3 get]
  set x3y3 [$z.frame1bis.frame2bis.x3y3 get]
  set x4y3 [$z.frame1bis.frame2bis.x4y3 get]
  set x5y3 [$z.frame1bis.frame2bis.x5y3 get]
  set x6y3 [$z.frame1bis.frame2bis.x6y3 get]
  set x7y3 [$z.frame1bis.frame2bis.x7y3 get]
  set x8y3 [$z.frame1bis.frame2bis.x8y3 get]
  lappend terzariga $x1y3
  lappend terzariga $x2y3
  lappend terzariga $x3y3
  lappend terzariga $x4y3
  lappend terzariga $x5y3
  lappend terzariga $x6y3
  lappend terzariga $x7y3
  lappend terzariga $x8y3

  for {set i 0} {$i<[llength $terzariga]} {incr i} {
    set col_point [color_map [lindex $terzariga $i]]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$i)] [expr $bordoX+(40*8)] [expr 90+(40*$i)] [expr $bordoX+(40*7)] -fill $col_point -outline "" -tags cancellare
  }

  set x1y4 [$z.frame1bis.frame2bis.x1y4 get]
  set x2y4 [$z.frame1bis.frame2bis.x2y4 get]
  set x3y4 [$z.frame1bis.frame2bis.x3y4 get]
  set x4y4 [$z.frame1bis.frame2bis.x4y4 get]
  set x5y4 [$z.frame1bis.frame2bis.x5y4 get]
  set x6y4 [$z.frame1bis.frame2bis.x6y4 get]
  set x7y4 [$z.frame1bis.frame2bis.x7y4 get]
  set x8y4 [$z.frame1bis.frame2bis.x8y4 get]
  lappend quartariga $x1y4
  lappend quartariga $x2y4
  lappend quartariga $x3y4
  lappend quartariga $x4y4
  lappend quartariga $x5y4
  lappend quartariga $x6y4
  lappend quartariga $x7y4
  lappend quartariga $x8y4

  for {set i 0} {$i<[llength $quartariga]} {incr i} {
    set col_point [color_map [lindex $quartariga $i]]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$i)] [expr $bordoX+(40*7)] [expr 90+(40*$i)] [expr $bordoX+(40*6)] -fill $col_point -outline "" -tags cancellare
  }

  set x1y5 [$z.frame1bis.frame2bis.x1y5 get]
  set x2y5 [$z.frame1bis.frame2bis.x2y5 get]
  set x3y5 [$z.frame1bis.frame2bis.x3y5 get]
  set x4y5 [$z.frame1bis.frame2bis.x4y5 get]
  set x5y5 [$z.frame1bis.frame2bis.x5y5 get]
  set x6y5 [$z.frame1bis.frame2bis.x6y5 get]
  set x7y5 [$z.frame1bis.frame2bis.x7y5 get]
  set x8y5 [$z.frame1bis.frame2bis.x8y5 get]
  lappend quintariga $x1y5
  lappend quintariga $x2y5
  lappend quintariga $x3y5
  lappend quintariga $x4y5
  lappend quintariga $x5y5
  lappend quintariga $x6y5
  lappend quintariga $x7y5
  lappend quintariga $x8y5

  for {set i 0} {$i<[llength $quintariga]} {incr i} {
    set col_point [color_map [lindex $quintariga $i]]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$i)] [expr $bordoX+(40*6)] [expr 90+(40*$i)] [expr $bordoX+(40*5)] -fill $col_point -outline "" -tags cancellare
  }

  set x1y6 [$z.frame1bis.frame2bis.x1y6 get]
  set x2y6 [$z.frame1bis.frame2bis.x2y6 get]
  set x3y6 [$z.frame1bis.frame2bis.x3y6 get]
  set x4y6 [$z.frame1bis.frame2bis.x4y6 get]
  set x5y6 [$z.frame1bis.frame2bis.x5y6 get]
  set x6y6 [$z.frame1bis.frame2bis.x6y6 get]
  set x7y6 [$z.frame1bis.frame2bis.x7y6 get]
  set x8y6 [$z.frame1bis.frame2bis.x8y6 get]
  lappend sestariga $x1y6
  lappend sestariga $x2y6
  lappend sestariga $x3y6
  lappend sestariga $x4y6
  lappend sestariga $x5y6
  lappend sestariga $x6y6
  lappend sestariga $x7y6
  lappend sestariga $x8y6

  for {set i 0} {$i<[llength $sestariga]} {incr i} {
    set col_point [color_map [lindex $sestariga $i]]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$i)] [expr $bordoX+(40*5)] [expr 90+(40*$i)] [expr $bordoX+(40*4)] -fill $col_point -outline "" -tags cancellare
  }

  set x1y7 [$z.frame1bis.frame2bis.x1y7 get]
  set x2y7 [$z.frame1bis.frame2bis.x2y7 get]
  set x3y7 [$z.frame1bis.frame2bis.x3y7 get]
  set x4y7 [$z.frame1bis.frame2bis.x4y7 get]
  set x5y7 [$z.frame1bis.frame2bis.x5y7 get]
  set x6y7 [$z.frame1bis.frame2bis.x6y7 get]
  set x7y7 [$z.frame1bis.frame2bis.x7y7 get]
  set x8y7 [$z.frame1bis.frame2bis.x8y7 get]
  lappend settimariga $x1y7
  lappend settimariga $x2y7
  lappend settimariga $x3y7
  lappend settimariga $x4y7
  lappend settimariga $x5y7
  lappend settimariga $x6y7
  lappend settimariga $x7y7
  lappend settimariga $x8y7

  for {set i 0} {$i<[llength $settimariga]} {incr i} {
    set col_point [color_map [lindex $settimariga $i]]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$i)] [expr $bordoX+(40*4)] [expr 90+(40*$i)] [expr $bordoX+(40*3)] -fill $col_point -outline "" -tags cancellare
  }

  set x1y8 [$z.frame1bis.frame2bis.x1y8 get]
  set x2y8 [$z.frame1bis.frame2bis.x2y8 get]
  set x3y8 [$z.frame1bis.frame2bis.x3y8 get]
  set x4y8 [$z.frame1bis.frame2bis.x4y8 get]
  set x5y8 [$z.frame1bis.frame2bis.x5y8 get]
  set x6y8 [$z.frame1bis.frame2bis.x6y8 get]
  set x7y8 [$z.frame1bis.frame2bis.x7y8 get]
  set x8y8 [$z.frame1bis.frame2bis.x8y8 get]
  lappend ottavariga $x1y8
  lappend ottavariga $x2y8
  lappend ottavariga $x3y8
  lappend ottavariga $x4y8
  lappend ottavariga $x5y8
  lappend ottavariga $x6y8
  lappend ottavariga $x7y8
  lappend ottavariga $x8y8

  for {set i 0} {$i<[llength $ottavariga]} {incr i} {
    set col_point [color_map [lindex $ottavariga $i]]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$i)] [expr $bordoX+(40*3)] [expr 90+(40*$i)] [expr $bordoX+(40*2)] -fill $col_point -outline "" -tags cancellare
  }

  MATRICE
  
  $z.frame1bis.frame2.picture create rectangle 410 280 430 260 -fill "dark green" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 260 430 240 -fill "forest green" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 240 430 220 -fill "green" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 220 430 200 -fill "green yellow" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 200 430 180 -fill "yellow" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 180 430 160 -fill "orange" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 160 430 140 -fill "dark orange" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 140 430 120 -fill "red" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 120 430 100 -fill "red4" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create text 450 108 -text ">90%" -font {Times -14} -tags cancellare
  $z.frame1bis.frame2.picture create text 450 272 -text "<20%" -font {Times -14} -tags cancellare

  $z.frame1bis.frame2.picture create line 430 280 430 100 -width 2 -tags cancellare
  $z.frame1bis.frame2.picture create line 410 280 410 100 -width 2 -tags cancellare
  for {set ff 1} {$ff<9} {incr ff} {
    $z.frame1bis.frame2.picture create line 410 [expr 280-(20*$ff)] 430 [expr 280-(20*$ff)] -width 1 -tags cancellare
  }
  $z.frame1bis.frame2.picture create line 410 280 430 280 -width 2 -tags cancellare
  $z.frame1bis.frame2.picture create line 410 100 430 100 -width 2 -tags cancellare
}

proc CT2 {} {
  variable z
  variable altezza
  variable larghezza
  variable GRAPHICS
  set GRAPHICS 2
  global primariga
  global primacolonna
  global concentrazioniX
  global concentrazioniY
  $z.frame1bis.frame2.picture delete cancellare
  set primariga ""
  set secondariga ""
  set terzariga ""
  set quartariga ""
  set quintariga ""
  set sestariga ""
  set settimariga ""
  set ottavariga ""
  set primacolonna ""
  set bordoX 10
  set x1y1 [$z.frame1bis.frame2bis.x1y1 get]
  set x2y1 [$z.frame1bis.frame2bis.x2y1 get]
  set x3y1 [$z.frame1bis.frame2bis.x3y1 get]
  set x4y1 [$z.frame1bis.frame2bis.x4y1 get]
  set x5y1 [$z.frame1bis.frame2bis.x5y1 get]
  set x6y1 [$z.frame1bis.frame2bis.x6y1 get]
  set x7y1 [$z.frame1bis.frame2bis.x7y1 get]
  set x8y1 [$z.frame1bis.frame2bis.x8y1 get]
  lappend primariga $x1y1
  lappend primariga $x2y1
  lappend primariga $x3y1
  lappend primariga $x4y1
  lappend primariga $x5y1
  lappend primariga $x6y1
  lappend primariga $x7y1
  lappend primariga $x8y1

  set x1y2 [$z.frame1bis.frame2bis.x1y2 get]
  set x2y2 [$z.frame1bis.frame2bis.x2y2 get]
  set x3y2 [$z.frame1bis.frame2bis.x3y2 get]
  set x4y2 [$z.frame1bis.frame2bis.x4y2 get]
  set x5y2 [$z.frame1bis.frame2bis.x5y2 get]
  set x6y2 [$z.frame1bis.frame2bis.x6y2 get]
  set x7y2 [$z.frame1bis.frame2bis.x7y2 get]
  set x8y2 [$z.frame1bis.frame2bis.x8y2 get]
  lappend secondariga $x1y2
  lappend secondariga $x2y2
  lappend secondariga $x3y2
  lappend secondariga $x4y2
  lappend secondariga $x5y2
  lappend secondariga $x6y2
  lappend secondariga $x7y2
  lappend secondariga $x8y2

  set x1y3 [$z.frame1bis.frame2bis.x1y3 get]
  set x2y3 [$z.frame1bis.frame2bis.x2y3 get]
  set x3y3 [$z.frame1bis.frame2bis.x3y3 get]
  set x4y3 [$z.frame1bis.frame2bis.x4y3 get]
  set x5y3 [$z.frame1bis.frame2bis.x5y3 get]
  set x6y3 [$z.frame1bis.frame2bis.x6y3 get]
  set x7y3 [$z.frame1bis.frame2bis.x7y3 get]
  set x8y3 [$z.frame1bis.frame2bis.x8y3 get]
  lappend terzariga $x1y3
  lappend terzariga $x2y3
  lappend terzariga $x3y3
  lappend terzariga $x4y3
  lappend terzariga $x5y3
  lappend terzariga $x6y3
  lappend terzariga $x7y3
  lappend terzariga $x8y3

  set x1y4 [$z.frame1bis.frame2bis.x1y4 get]
  set x2y4 [$z.frame1bis.frame2bis.x2y4 get]
  set x3y4 [$z.frame1bis.frame2bis.x3y4 get]
  set x4y4 [$z.frame1bis.frame2bis.x4y4 get]
  set x5y4 [$z.frame1bis.frame2bis.x5y4 get]
  set x6y4 [$z.frame1bis.frame2bis.x6y4 get]
  set x7y4 [$z.frame1bis.frame2bis.x7y4 get]
  set x8y4 [$z.frame1bis.frame2bis.x8y4 get]
  lappend quartariga $x1y4
  lappend quartariga $x2y4
  lappend quartariga $x3y4
  lappend quartariga $x4y4
  lappend quartariga $x5y4
  lappend quartariga $x6y4
  lappend quartariga $x7y4
  lappend quartariga $x8y4

  set x1y5 [$z.frame1bis.frame2bis.x1y5 get]
  set x2y5 [$z.frame1bis.frame2bis.x2y5 get]
  set x3y5 [$z.frame1bis.frame2bis.x3y5 get]
  set x4y5 [$z.frame1bis.frame2bis.x4y5 get]
  set x5y5 [$z.frame1bis.frame2bis.x5y5 get]
  set x6y5 [$z.frame1bis.frame2bis.x6y5 get]
  set x7y5 [$z.frame1bis.frame2bis.x7y5 get]
  set x8y5 [$z.frame1bis.frame2bis.x8y5 get]
  lappend quintariga $x1y5
  lappend quintariga $x2y5
  lappend quintariga $x3y5
  lappend quintariga $x4y5
  lappend quintariga $x5y5
  lappend quintariga $x6y5
  lappend quintariga $x7y5
  lappend quintariga $x8y5

  set x1y6 [$z.frame1bis.frame2bis.x1y6 get]
  set x2y6 [$z.frame1bis.frame2bis.x2y6 get]
  set x3y6 [$z.frame1bis.frame2bis.x3y6 get]
  set x4y6 [$z.frame1bis.frame2bis.x4y6 get]
  set x5y6 [$z.frame1bis.frame2bis.x5y6 get]
  set x6y6 [$z.frame1bis.frame2bis.x6y6 get]
  set x7y6 [$z.frame1bis.frame2bis.x7y6 get]
  set x8y6 [$z.frame1bis.frame2bis.x8y6 get]
  lappend sestariga $x1y6
  lappend sestariga $x2y6
  lappend sestariga $x3y6
  lappend sestariga $x4y6
  lappend sestariga $x5y6
  lappend sestariga $x6y6
  lappend sestariga $x7y6
  lappend sestariga $x8y6

  set x1y7 [$z.frame1bis.frame2bis.x1y7 get]
  set x2y7 [$z.frame1bis.frame2bis.x2y7 get]
  set x3y7 [$z.frame1bis.frame2bis.x3y7 get]
  set x4y7 [$z.frame1bis.frame2bis.x4y7 get]
  set x5y7 [$z.frame1bis.frame2bis.x5y7 get]
  set x6y7 [$z.frame1bis.frame2bis.x6y7 get]
  set x7y7 [$z.frame1bis.frame2bis.x7y7 get]
  set x8y7 [$z.frame1bis.frame2bis.x8y7 get]
  lappend settimariga $x1y7
  lappend settimariga $x2y7
  lappend settimariga $x3y7
  lappend settimariga $x4y7
  lappend settimariga $x5y7
  lappend settimariga $x6y7
  lappend settimariga $x7y7
  lappend settimariga $x8y7

  set x1y8 [$z.frame1bis.frame2bis.x1y8 get]
  set x2y8 [$z.frame1bis.frame2bis.x2y8 get]
  set x3y8 [$z.frame1bis.frame2bis.x3y8 get]
  set x4y8 [$z.frame1bis.frame2bis.x4y8 get]
  set x5y8 [$z.frame1bis.frame2bis.x5y8 get]
  set x6y8 [$z.frame1bis.frame2bis.x6y8 get]
  set x7y8 [$z.frame1bis.frame2bis.x7y8 get]
  set x8y8 [$z.frame1bis.frame2bis.x8y8 get]
  lappend ottavariga $x1y8
  lappend ottavariga $x2y8
  lappend ottavariga $x3y8
  lappend ottavariga $x4y8
  lappend ottavariga $x5y8
  lappend ottavariga $x6y8
  lappend ottavariga $x7y8
  lappend ottavariga $x8y8

  lappend primacolonna $x1y1
  lappend primacolonna $x1y2
  lappend primacolonna $x1y3
  lappend primacolonna $x1y4
  lappend primacolonna $x1y5
  lappend primacolonna $x1y6
  lappend primacolonna $x1y7
  lappend primacolonna $x1y8

  set concY1 [$z.frame1bis.frame2intermezzo0.concY1 get]
  set concY2 [$z.frame1bis.frame2intermezzo0.concY2 get]
  set concY3 [$z.frame1bis.frame2intermezzo0.concY3 get]
  set concY4 [$z.frame1bis.frame2intermezzo0.concY4 get]
  set concY5 [$z.frame1bis.frame2intermezzo0.concY5 get]
  set concY6 [$z.frame1bis.frame2intermezzo0.concY6 get]
  set concY7 [$z.frame1bis.frame2intermezzo0.concY7 get]
  set concY8 [$z.frame1bis.frame2intermezzo0.concY8 get]

  lappend concentrazioniY $concY1
  lappend concentrazioniY $concY2
  lappend concentrazioniY $concY3
  lappend concentrazioniY $concY4
  lappend concentrazioniY $concY5
  lappend concentrazioniY $concY6
  lappend concentrazioniY $concY7
  lappend concentrazioniY $concY8

  set concX1 [$z.frame1bis.frame2bis.concX1 get]
  set concX2 [$z.frame1bis.frame2bis.concX2 get]
  set concX3 [$z.frame1bis.frame2bis.concX3 get]
  set concX4 [$z.frame1bis.frame2bis.concX4 get]
  set concX5 [$z.frame1bis.frame2bis.concX5 get]
  set concX6 [$z.frame1bis.frame2bis.concX6 get]
  set concX7 [$z.frame1bis.frame2bis.concX7 get]
  set concX8 [$z.frame1bis.frame2bis.concX8 get]

  lappend concentrazioniX $concX1
  lappend concentrazioniX $concX2
  lappend concentrazioniX $concX3
  lappend concentrazioniX $concX4
  lappend concentrazioniX $concX5
  lappend concentrazioniX $concX6
  lappend concentrazioniX $concX7
  lappend concentrazioniX $concX8

  for {set k 1} {$k<8} {incr k} {
    set posizione [lindex $secondariga $k]
    #puts $posizione
    set CIvalue [CIalgorithm $posizione $k 1]
    #puts $CIvalue
    set CIcolor [color_map2 $CIvalue]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$k)] [expr $bordoX+(40*9)] [expr 90+(40*$k)] [expr $bordoX+(40*8)] -fill $CIcolor -outline "" -tags cancellare
  }

  for {set k 1} {$k<8} {incr k} {
    set posizione [lindex $terzariga $k]
    set CIvalue [CIalgorithm $posizione $k 2]
    #puts $CIvalue
    set CIcolor [color_map2 $CIvalue]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$k)] [expr $bordoX+(40*8)] [expr 90+(40*$k)] [expr $bordoX+(40*7)] -fill $CIcolor -outline "" -tags cancellare
  }

  for {set k 1} {$k<8} {incr k} {
    set posizione [lindex $quartariga $k]
    set CIvalue [CIalgorithm $posizione $k 3]
    #puts $CIvalue
    set CIcolor [color_map2 $CIvalue]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$k)] [expr $bordoX+(40*7)] [expr 90+(40*$k)] [expr $bordoX+(40*6)] -fill $CIcolor -outline "" -tags cancellare
  }

  for {set k 1} {$k<8} {incr k} {
    set posizione [lindex $quintariga $k]
    set CIvalue [CIalgorithm $posizione $k 4]
    #puts $CIvalue
    set CIcolor [color_map2 $CIvalue]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$k)] [expr $bordoX+(40*6)] [expr 90+(40*$k)] [expr $bordoX+(40*5)] -fill $CIcolor -outline "" -tags cancellare
  }

  for {set k 1} {$k<8} {incr k} {
    set posizione [lindex $sestariga $k]
    set CIvalue [CIalgorithm $posizione $k 5]
    #puts $CIvalue
    set CIcolor [color_map2 $CIvalue]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$k)] [expr $bordoX+(40*5)] [expr 90+(40*$k)] [expr $bordoX+(40*4)] -fill $CIcolor -outline "" -tags cancellare
  }

  for {set k 1} {$k<8} {incr k} {
    set posizione [lindex $settimariga $k]
    set CIvalue [CIalgorithm $posizione $k 6]
    #puts $CIvalue
    set CIcolor [color_map2 $CIvalue]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$k)] [expr $bordoX+(40*4)] [expr 90+(40*$k)] [expr $bordoX+(40*3)] -fill $CIcolor -outline "" -tags cancellare
  }

  for {set k 1} {$k<8} {incr k} {
    set posizione [lindex $ottavariga $k]
    set CIvalue [CIalgorithm $posizione $k 7]
    #puts $CIvalue
    set CIcolor [color_map2 $CIvalue]
    $z.frame1bis.frame2.picture create rectangle [expr 50+(40*$k)] [expr $bordoX+(40*3)] [expr 90+(40*$k)] [expr $bordoX+(40*2)] -fill $CIcolor -outline "" -tags cancellare
  }

  MATRICE

  $z.frame1bis.frame2.picture create rectangle 410 280 430 260 -fill "gray10" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 260 430 240 -fill "gray20" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 240 430 220 -fill "gray30" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 220 430 200 -fill "gray40" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 200 430 180 -fill "gray50" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 180 430 160 -fill "gray60" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 160 430 140 -fill "gray70" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 140 430 120 -fill "gray80" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create rectangle 410 120 430 100 -fill "gray90" -outline "" -tags cancellare
  $z.frame1bis.frame2.picture create text 445 108 -text ">1.0" -font {Times -14} -tags cancellare
  $z.frame1bis.frame2.picture create text 445 272 -text "<0.3" -font {Times -14} -tags cancellare

  $z.frame1bis.frame2.picture create line 430 280 430 100 -width 2 -tags cancellare
  $z.frame1bis.frame2.picture create line 410 280 410 100 -width 2 -tags cancellare
  for {set ff 1} {$ff<9} {incr ff} {
    $z.frame1bis.frame2.picture create line 410 [expr 280-(20*$ff)] 430 [expr 280-(20*$ff)] -width 1 -tags cancellare
  }
  $z.frame1bis.frame2.picture create line 410 280 430 280 -width 2 -tags cancellare
  $z.frame1bis.frame2.picture create line 410 100 430 100 -width 2 -tags cancellare

}

proc CIalgorithm {V C R} {
  variable z
  variable primacolonna
  variable primariga
#  puts $primariga
  variable concentrazioniX
  variable concentrazioniY
  set squareXX $C
  set squareYY $R
#  puts $squareXX
#  puts $squareYY

  set refYYvalue 9999
  for {set yy 0} {$yy<8} {incr yy} {
    set calcYY [expr abs([lindex $primacolonna $yy] - $V)]
    if {$calcYY < $refYYvalue} {
      set refYYvalue $calcYY
      set refYY $yy
    }
  }
#  puts $refYY

  set refXXvalue 9999
  for {set xx 0} {$xx<8} {incr xx} {
    set calcXX [expr abs([lindex $primariga $xx] - $V)]
    if {$calcXX < $refXXvalue} {
      set refXXvalue $calcXX
      set refXX $xx
    }
  }
#  puts $refXX
  set CI [expr [lindex $concentrazioniX $squareXX]/[lindex $concentrazioniX $refXX] + [expr [lindex $concentrazioniY $squareYY]/[lindex $concentrazioniY $refYY]]]
  return $CI
}


proc color_map D {
  variable z
  if {$D > 0.9} {
    return "red4"
  }
  if {$D <= 0.9 && $D > 0.8 } {
    return "red"
  }
  if {$D <= 0.8 && $D > 0.7 } {
    return "dark orange"
  }
  if {$D <= 0.7 && $D > 0.6 } {
    return "orange"
  }
  if {$D <= 0.6 && $D > 0.5 } {
    return "yellow"
  }
  if {$D <= 0.5 && $D > 0.4 } {
    return "green yellow"
  }
  if {$D <= 0.4 && $D > 0.3 } {
    return "green"
  }
  if {$D <= 0.3 && $D > 0.2 } {
    return "forest green"
  }
  if {$D < 0.2} {
    return "dark green"
  }
}

proc color_map2 T {
  variable z
  if {$T > 1.0} {
    return "gray90"
  }
  if {$T <= 1.0 && $T > 0.9 } {
    return "gray80"
  }
  if {$T <= 0.9 && $T > 0.8 } {
    return "gray70"
  }
  if {$T <= 0.8 && $T > 0.7 } {
    return "gray60"
  }
  if {$T <= 0.7 && $T > 0.6 } {
    return "gray50"
  }
  if {$T <= 0.6 && $T > 0.5 } {
    return "gray40"
  }
  if {$T <= 0.5 && $T > 0.4 } {
    return "gray30"
  }
  if {$T <= 0.4 && $T > 0.3 } {
    return "gray20"
  }
  if {$T < 0.3} {
    return "gray10"
  }
}

proc MATRICE {} {
  variable z
  variable altezza
  $z.frame1bis.frame2.picture create line 50 [expr $altezza-30] 370 [expr $altezza-30] -width 2 -arrow last -tags cancellare
  for {set i 1} {$i<10} {incr i} {
    $z.frame1bis.frame2.picture create line 50 [expr $altezza-(40*$i)] 370 [expr $altezza-(40*$i)] -width 2  -tags cancellare
  }
  $z.frame1bis.frame2.picture create line 40 410 40 90 -tags cancellare -width 2 -arrow last
  $z.frame1bis.frame2.picture create line 50 410 50 90 -tags cancellare -width 2
  for {set i 1} {$i<9} {incr i} {
    $z.frame1bis.frame2.picture create line [expr 50+(40*$i)] 410 [expr 50+(40*$i)] 90 -width 2  -tags cancellare
  }
  $z.frame1bis.frame2.picture create text 40 80 -text [$z.frame1bis.frame2bis.compostoY get] -font {Times -16} -tags cancellare
  $z.frame1bis.frame2.picture create text 370 433 -text [$z.frame1bis.frame2bis.compostoX get] -font {Times -16} -tags cancellare -justify left
}

proc RESET {} {
  variable z
  $z.frame1bis.frame2.picture delete cancellare
  $z.frame1bis.frame2bis.x1y1 delete 0 end
  $z.frame1bis.frame2bis.x2y1 delete 0 end
  $z.frame1bis.frame2bis.x3y1 delete 0 end
  $z.frame1bis.frame2bis.x4y1 delete 0 end
  $z.frame1bis.frame2bis.x5y1 delete 0 end
  $z.frame1bis.frame2bis.x6y1 delete 0 end
  $z.frame1bis.frame2bis.x7y1 delete 0 end
  $z.frame1bis.frame2bis.x8y1 delete 0 end

  $z.frame1bis.frame2bis.x1y2 delete 0 end
  $z.frame1bis.frame2bis.x2y2 delete 0 end
  $z.frame1bis.frame2bis.x3y2 delete 0 end
  $z.frame1bis.frame2bis.x4y2 delete 0 end
  $z.frame1bis.frame2bis.x5y2 delete 0 end
  $z.frame1bis.frame2bis.x6y2 delete 0 end
  $z.frame1bis.frame2bis.x7y2 delete 0 end
  $z.frame1bis.frame2bis.x8y2 delete 0 end

  $z.frame1bis.frame2bis.x1y3 delete 0 end
  $z.frame1bis.frame2bis.x2y3 delete 0 end
  $z.frame1bis.frame2bis.x3y3 delete 0 end
  $z.frame1bis.frame2bis.x4y3 delete 0 end
  $z.frame1bis.frame2bis.x5y3 delete 0 end
  $z.frame1bis.frame2bis.x6y3 delete 0 end
  $z.frame1bis.frame2bis.x7y3 delete 0 end
  $z.frame1bis.frame2bis.x8y3 delete 0 end

  $z.frame1bis.frame2bis.x1y4 delete 0 end
  $z.frame1bis.frame2bis.x2y4 delete 0 end
  $z.frame1bis.frame2bis.x3y4 delete 0 end
  $z.frame1bis.frame2bis.x4y4 delete 0 end
  $z.frame1bis.frame2bis.x5y4 delete 0 end
  $z.frame1bis.frame2bis.x6y4 delete 0 end
  $z.frame1bis.frame2bis.x7y4 delete 0 end
  $z.frame1bis.frame2bis.x8y4 delete 0 end

  $z.frame1bis.frame2bis.x1y5 delete 0 end
  $z.frame1bis.frame2bis.x2y5 delete 0 end
  $z.frame1bis.frame2bis.x3y5 delete 0 end
  $z.frame1bis.frame2bis.x4y5 delete 0 end
  $z.frame1bis.frame2bis.x5y5 delete 0 end
  $z.frame1bis.frame2bis.x6y5 delete 0 end
  $z.frame1bis.frame2bis.x7y5 delete 0 end
  $z.frame1bis.frame2bis.x8y5 delete 0 end

  $z.frame1bis.frame2bis.x1y6 delete 0 end
  $z.frame1bis.frame2bis.x2y6 delete 0 end
  $z.frame1bis.frame2bis.x3y6 delete 0 end
  $z.frame1bis.frame2bis.x4y6 delete 0 end
  $z.frame1bis.frame2bis.x5y6 delete 0 end
  $z.frame1bis.frame2bis.x6y6 delete 0 end
  $z.frame1bis.frame2bis.x7y6 delete 0 end
  $z.frame1bis.frame2bis.x8y6 delete 0 end

  $z.frame1bis.frame2bis.x1y7 delete 0 end
  $z.frame1bis.frame2bis.x2y7 delete 0 end
  $z.frame1bis.frame2bis.x3y7 delete 0 end
  $z.frame1bis.frame2bis.x4y7 delete 0 end
  $z.frame1bis.frame2bis.x5y7 delete 0 end
  $z.frame1bis.frame2bis.x6y7 delete 0 end
  $z.frame1bis.frame2bis.x7y7 delete 0 end
  $z.frame1bis.frame2bis.x8y7 delete 0 end

  $z.frame1bis.frame2bis.x1y8 delete 0 end
  $z.frame1bis.frame2bis.x2y8 delete 0 end
  $z.frame1bis.frame2bis.x3y8 delete 0 end
  $z.frame1bis.frame2bis.x4y8 delete 0 end
  $z.frame1bis.frame2bis.x5y8 delete 0 end
  $z.frame1bis.frame2bis.x6y8 delete 0 end
  $z.frame1bis.frame2bis.x7y8 delete 0 end
  $z.frame1bis.frame2bis.x8y8 delete 0 end

}

proc PRINT {} {
  variable z
  variable GRAPHICS
  if {$GRAPHICS == 1} { 
    $z.frame1bis.frame2.picture postscript -fontmap fontMap -height 480 -width 500 -file CT1.ps
  }
  if {$GRAPHICS == 2} {
    $z.frame1bis.frame2.picture postscript -fontmap fontMap -height 480 -width 500 -file CT2.ps
  }
}
