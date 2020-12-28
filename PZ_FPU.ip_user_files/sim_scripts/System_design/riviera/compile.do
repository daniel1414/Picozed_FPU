vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_8
vlib riviera/axi_utils_v2_0_4
vlib riviera/xbip_pipe_v3_0_4
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_4
vlib riviera/xbip_dsp48_multadd_v3_0_4
vlib riviera/xbip_bram18k_v3_0_4
vlib riviera/mult_gen_v12_0_13
vlib riviera/floating_point_v7_1_5
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_1
vlib riviera/axi_vip_v1_1_1
vlib riviera/processing_system7_vip_v1_0_3
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_1
vlib riviera/axi_data_fifo_v2_1_14
vlib riviera/axi_register_slice_v2_1_15
vlib riviera/axi_protocol_converter_v2_1_15

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap xbip_utils_v3_0_8 riviera/xbip_utils_v3_0_8
vmap axi_utils_v2_0_4 riviera/axi_utils_v2_0_4
vmap xbip_pipe_v3_0_4 riviera/xbip_pipe_v3_0_4
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_4 riviera/xbip_dsp48_addsub_v3_0_4
vmap xbip_dsp48_multadd_v3_0_4 riviera/xbip_dsp48_multadd_v3_0_4
vmap xbip_bram18k_v3_0_4 riviera/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 riviera/mult_gen_v12_0_13
vmap floating_point_v7_1_5 riviera/floating_point_v7_1_5
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 riviera/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 riviera/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 riviera/processing_system7_vip_v1_0_3
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_1 riviera/fifo_generator_v13_2_1
vmap axi_data_fifo_v2_1_14 riviera/axi_data_fifo_v2_1_14
vmap axi_register_slice_v2_1_15 riviera/axi_register_slice_v2_1_15
vmap axi_protocol_converter_v2_1_15 riviera/axi_protocol_converter_v2_1_15

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_8 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_4 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_4 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_4 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_4 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_4 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_13 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_5 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/sim/alu_add_d.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_f/sim/alu_add_f.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_sub_f/sim/alu_sub_f.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_sub_d/sim/alu_sub_d.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_mul_f/sim/alu_mul_f.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_mul_d/sim/alu_mul_d.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_div_f/sim/alu_div_f.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_div_d/sim/alu_div_d.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_rec_f/sim/alu_rec_f.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_rec_d/sim/alu_rec_d.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_sqrt_f/sim/alu_sqrt_f.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_sqrt_d/sim/alu_sqrt_d.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_log_f/sim/alu_log_f.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_log_d_1/sim/alu_log_d.vhd" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_exp_f/sim/alu_exp_f.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/System_design/ipshared/715f/src/FPU.v" \
"../../../bd/System_design/ipshared/715f/hdl/FPU_ip_v1_0_S00_AXI.v" \
"../../../bd/System_design/ipshared/715f/src/alu.v" \
"../../../bd/System_design/ipshared/715f/src/control_unit.v" \
"../../../bd/System_design/ipshared/715f/src/data_mem.v" \
"../../../bd/System_design/ipshared/715f/src/double_reg.v" \
"../../../bd/System_design/ipshared/715f/src/float_reg.v" \
"../../../bd/System_design/ipshared/715f/src/instr_mem.v" \
"../../../bd/System_design/ipshared/715f/src/mux2.v" \
"../../../bd/System_design/ipshared/715f/src/reg_file.v" \
"../../../bd/System_design/ipshared/715f/hdl/FPU_ip_v1_0.v" \
"../../../bd/System_design/ip/System_design_FPU_ip_0_0/sim/System_design_FPU_ip_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3  -sv2k12 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/System_design/ip/System_design_processing_system7_0_0/sim/System_design_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/System_design/ip/System_design_rst_ps7_0_100M_0/sim/System_design_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/System_design/sim/System_design.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -93 \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_14  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_15  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/verilog" "+incdir+../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/System_design/ip/System_design_auto_pc_0/sim/System_design_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

