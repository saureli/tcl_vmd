set z [toplevel ".cc"]
wm title $z "COOR COEF ANALYSIS"
wm resizable $z 0 0

frame $z.frame1
pack $z.frame1 -padx 1 -fill x

set altezza 550
set larghezza 550
set altezza2 580
#set altezza 750
#set larghezza 800
#set altezza2 780

button $z.frame1.startButton -background "white" -text "START" -font {Helvetica -18 bold} -relief ridge -borderwidth 5 -command {CCA} -width 15
pack $z.frame1.startButton -side left

message $z.frame1.stvaluemessage -background "white" -text "St. value:" -font {Helvetica -16 bold} -relief flat -borderwidth 1 -width 260
pack $z.frame1.stvaluemessage -side left

entry $z.frame1.startingvalue -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -18 bold} -textvariable stvalue -justify right -width 3
pack $z.frame1.startingvalue -side left

message $z.frame1.mayTICKSmessage -background "white" -text "Mayor ticks:" -font {Helvetica -16 bold} -relief flat -borderwidth 1 -width 260
pack $z.frame1.mayTICKSmessage -side left

entry $z.frame1.mayorticks -background grey -foreground black -relief ridge -borderwidth 1 -font {Helvetica -18 bold} -textvariable ymax -justify right -width 3
pack $z.frame1.mayorticks -side left

frame $z.frame2 -height $altezza2 -width $larghezza -relief ridge -borderwidth 5
pack $z.frame2

canvas $z.frame2.picture -height $altezza2 -width $larghezza
pack $z.frame2.picture

proc average L {
    expr ([join $L +])/[llength $L].
}

proc cross_correlation {M N} {
  set lista_vettore_pos_i ""
  for {set x 0} {$x<[molinfo top get numframes]} {incr x} {
    set sel1 [atomselect top "resid $M and name CA" frame $x]
    set X [$sel1 get x]
    set Y [$sel1 get y]
    set Z [$sel1 get z]
    set vettore_pos_i [expr sqrt(($X*$X)+($Y*$Y)+($Z*$Z))]
    lappend lista_vettore_pos_i $vettore_pos_i
  }

  set media_vettore_pos_i [average $lista_vettore_pos_i]
#  puts $media_vettore_pos_i

  set lista_vettore_pos_j ""
  for {set k 0} {$k<[molinfo top get numframes]} {incr k} {
    set sel1 [atomselect top "resid $N and name CA" frame $k]
    set X [$sel1 get x]
    set Y [$sel1 get y]
    set Z [$sel1 get z]
    set vettore_pos_j [expr sqrt(($X*$X)+($Y*$Y)+($Z*$Z))]
    lappend lista_vettore_pos_j $vettore_pos_j
  }

  set media_vettore_pos_j [average $lista_vettore_pos_j]
#  puts $media_vettore_pos_j

  set covariance 0
  for {set x 0} {$x<[molinfo top get numframes]} {incr x} {
    set aux [expr [expr [lindex $lista_vettore_pos_i $x] - $media_vettore_pos_i]*[expr [lindex $lista_vettore_pos_j $x] - $media_vettore_pos_j]]
    set covariance [expr $covariance + $aux]
  }

  set covariance_av [expr $covariance/[molinfo top get numframes]]
#  puts "la covarianza media = $covariance_av"

  set lista_vettore_pos_i_quadro ""
  for {set x 0} {$x<[llength $lista_vettore_pos_i]} {incr x} {
    lappend lista_vettore_pos_i_quadro [expr [lindex $lista_vettore_pos_i $x]*[lindex $lista_vettore_pos_i $x]]
  }
  set media_vettore_pos_i_quadro [average $lista_vettore_pos_i_quadro]
  set media_quadra_vettore_pos_i [expr $media_vettore_pos_i*$media_vettore_pos_i]

  set lista_vettore_pos_j_quadro ""
  for {set x 0} {$x<[llength $lista_vettore_pos_j]} {incr x} {
    lappend lista_vettore_pos_j_quadro [expr [lindex $lista_vettore_pos_j $x]*[lindex $lista_vettore_pos_j $x]]
  }
  set media_vettore_pos_j_quadro [average $lista_vettore_pos_j_quadro]
  set media_quadra_vettore_pos_j [expr $media_vettore_pos_j*$media_vettore_pos_j]

  set denominatore [expr sqrt(($media_vettore_pos_i_quadro-$media_quadra_vettore_pos_i)*($media_vettore_pos_j_quadro-$media_quadra_vettore_pos_j))]

  set coor_coeff [expr $covariance_av/$denominatore]
  return [format "%.2f" $coor_coeff]
}

proc color_map D {
  variable z
  variable CCAscore 
  if {$CCAscore > 0.9} {
    return "red"
  } 
  if {$CCAscore <= 0.9 && $CCAscore > 0.7 } {
    return "orange"
  }
  if {$CCAscore <= 0.7 && $CCAscore > 0.5 } {
    return "yellow"
  }
  if {$CCAscore <= 0.5 && $CCAscore > 0.3 } {
    return "green yellow"
  } 
  if {$CCAscore <= 0.3 && $CCAscore > -0.3 } {
    return "green"
  }
  if {$CCAscore <= -0.3 && $CCAscore > -0.5 } {
    return "turquoise"
  }
  if {$CCAscore <= -0.5 && $CCAscore > -0.7 } {
    return "dodger blue"
  }
  if {$CCAscore <= -0.7 && $CCAscore > -0.9 } {
    return "blue"
  }
  if {$CCAscore < -0.9} {
    return "navy"
  }
}


proc CCA {} {
  variable z
  variable altezza
  variable larghezza
  global CCAscore
  $z.frame2.picture delete cancellare
#  set contatore_x 0
  set contatore_y 0
  set colormin -1
  set colormax 1
  set protein [atomselect top "name CA"]
  set mayortickslist [MAYORTICKS [llength [$protein get resid]] [$z.frame1.mayorticks get]]
  $z.frame2.picture create line 5 $altezza [expr ([llength [$protein get resid]]*3)+6] $altezza -tags cancellare
  $z.frame2.picture create line [expr ([llength [$protein get resid]]*3)+6] $altezza [expr ([llength [$protein get resid]]*3)+6] [expr $altezza -([llength [$protein get resid]]*3)] -tags cancellare

  for {set hh 0} {$hh<[llength [$protein get resid]]} {incr hh} {
    $z.frame2.picture create line [expr ($hh *3)+7] $altezza [expr ($hh *3)+7] [expr $altezza +5]
    $z.frame2.picture create line [expr ([llength [$protein get resid]]*3)+5] [expr ($altezza -($hh *3))-2] [expr ([llength [$protein get resid]]*3)+10] [expr ($altezza -($hh *3))-2]
    if {[lsearch $mayortickslist $hh] != "-1"} {
       $z.frame2.picture create text [expr ($hh *3)+7] [expr $altezza +13] -text [expr $hh + [$z.frame1.startingvalue get]] -font {Helvetica -9} -tags cancellare
       $z.frame2.picture create line [expr ($hh *3)+7] $altezza [expr ($hh *3)+7] [expr $altezza +10] -tags cancellare
       $z.frame2.picture create line [expr ([llength [$protein get resid]]*3)+6] [expr $altezza -($hh*3)-2] [expr ([llength [$protein get resid]]*3)+16] [expr $altezza -($hh*3)-2] -tags cancellare
       $z.frame2.picture create text [expr ([llength [$protein get resid]]*3)+17] [expr $altezza -($hh*3)-2] -text [expr $hh + [$z.frame1.startingvalue get]] -font {Helvetica -9} -anchor w -tags cancellare
    }
  }
  for {set numero2 [lindex [$protein get resid] 0]} {$numero2<[expr [lindex [$protein get resid] end] +1] } {incr numero2} {
    puts $numero2
    set contatore_x 0
    set contatore_y [expr $contatore_y +1]
    for {set numero [lindex [$protein get resid] 0]} {$numero<[expr [lindex [$protein get resid] end] +1] } {incr numero} {
      set CCAscore [cross_correlation $numero2 $numero]
#      puts "CCAscore = $CCAscore"
      set col_point [color_map $CCAscore]
      set contatore_x [expr $contatore_x +1]
      $z.frame2.picture create rectangle [expr ($contatore_x * 3)+3] [expr ($altezza+3)-($contatore_y * 3)] [expr ($contatore_x * 3) +6] [expr $altezza-($contatore_y * 3)] -fill $col_point -outline "" -tags cancellare
    }
  }

$z.frame2.picture create rectangle 10 5 15 20 -fill "navy" -tags cancellare -outline ""
$z.frame2.picture create rectangle 15 5 20 20 -fill "blue" -tags cancellare -outline ""
$z.frame2.picture create rectangle 20 5 25 20 -fill "dodger blue" -tags cancellare -outline ""
$z.frame2.picture create rectangle 25 5 30 20 -fill "turquoise" -tags pointsLC -outline ""
$z.frame2.picture create rectangle 30 5 35 20 -fill "green" -tags pointsLC -outline ""
$z.frame2.picture create rectangle 35 5 40 20 -fill "green yellow" -tags pointsLC -outline ""
$z.frame2.picture create rectangle 40 5 45 20 -fill "yellow" -tags pointsLC -outline ""
$z.frame2.picture create rectangle 45 5 50 20 -fill "orange" -tags pointsLC -outline ""
$z.frame2.picture create rectangle 50 5 55 20 -fill "red" -tags pointsLC -outline ""
$z.frame2.picture create text 13 25 -text "-1" -font {Helvetica -9}
$z.frame2.picture create text 53 25 -text "+1" -font {Helvetica -9}

}

proc MAYORTICKS {A B} {
  set Mtickslist ""
  for {set x 0} {$x<[expr $B +1]} {incr x} {
     lappend Mtickslist [expr ($A/$B)*$x]
  }
  return $Mtickslist
}
