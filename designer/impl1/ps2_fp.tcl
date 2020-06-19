new_project \
    -name {ps2} \
    -location {C:\Users\jimzhang\Documents\ps2try\designer\impl1\ps2_fp} \
    -mode {single}
set_device_type -type {A2F200M3F}
set_device_package -package {484 FBGA}
update_programming_file \
    -feature {prog_fpga:on} \
    -fdb_source {fdb} \
    -fdb_file {C:\Users\jimzhang\Documents\ps2try\designer\impl1\ps2.fdb} \
    -feature {prog_from:off} \
    -feature {prog_nvm:on} \
    -efm_content {location:0;source:efc} \
    -efm_block {location:0;config_file:{C:\Users\jimzhang\Documents\ps2try\component\work\ps2_MSS\MSS_ENVM_0\MSS_ENVM_0.efc}} \
    -pdb_file {C:\Users\jimzhang\Documents\ps2try\designer\impl1\ps2_fp\ps2.pdb}
set_programming_action -action {PROGRAM}
run_selected_actions
save_project
close_project
