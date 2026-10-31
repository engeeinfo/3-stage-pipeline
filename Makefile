.PHONY: build lint test

IVERILOG ?= iverilog
VVP ?= vvp
BUILD_DIR := build
SIM := $(BUILD_DIR)/pipel

build:
	@mkdir -p $(BUILD_DIR)
	$(IVERILOG) -g2012 -Wall -s pipe_tb -o $(SIM) pipel.v pipe_tb.v

lint: build
	@echo "Icarus warning check completed during build."

test: build
	$(VVP) $(SIM)
