# ===============================
# HDLBits Verilog Makefile
# ===============================

# Default file name (can override)
FILE ?= wire

# Directories
SRC_DIR = src
BUILD_DIR = build

# Files
TOP = $(SRC_DIR)/$(FILE).v
TB  = $(SRC_DIR)/tb_$(FILE).v
OUT = $(BUILD_DIR)/$(FILE)_out

# Tools
IVERILOG = iverilog
VVP = vvp

# Default target
all: run

# Compile
compile:
	@mkdir -p $(BUILD_DIR)
	$(IVERILOG) -o $(OUT) $(TOP) $(TB)

# Run simulation
run: compile
	$(VVP) $(OUT)

# Clean build files
clean:
	rm -rf $(BUILD_DIR)

# Git push shortcut
push:
	git add .
	git commit -m "update $(FILE)"
	git push

# Help
help:
	@echo "Usage:"
	@echo "  make run FILE=wire"
	@echo "  make run FILE=mux"
	@echo "  make clean"
	@echo "  make push FILE=wire"
