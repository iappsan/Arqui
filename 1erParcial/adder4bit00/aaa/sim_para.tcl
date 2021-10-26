lappend auto_path "D:/LSCC/diamond/3.12/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {MachXO2}
set ::bali::simulation::Para(PROJECT) {aaa}
set ::bali::simulation::Para(PROJECTPATH) {D:/Clases/Arqui/adder4bit00}
set ::bali::simulation::Para(FILELIST) {"D:/Clases/Arqui/adder4bit00/packageha00.vhdl" "D:/Clases/Arqui/adder4bit00/packagefa00.vhdl" "D:/Clases/Arqui/adder4bit00/packageadder4bit00.vhdl" "D:/Clases/Arqui/adder4bit00/xora00.vhdl" "D:/Clases/Arqui/adder4bit00/xnora00.vhdl" "D:/Clases/Arqui/adder4bit00/anda00.vhdl" "D:/Clases/Arqui/adder4bit00/orao00.vhdl" "D:/Clases/Arqui/adder4bit00/ha00.vhdl" "D:/Clases/Arqui/adder4bit00/fa00.vhdl" "D:/Clases/Arqui/adder4bit00/adder4bit00.vhdl" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {adder4bit00}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {D:/LSCC/diamond/3.12}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
