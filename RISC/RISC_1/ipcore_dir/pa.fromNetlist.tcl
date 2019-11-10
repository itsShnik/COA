
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name blk_mem_gen_v7_3 -dir "E:/GROUP 16/RISC_1/ipcore_dir/planAhead_run_2" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/GROUP 16/RISC_1/ipcore_dir/DataMemory.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/GROUP 16/RISC_1/ipcore_dir} }
add_files [list {E:/GROUP 16/RISC_1/ipcore_dir/mem_data.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "E:/GROUP 16/RISC_1/mem_data_ucf.ucf" [current_fileset -constrset]
add_files [list {E:/GROUP 16/RISC_1/mem_data_ucf.ucf}] -fileset [get_property constrset [current_run]]
link_design
