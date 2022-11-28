## SPDX-FileCopyrightText: © 2021 Uri Shaked <uri@wokwi.com>
## SPDX-License-Identifier: MIT
# See https://docs.cocotb.org/en/stable/quickstart.html for more info

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

export COCOTB_REDUCED_LOG_FMT=1

ifneq ($(GATES),yes)
# normal simulation
VERILOG_SOURCES += $(PWD)/cell_tb.v $(PWD)/../verilog/rtl/user_module_349472166361694804.v $(PWD)/../verilog/rtl/cells.v
else
# gate level simulation requires some extra setup
COMPILE_ARGS    += -DGL_TEST
COMPILE_ARGS    += -DFUNCTIONAL
COMPILE_ARGS    += -DUSE_POWER_PINS
COMPILE_ARGS    += -DSIM
COMPILE_ARGS    += -DUNIT_DELAY=#1
VERILOG_SOURCES += $(PWD)/gf180mcu_fd_sc_mcu7t5v0.v

# the github action copies the gatelevel verilog from /runs/wokwi/results/final/verilog/gl/ 
VERILOG_SOURCES += $(PWD)/cell_tb_gl.v $(PWD)/../verilog/gl/tiny_user_project.v
endif

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = test_cell

# MODULE is the basename of the Python test file
MODULE = test_cell

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
