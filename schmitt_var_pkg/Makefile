TOP_DIR := $(realpath ../ee477-hammer-cad)
OBJ_DIR := build
INPUT_CFGS := cfg.yml
TB_CFGS := tb.yml

include $(TOP_DIR)/module_top.mk

sim-rtl: | disable-sim
sim-rtl-hard: | disable-sim
sim-syn-functional: | disable-sim
sim-par-functional: | disable-sim

