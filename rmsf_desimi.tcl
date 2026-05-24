set z [toplevel ".rmsf"]
wm title $z "RMSF + colori + bello"
wm resizable $z 0 0

frame $z.frame1
pack $z.frame1 -padx 1 -fill x

set altezza 320
set larghezza 1300
set colorvariable ""
set sel0 ""
set sel1 ""
set sel2 ""
set sel3 ""
set sel4 ""
set sel5 ""
set sel6 ""
set sel7 ""
set sel8 ""
set sel9 ""
set sel10 ""

button $z.frame1.rmsfButton -background "white" -text "RMSF" -font {Helvetica -18 bold} -relief ridge -borderwidth 5 -command {RMSF} -width 15
pack $z.frame1.rmsfButton -side left

message $z.frame1.ymaxmessage -background "white" -text "Ymax:" -font {Helvetica -16 bold} -relief flat -borderwidth 1 -width 260
pack $z.frame1.ymaxmessage -side left

entry $z.frame1.ymax -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -18 bold} -textvariable ymax -justify right -width 3
pack $z.frame1.ymax -side left

message $z.frame1.stvaluemessage -background "white" -text "St. value:" -font {Helvetica -16 bold} -relief flat -borderwidth 1 -width 260
pack $z.frame1.stvaluemessage -side left

entry $z.frame1.startingvalue -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -18 bold} -textvariable stvalue -justify right -width 3
pack $z.frame1.startingvalue -side left

message $z.frame1.mayTICKSmessage -background "white" -text "Mayor ticks:" -font {Helvetica -16 bold} -relief flat -borderwidth 1 -width 260
pack $z.frame1.mayTICKSmessage -side left

entry $z.frame1.mayorticks -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -18 bold} -textvariable mayorticks -justify right -width 3
pack $z.frame1.mayorticks -side left

menubutton $z.frame1.curtain -relief raised -bd 2 -direction below -menu $z.frame1.curtain.menu
menu $z.frame1.curtain.menu -tearoff no
$z.frame1.curtain.menu add command -label "selection 0" -command {set colorvariable 0; $z.frame1.curtain configure -text "SEL 0"}
$z.frame1.curtain.menu add command -label "selection 1" -command {set colorvariable 1; $z.frame1.curtain configure -text "SEL 1"}
$z.frame1.curtain.menu add command -label "selection 2" -command {set colorvariable 2; $z.frame1.curtain configure -text "SEL 2"}
$z.frame1.curtain.menu add command -label "selection 3" -command {set colorvariable 3; $z.frame1.curtain configure -text "SEL 3"}
$z.frame1.curtain.menu add command -label "selection 4" -command {set colorvariable 4; $z.frame1.curtain configure -text "SEL 4"}
$z.frame1.curtain.menu add command -label "selection 5" -command {set colorvariable 5; $z.frame1.curtain configure -text "SEL 5"}
$z.frame1.curtain.menu add command -label "selection 6" -command {set colorvariable 6; $z.frame1.curtain configure -text "SEL 6"}
$z.frame1.curtain.menu add command -label "selection 7" -command {set colorvariable 7; $z.frame1.curtain configure -text "SEL 7"}
$z.frame1.curtain.menu add command -label "selection 8" -command {set colorvariable 8; $z.frame1.curtain configure -text "SEL 8"}
$z.frame1.curtain.menu add command -label "selection 9" -command {set colorvariable 9; $z.frame1.curtain configure -text "SEL 9"}
$z.frame1.curtain.menu add command -label "selection 10" -command {set colorvariable 10; $z.frame1.curtain configure -text "SEL 10"}
pack $z.frame1.curtain -side left

entry $z.frame1.curtainFROM -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -18 bold} -text "" -width 5
pack $z.frame1.curtainFROM -side left

entry $z.frame1.curtainTO -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -18 bold} -text "" -width 5
pack $z.frame1.curtainTO -side left

entry $z.frame1.colorsel -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -18 bold} -text "" -width 15
pack $z.frame1.colorsel -side left

button $z.frame1.applyButton -background "white" -text "APPLY" -font {Helvetica -18 bold} -relief ridge -borderwidth 5 -command {COLORHISTOGRAM} -width 5
pack $z.frame1.applyButton -side left

frame $z.frame2 -height $altezza -width $larghezza -relief ridge -borderwidth 5
pack $z.frame2

canvas $z.frame2.picture -height $altezza -width $larghezza
pack $z.frame2.picture

proc RMSF {} {
  variable z
  variable sel0
  variable sel1 
  variable sel2
  variable sel3
  variable sel4
  variable sel5
  variable sel6
  variable sel7
  variable sel8
  variable sel9
  variable sel10
  $z.frame2.picture delete prot1
  
  set prot [atomselect top "name CA"]
  set rmsfPROT [measure rmsf $prot] 
 
  set ymax [$z.frame1.ymax get]
  set mayortickslist [MAYORTICKS [llength $rmsfPROT] [$z.frame1.mayorticks get]]
  set conversionY [expr 250/$ymax]
  #=vertical axis=#
  set spacey [expr 25]
  $z.frame2.picture create line 45 10 45 300 -arrow first -tags prot1
  $z.frame2.picture create line 40 [expr $spacey +15] 45 [expr $spacey +15] -tags prot1
  $z.frame2.picture create line 40 [expr $spacey*2 +15] 45 [expr $spacey*2 +15] -tags prot1
  $z.frame2.picture create line 40 [expr $spacey*3 +15] 45 [expr $spacey*3 +15] -tags prot1
  $z.frame2.picture create line 40 [expr $spacey*4 +15] 45 [expr $spacey*4 +15] -tags prot1
  $z.frame2.picture create line 40 [expr $spacey*5 +15] 45 [expr $spacey*5 +15] -tags prot1
  $z.frame2.picture create line 40 [expr $spacey*6 +15] 45 [expr $spacey*6 +15] -tags prot1
  $z.frame2.picture create line 40 [expr $spacey*7 +15] 45 [expr $spacey*7 +15] -tags prot1
  $z.frame2.picture create line 40 [expr $spacey*8 +15] 45 [expr $spacey*8 +15] -tags prot1
  $z.frame2.picture create line 40 [expr $spacey*9 +15] 45 [expr $spacey*9 +15] -tags prot1
  $z.frame2.picture create line 40 [expr $spacey*10 +15] 45 [expr $spacey*10 +15] -tags prot1

  set stickY [expr $ymax.0/5]
  $z.frame2.picture create text 27 40 -text [format "%.1f" $ymax] -font {Times -12} -tags prot1
  $z.frame2.picture create text 27 240 -text [format "%.1f" [expr $stickY]] -font {Times -12} -tags prot1
  $z.frame2.picture create text 27 190 -text [format "%.1f" [expr $stickY*2]] -font {Times -12} -tags prot1
  $z.frame2.picture create text 27 140 -text [format "%.1f" [expr $stickY*3]] -font {Times -12} -tags prot1
  $z.frame2.picture create text 27 90 -text [format "%.1f" [expr $ymax-$stickY]] -font {Times -12} -tags prot1
  $z.frame2.picture create text 27 290 -text [format "%.1f" 0] -font {Times -12} -tags prot1

  #=horizontal axis=#
  set spacex [expr 20]
  $z.frame2.picture create line 45 290 1270 290 -arrow last -tags prot1

  for {set p 0} {$p<[llength $rmsfPROT]} {incr p} {
     set x [expr ($p*7)+50]

     set y [expr [lindex $rmsfPROT $p]]
     set yperfect [expr 290-(($y*250)/$ymax)]
     set y2 [expr 290]

     set xrct [expr $x-3]
     set xrct2 [expr $x+3]

     set colhist [COLORCHOICE [expr $p + [$z.frame1.startingvalue get]]] 

     $z.frame2.picture create rectangle $xrct $yperfect $xrct2 $y2 -fill $colhist -tags prot1
     if {[lsearch $mayortickslist $p] != "-1"} { 
       $z.frame2.picture create text $x 308 -text [expr $p + [$z.frame1.startingvalue get]] -font {Times -12} -tags prot1
       $z.frame2.picture create line [expr $p*7 +50] 298 [expr $p*7 +50] 290 -tags prot1
     }
     $z.frame2.picture create line [expr $p*7 +50] 295 [expr $p*7 +50] 290 -tags prot1 
  }
}

proc MAYORTICKS {A B} {
  set Mtickslist ""
  for {set x 0} {$x<[expr $B +1]} {incr x} {
     lappend Mtickslist [expr ($A/$B)*$x]
  }
  return $Mtickslist
}

proc COLORHISTOGRAM {} {
  variable z  
  variable colorvariable
  variable sel0
  variable sel1
  variable sel2
  variable sel3
  variable sel4
  variable sel5
  variable sel6
  variable sel7
  variable sel8
  variable sel9
  variable sel10
  if {$colorvariable == 0} {
    set sel0 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel0 $aux
    lappend sel0 [$z.frame1.colorsel get]
  }
  if {$colorvariable == 1} {
    set sel1 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel1 $aux
    lappend sel1 [$z.frame1.colorsel get]
  }
  if {$colorvariable == 2} {
    set sel2 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel2 $aux
    lappend sel2 [$z.frame1.colorsel get]
  }
  if {$colorvariable == 3} {
    set sel3 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel3 $aux
    lappend sel3 [$z.frame1.colorsel get]
  }
  if {$colorvariable == 4} {
    set sel4 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel4 $aux
    lappend sel4 [$z.frame1.colorsel get]
  }
  if {$colorvariable == 5} {
    set sel5 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel5 $aux
    lappend sel5 [$z.frame1.colorsel get]
  }
  if {$colorvariable == 6} {
    set sel6 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel6 $aux
    lappend sel6 [$z.frame1.colorsel get]
  }
  if {$colorvariable == 7} {
    set sel7 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel7 $aux
    lappend sel7 [$z.frame1.colorsel get]
  }
  if {$colorvariable == 8} {
    set sel8 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel8 $aux
    lappend sel8 [$z.frame1.colorsel get]
  }
  if {$colorvariable == 9} {
    set sel9 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel9 $aux
    lappend sel9 [$z.frame1.colorsel get]
  }
  if {$colorvariable == 10} {
    set sel10 ""
    set aux ""
    for {set hh [$z.frame1.curtainFROM get]} {$hh<=[$z.frame1.curtainTO get]} {incr hh} {
      lappend aux $hh
    }
    lappend sel10 $aux
    lappend sel10 [$z.frame1.colorsel get]
  }
}

proc COLORCHOICE {C} {
  variable z
  variable sel0
  variable sel1
  variable sel2
  variable sel3
  variable sel4
  variable sel5
  variable sel6
  variable sel7
  variable sel8
  variable sel9
  variable sel10

  set ciccio "tan"
  if {[lsearch [lindex $sel0 0] $C] != "-1"} {
    set ciccio [lindex $sel0 1]
  }
  if {[lsearch [lindex $sel1 0] $C] != "-1"} {
    set ciccio [lindex $sel1 1]
  }
  if {[lsearch [lindex $sel2 0] $C] != "-1"} {
    set ciccio [lindex $sel2 1] 
  }
  if {[lsearch [lindex $sel3 0] $C] != "-1"} {
    set ciccio [lindex $sel3 1]
  }
  if {[lsearch [lindex $sel4 0] $C] != "-1"} {
    set ciccio [lindex $sel4 1]
  }
  if {[lsearch [lindex $sel5 0] $C] != "-1"} {
    set ciccio [lindex $sel5 1]
  }
  if {[lsearch [lindex $sel6 0] $C] != "-1"} {
    set ciccio [lindex $sel6 1]
  }
  if {[lsearch [lindex $sel7 0] $C] != "-1"} {
    set ciccio [lindex $sel7 1]
  }
  if {[lsearch [lindex $sel8 0] $C] != "-1"} {
    set ciccio [lindex $sel8 1]
  }
  if {[lsearch [lindex $sel9 0] $C] != "-1"} {
    set ciccio [lindex $sel9 1]
  }
  if {[lsearch [lindex $sel10 0] $C] != "-1"} {
    set ciccio [lindex $sel10 1]
  }
  return $ciccio
}
