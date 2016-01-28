#--------------------------------------------------------------
# remove xrf files to prevent warning about moving them because
# they already exist

my_rm( ["uw_tmp/*.xrf", "uw_tmp/*.qsf"] )

#--------------------------------------------------------------
# precision will generate these files,
# so rm old versions to make sure that don't pick up
# obsolete file in case precision fails

my_rm( [ "fir_top_gate.vhd" ] )
my_rm( [ "fir_top_area.txt" ] )
my_rm( [ "fir_top_speed.txt" ] )

my_mkdir( "LOG" )

#--------------------------------------------------------------
# run precision

xsys( "precision -shell -file uw_tmp/uw-logic-synth-precision_rtl.tcl" )

my_rm( ["fir_top_logic.xdb", "fir_top_logic.xrf"] )

my_mv( "uw_tmp/fir_top.edf", "uw_tmp/fir_top_logic.edf" )

#------------------------------------------------------------------------
# generate no_generics architecture

#--------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#--------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# currently used only by altera
xsys( "vlib altera_mf")
xsys( "vmap altera_mf /home/ece327/altera/vhdl_libs/altera_mf")

xsys( "vlib cycloneii")
xsys( "vmap cycloneii /home/ece327/altera/vhdl_libs/cycloneii")

#--------------------------------------------------------------
#

# get synthesized entity (std_logic vector and no generics)
# xsys( "vlog -novopt -work work-msim uw_tmp/fir_top_logic.v")
# vgencomp_to_arch( "fir_top", "logic", [] + [ "fir_synth_pkg.vhd", "fir_lib.vhd", "fir.vhd", "fir_top.vhd" ] )
