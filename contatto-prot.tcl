set z [toplevel ".ppi"]
wm title $z "PROTEIN PROTEIN INTERACTION"
wm resizable $z 0 0

frame $z.frame1
pack $z.frame1 -padx 1 -fill x

set altezza 320
set larghezza 1000

button $z.frame1.hTENButton -background "white" -text "hTEN" -font {Helvetica -18 bold} -relief ridge -borderwidth 5 -command {HTENcontatti} -width 15
pack $z.frame1.hTENButton -side left

button $z.frame1.tPP1Button -background "white" -text "TPP1" -font {Helvetica -18 bold} -relief ridge -borderwidth 5 -command {TPP1contatti} -width 15
pack $z.frame1.tPP1Button -side left

button $z.frame1.printButton -background "white" -text "PRINT" -font {Helvetica -18 bold} -relief ridge -borderwidth 5 -command {PRINT} -width 15
pack $z.frame1.printButton -side right

frame $z.frame2 -height $altezza -width $larghezza -relief ridge -borderwidth 5
pack $z.frame2

canvas $z.frame2.picture -height $altezza -width $larghezza
pack $z.frame2.picture

proc HTENcontatti {} {
  variable z 
  $z.frame2.picture delete prot1
  $z.frame2.picture delete prot2

  set testo [open "Residui_contatto_hTEN.txt" w]
  close $testo
  set testo [open "Residui_contatto_hTEN.txt" a]
  for {set x 0} {$x<10000} {incr x} {
    set contatto_hTEN [atomselect top "((same residue as protein within 4 of (index 0 to 2250)) and not (index 0 to 2250)) and name CA" frame $x]
    puts $testo [$contatto_hTEN get resid]
  }
  close $testo
  set testo [open "Residui_contatto_hTEN.txt"]
  set aux [read $testo]
#  close $testo

  set ymax 1000
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
  $z.frame2.picture create text 20 40 -text [format "%.2f" $ymax] -font {Helvetica -9} -tags prot1
  $z.frame2.picture create text 20 240 -text [format "%.2f" [expr $stickY]] -font {Helvetica -9} -tags prot1
  $z.frame2.picture create text 20 190 -text [format "%.2f" [expr $stickY*2]] -font {Helvetica -9} -tags prot1
  $z.frame2.picture create text 20 140 -text [format "%.2f" [expr $stickY*3]] -font {Helvetica -9} -tags prot1
  $z.frame2.picture create text 20 90 -text [format "%.2f" [expr $ymax-$stickY]] -font {Helvetica -9} -tags prot1
  $z.frame2.picture create text 20 290 -text [format "%.2f" 0] -font {Helvetica -9} -tags prot1

  #=horizontal axis=#
  set spacex [expr 20]
  $z.frame2.picture create line 45 290 950 290 -arrow last -tags prot1

  set counter 0
  for {set p 0} {$p<1000} {incr p} {
    set paux "\\m$p\\M"
    if {[llength [regexp -inline -all $paux $aux]] != 0} {
      incr counter
      set x [expr ($counter*18)+45]

      set y [expr [llength [regexp -inline -all $paux $aux]]]
      set yperfect [expr 290-($y*0.025)]
      set y2 [expr 290]

      set xrct [expr $x-7]
      set xrct2 [expr $x+7]

      $z.frame2.picture create rectangle $xrct $yperfect $xrct2 $y2 -fill red -tags prot1
      $z.frame2.picture create text $x 308 -text $p -font {Helvetica -9} -tags prot1
      $z.frame2.picture create line [expr $counter*18 +45] 295 [expr $counter*18 +45] 290 -tags prot1

    }
  }
  
}

proc TPP1contatti {} {
  variable z 
  $z.frame2.picture delete prot1
  $z.frame2.picture delete prot2
 
  set testo [open "Residui_contatto_TPP1.txt" w]
  close $testo
  set testo [open "Residui_contatto_TPP1.txt" a]
  for {set x 0} {$x<10000} {incr x} {
    set contatto_TPP1 [atomselect top "((same residue as protein within 4 of (index 2252 to 6000)) and not (index 2252 to 6000)) and name CA" frame $x]
    puts $testo [$contatto_TPP1 get resid]
  }
  close $testo
  set testo [open "Residui_contatto_TPP1.txt"]
  set aux [read $testo]
#  close $testo

  set ymax 1000
  set conversionY [expr 250/$ymax]
  #=vertical axis=#
  set spacey [expr 25]
  $z.frame2.picture create line 45 10 45 300 -arrow first -tags prot2
  $z.frame2.picture create line 40 [expr $spacey +15] 45 [expr $spacey +15] -tags prot2
  $z.frame2.picture create line 40 [expr $spacey*2 +15] 45 [expr $spacey*2 +15] -tags prot2
  $z.frame2.picture create line 40 [expr $spacey*3 +15] 45 [expr $spacey*3 +15] -tags prot2
  $z.frame2.picture create line 40 [expr $spacey*4 +15] 45 [expr $spacey*4 +15] -tags prot2
  $z.frame2.picture create line 40 [expr $spacey*5 +15] 45 [expr $spacey*5 +15] -tags prot2
  $z.frame2.picture create line 40 [expr $spacey*6 +15] 45 [expr $spacey*6 +15] -tags prot2
  $z.frame2.picture create line 40 [expr $spacey*7 +15] 45 [expr $spacey*7 +15] -tags prot2
  $z.frame2.picture create line 40 [expr $spacey*8 +15] 45 [expr $spacey*8 +15] -tags prot2
  $z.frame2.picture create line 40 [expr $spacey*9 +15] 45 [expr $spacey*9 +15] -tags prot2
  $z.frame2.picture create line 40 [expr $spacey*10 +15] 45 [expr $spacey*10 +15] -tags prot2

  set stickY [expr $ymax.0/5]
  $z.frame2.picture create text 20 40 -text [format "%.2f" $ymax] -font {Helvetica -9} -tags prot2
  $z.frame2.picture create text 20 240 -text [format "%.2f" [expr $stickY]] -font {Helvetica -9} -tags prot2
  $z.frame2.picture create text 20 190 -text [format "%.2f" [expr $stickY*2]] -font {Helvetica -9} -tags prot2
  $z.frame2.picture create text 20 140 -text [format "%.2f" [expr $stickY*3]] -font {Helvetica -9} -tags prot2
  $z.frame2.picture create text 20 90 -text [format "%.2f" [expr $ymax-$stickY]] -font {Helvetica -9} -tags prot2
  $z.frame2.picture create text 20 290 -text [format "%.2f" 0] -font {Helvetica -9} -tags prot2

  #=horizontal axis=#
  set spacex [expr 20]
  $z.frame2.picture create line 45 290 950 290 -arrow last -tags prot2

  set counter 0
  for {set p 0} {$p<1000} {incr p} {
    set paux "\\m$p\\M"
    if {[llength [regexp -inline -all $paux $aux]] != 0} {
      incr counter
      set x [expr ($counter*18)+45]

      set y [expr [llength [regexp -inline -all $paux $aux]]]
      set yperfect [expr 290-($y*0.025)]
      set y2 [expr 290]

      set xrct [expr $x-7]
      set xrct2 [expr $x+7]

      $z.frame2.picture create rectangle $xrct $yperfect $xrct2 $y2 -fill blue -tags prot2
      $z.frame2.picture create text $x 308 -text $p -font {Helvetica -9} -tags prot2
      $z.frame2.picture create line [expr $counter*18 +45] 295 [expr $counter*18 +45] 290 -tags prot2

    }
  }
  
}

proc PRINT {} {
  variable z
  variable altezza
  variable larghezza

  $z.frame2.picture postscript -fontmap fontMap -height $altezza -width $larghezza -file contatti.ps
}

