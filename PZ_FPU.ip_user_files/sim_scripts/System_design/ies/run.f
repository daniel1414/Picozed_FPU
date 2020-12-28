-makelib ies_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_8 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_utils_v2_0_4 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_4 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_addsub_v3_0_4 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_multadd_v3_0_4 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_4 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_13 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/floating_point_v7_1_5 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ip/System_design_FPU_ip_0_0/src/alu_add_d/hdl/floating_point_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_1 -sv \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_1 -sv \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_3 -sv \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System_design/ip/System_design_processing_system7_0_0/sim/System_design_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System_design/ip/System_design_rst_ps7_0_100M_0/sim/System_design_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System_design/sim/System_design.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_14 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_15 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_15 \
  "../../../../PZ_FPU.srcs/sources_1/bd/System_design/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/System_design/ip/System_design_auto_pc_0/sim/System_design_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

