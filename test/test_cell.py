# SPDX-FileCopyrightText: © 2022 Uri Shaked <uri@wokwi.com>
# SPDX-License-Identifier: Apache2.0

import os
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, Timer

@cocotb.test()
async def test_cell(dut):
    i_neighbors = dut.neighbors
    i_set = dut.set
    i_reset = dut.reset
    o_alive = dut.alive
    o_notalive = dut.notalive
    #clk = make_clock(dut, 10)

    i_reset <= 1
    i_set <= 0
    i_neighbors <= 0b00000000
    await ClockCycles(dut.clk, 2)
    assert o_alive.value == 0
    assert o_notalive.value == 1

    i_reset <= 0
    i_set <= 1
    await ClockCycles(dut.clk, 2)
    assert o_alive.value == 1
    assert o_notalive.value == 0

    i_set <= 0
    i_reset <= 1
    await ClockCycles(dut.clk, 2)
    assert o_alive.value == 0
    assert o_notalive.value == 1

    i_reset <= 0
    i_neighbors <= 0b00000001
    await ClockCycles(dut.clk, 2)
    assert o_alive.value == 0

    i_neighbors <= 0b00000011
    await ClockCycles(dut.clk, 2)
    assert o_alive.value == 0

    i_neighbors <= 0b00000111
    await ClockCycles(dut.clk, 2)
    assert o_alive.value == 1

    i_neighbors <= 0b00001111
    await ClockCycles(dut.clk, 2)
    assert o_alive.value == 0

    i_neighbors <= 0b10011000
    await ClockCycles(dut.clk, 2)
    assert o_alive.value == 1

    i_neighbors <= 0b00011000
    await ClockCycles(dut.clk, 2)
    assert o_alive.value == 1

    i_neighbors <= 0b00001000
    await ClockCycles(dut.clk, 2)
    assert o_alive.value == 0

