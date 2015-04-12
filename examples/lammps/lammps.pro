TEMPLATE = app
CONFIG += c++11

QT += qml quick widgets opengl openglextensions
QMAKE_CXXFLAGS += -Wno-unused-parameter -Wno-unused-variable
CONFIG += warn_off

SOURCES += \
    main.cpp \
    mysimulator.cpp \
    lammps/angle.cpp \
    lammps/angle_hybrid.cpp \
    lammps/atom.cpp \
    lammps/atom_map.cpp \
    lammps/atom_vec.cpp \
    lammps/atom_vec_atomic.cpp \
    lammps/atom_vec_body.cpp \
    lammps/atom_vec_charge.cpp \
    lammps/atom_vec_ellipsoid.cpp \
    lammps/atom_vec_hybrid.cpp \
    lammps/atom_vec_line.cpp \
    lammps/atom_vec_sphere.cpp \
    lammps/atom_vec_tri.cpp \
    lammps/balance.cpp \
    lammps/body.cpp \
    lammps/bond.cpp \
    lammps/bond_hybrid.cpp \
    lammps/change_box.cpp \
    lammps/citeme.cpp \
    lammps/comm.cpp \
    lammps/comm_brick.cpp \
    lammps/comm_tiled.cpp \
    lammps/compute.cpp \
    lammps/compute_angle_local.cpp \
    lammps/compute_atom_molecule.cpp \
    lammps/compute_bond_local.cpp \
    lammps/compute_centro_atom.cpp \
    lammps/compute_cluster_atom.cpp \
    lammps/compute_cna_atom.cpp \
    lammps/compute_com.cpp \
    lammps/compute_com_molecule.cpp \
    lammps/compute_contact_atom.cpp \
    lammps/compute_coord_atom.cpp \
    lammps/compute_dihedral_local.cpp \
    lammps/compute_displace_atom.cpp \
    lammps/compute_erotate_sphere.cpp \
    lammps/compute_erotate_sphere_atom.cpp \
    lammps/compute_group_group.cpp \
    lammps/compute_gyration.cpp \
    lammps/compute_gyration_molecule.cpp \
    lammps/compute_heat_flux.cpp \
    lammps/compute_improper_local.cpp \
    lammps/compute_inertia_molecule.cpp \
    lammps/compute_ke.cpp \
    lammps/compute_ke_atom.cpp \
    lammps/compute_msd.cpp \
    lammps/compute_msd_molecule.cpp \
    lammps/compute_pair.cpp \
    lammps/compute_pair_local.cpp \
    lammps/compute_pe.cpp \
    lammps/compute_pe_atom.cpp \
    lammps/compute_pressure.cpp \
    lammps/compute_property_atom.cpp \
    lammps/compute_property_local.cpp \
    lammps/compute_property_molecule.cpp \
    lammps/compute_rdf.cpp \
    lammps/compute_reduce.cpp \
    lammps/compute_reduce_region.cpp \
    lammps/compute_slice.cpp \
    lammps/compute_stress_atom.cpp \
    lammps/compute_temp.cpp \
    lammps/compute_temp_com.cpp \
    lammps/compute_temp_deform.cpp \
    lammps/compute_temp_partial.cpp \
    lammps/compute_temp_profile.cpp \
    lammps/compute_temp_ramp.cpp \
    lammps/compute_temp_region.cpp \
    lammps/compute_temp_sphere.cpp \
    lammps/compute_vacf.cpp \
    lammps/compute_vcm_molecule.cpp \
    lammps/create_atoms.cpp \
    lammps/create_box.cpp \
    lammps/delete_atoms.cpp \
    lammps/delete_bonds.cpp \
    lammps/dihedral.cpp \
    lammps/dihedral_hybrid.cpp \
    lammps/displace_atoms.cpp \
    lammps/domain.cpp \
    lammps/dump.cpp \
    lammps/dump_atom.cpp \
    lammps/dump_cfg.cpp \
    lammps/dump_custom.cpp \
    lammps/dump_dcd.cpp \
    lammps/dump_image.cpp \
    lammps/dump_local.cpp \
    lammps/dump_movie.cpp \
    lammps/dump_xyz.cpp \
    lammps/error.cpp \
    lammps/finish.cpp \
    lammps/fix.cpp \
    lammps/fix_adapt.cpp \
    lammps/fix_addforce.cpp \
    lammps/fix_ave_atom.cpp \
    lammps/fix_ave_correlate.cpp \
    lammps/fix_ave_histo.cpp \
    lammps/fix_ave_spatial.cpp \
    lammps/fix_ave_time.cpp \
    lammps/fix_aveforce.cpp \
    lammps/fix_balance.cpp \
    lammps/fix_box_relax.cpp \
    lammps/fix_deform.cpp \
    lammps/fix_drag.cpp \
    lammps/fix_dt_reset.cpp \
    lammps/fix_enforce2d.cpp \
    lammps/fix_external.cpp \
    lammps/fix_gravity.cpp \
    lammps/fix_group.cpp \
    lammps/fix_heat.cpp \
    lammps/fix_indent.cpp \
    lammps/fix_langevin.cpp \
    lammps/fix_lineforce.cpp \
    lammps/fix_minimize.cpp \
    lammps/fix_momentum.cpp \
    lammps/fix_move.cpp \
    lammps/fix_nh.cpp \
    lammps/fix_nh_sphere.cpp \
    lammps/fix_nph.cpp \
    lammps/fix_nph_sphere.cpp \
    lammps/fix_npt.cpp \
    lammps/fix_npt_sphere.cpp \
    lammps/fix_nve.cpp \
    lammps/fix_nve_limit.cpp \
    lammps/fix_nve_noforce.cpp \
    lammps/fix_nve_sphere.cpp \
    lammps/fix_nvt.cpp \
    lammps/fix_nvt_sllod.cpp \
    lammps/fix_nvt_sphere.cpp \
    lammps/fix_planeforce.cpp \
    lammps/fix_press_berendsen.cpp \
    lammps/fix_print.cpp \
    lammps/fix_property_atom.cpp \
    lammps/fix_read_restart.cpp \
    lammps/fix_recenter.cpp \
    lammps/fix_respa.cpp \
    lammps/fix_restrain.cpp \
    lammps/fix_setforce.cpp \
    lammps/fix_shear_history.cpp \
    lammps/fix_spring.cpp \
    lammps/fix_spring_rg.cpp \
    lammps/fix_spring_self.cpp \
    lammps/fix_store.cpp \
    lammps/fix_store_force.cpp \
    lammps/fix_store_state.cpp \
    lammps/fix_temp_berendsen.cpp \
    lammps/fix_temp_csvr.cpp \
    lammps/fix_temp_rescale.cpp \
    lammps/fix_tmd.cpp \
    lammps/fix_vector.cpp \
    lammps/fix_viscous.cpp \
    lammps/fix_wall.cpp \
    lammps/fix_wall_harmonic.cpp \
    lammps/fix_wall_lj1043.cpp \
    lammps/fix_wall_lj126.cpp \
    lammps/fix_wall_lj93.cpp \
    lammps/fix_wall_reflect.cpp \
    lammps/fix_wall_region.cpp \
    lammps/force.cpp \
    lammps/group.cpp \
    lammps/image.cpp \
    lammps/improper.cpp \
    lammps/improper_hybrid.cpp \
    lammps/input.cpp \
    lammps/integrate.cpp \
    lammps/irregular.cpp \
    lammps/kspace.cpp \
    lammps/lammps.cpp \
    lammps/lattice.cpp \
    lammps/library.cpp \
    lammps/math_extra.cpp \
    lammps/memory.cpp \
    lammps/min.cpp \
    lammps/min_cg.cpp \
    lammps/min_fire.cpp \
    lammps/min_hftn.cpp \
    lammps/min_linesearch.cpp \
    lammps/min_quickmin.cpp \
    lammps/min_sd.cpp \
    lammps/minimize.cpp \
    lammps/modify.cpp \
    lammps/molecule.cpp \
    lammps/neigh_bond.cpp \
    lammps/neigh_derive.cpp \
    lammps/neigh_full.cpp \
    lammps/neigh_gran.cpp \
    lammps/neigh_half_bin.cpp \
    lammps/neigh_half_multi.cpp \
    lammps/neigh_half_nsq.cpp \
    lammps/neigh_list.cpp \
    lammps/neigh_request.cpp \
    lammps/neigh_respa.cpp \
    lammps/neigh_stencil.cpp \
    lammps/neighbor.cpp \
    lammps/output.cpp \
    lammps/pair.cpp \
    lammps/pair_beck.cpp \
    lammps/pair_born.cpp \
    lammps/pair_born_coul_wolf.cpp \
    lammps/pair_buck.cpp \
    lammps/pair_buck_coul_cut.cpp \
    lammps/pair_coul_cut.cpp \
    lammps/pair_coul_debye.cpp \
    lammps/pair_coul_dsf.cpp \
    lammps/pair_coul_wolf.cpp \
    lammps/pair_dpd.cpp \
    lammps/pair_dpd_tstat.cpp \
    lammps/pair_gauss.cpp \
    lammps/pair_hybrid.cpp \
    lammps/pair_hybrid_overlay.cpp \
    lammps/pair_lj96_cut.cpp \
    lammps/pair_lj_cubic.cpp \
    lammps/pair_lj_cut.cpp \
    lammps/pair_lj_cut_coul_cut.cpp \
    lammps/pair_lj_cut_coul_debye.cpp \
    lammps/pair_lj_cut_coul_dsf.cpp \
    lammps/pair_lj_expand.cpp \
    lammps/pair_lj_gromacs.cpp \
    lammps/pair_lj_gromacs_coul_gromacs.cpp \
    lammps/pair_lj_smooth.cpp \
    lammps/pair_lj_smooth_linear.cpp \
    lammps/pair_mie_cut.cpp \
    lammps/pair_morse.cpp \
    lammps/pair_soft.cpp \
    lammps/pair_table.cpp \
    lammps/pair_yukawa.cpp \
    lammps/pair_zbl.cpp \
    lammps/procmap.cpp \
    lammps/random_mars.cpp \
    lammps/random_park.cpp \
    lammps/rcb.cpp \
    lammps/read_data.cpp \
    lammps/read_dump.cpp \
    lammps/read_restart.cpp \
    lammps/reader.cpp \
    lammps/reader_native.cpp \
    lammps/reader_xyz.cpp \
    lammps/region.cpp \
    lammps/region_block.cpp \
    lammps/region_cone.cpp \
    lammps/region_cylinder.cpp \
    lammps/region_intersect.cpp \
    lammps/region_plane.cpp \
    lammps/region_prism.cpp \
    lammps/region_sphere.cpp \
    lammps/region_union.cpp \
    lammps/replicate.cpp \
    lammps/rerun.cpp \
    lammps/respa.cpp \
    lammps/run.cpp \
    lammps/set.cpp \
    lammps/special.cpp \
    lammps/thermo.cpp \
    lammps/timer.cpp \
    lammps/universe.cpp \
    lammps/update.cpp \
    lammps/variable.cpp \
    lammps/velocity.cpp \
    lammps/verlet.cpp \
    lammps/write_data.cpp \
    lammps/write_dump.cpp \
    lammps/write_restart.cpp \
    lammps/mpi.c \
    simulations/simulation.cpp \
    simulations/lennardjonescrystal.cpp \
    simulations/lennardjonesdiffusion.cpp \
    simulations/bulkwater.cpp \
    lammps/angle_charmm.cpp \
    lammps/angle_cosine.cpp \
    lammps/angle_cosine_delta.cpp \
    lammps/angle_cosine_periodic.cpp \
    lammps/angle_cosine_squared.cpp \
    lammps/angle_harmonic.cpp \
    lammps/angle_table.cpp \
    lammps/atom_vec_angle.cpp \
    lammps/atom_vec_bond.cpp \
    lammps/atom_vec_full.cpp \
    lammps/atom_vec_molecular.cpp \
    lammps/atom_vec_template.cpp \
    lammps/bond_fene.cpp \
    lammps/bond_fene_expand.cpp \
    lammps/bond_harmonic.cpp \
    lammps/bond_morse.cpp \
    lammps/bond_nonlinear.cpp \
    lammps/bond_quartic.cpp \
    lammps/bond_table.cpp \
    lammps/dihedral_charmm.cpp \
    lammps/dihedral_harmonic.cpp \
    lammps/dihedral_helix.cpp \
    lammps/dihedral_multi_harmonic.cpp \
    lammps/dihedral_opls.cpp \
    lammps/improper_cvff.cpp \
    lammps/improper_harmonic.cpp \
    lammps/improper_umbrella.cpp \
    lammps/pair_hbond_dreiding_lj.cpp \
    lammps/pair_hbond_dreiding_morse.cpp \
    lammps/pair_lj_charmm_coul_charmm.cpp \
    lammps/pair_lj_charmm_coul_charmm_implicit.cpp \
    lammps/pair_lj_cut_tip4p_cut.cpp \
    lammps/pair_tip4p_cut.cpp \
    lammps/compute_erotate_rigid.cpp \
    lammps/compute_ke_rigid.cpp \
    lammps/fix_rigid.cpp \
    lammps/fix_rigid_nh.cpp \
    lammps/fix_rigid_nh_small.cpp \
    lammps/fix_rigid_nph.cpp \
    lammps/fix_rigid_nph_small.cpp \
    lammps/fix_rigid_npt.cpp \
    lammps/fix_rigid_npt_small.cpp \
    lammps/fix_rigid_nve.cpp \
    lammps/fix_rigid_nve_small.cpp \
    lammps/fix_rigid_nvt.cpp \
    lammps/fix_rigid_nvt_small.cpp \
    lammps/fix_rigid_small.cpp \
    lammps/fix_shake.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
include(../../library_deployment.pri)

HEADERS += \
    mysimulator.h \
    lammps/accelerator_cuda.h \
    lammps/accelerator_intel.h \
    lammps/accelerator_kokkos.h \
    lammps/accelerator_omp.h \
    lammps/angle.h \
    lammps/angle_hybrid.h \
    lammps/atom.h \
    lammps/atom_masks.h \
    lammps/atom_vec.h \
    lammps/atom_vec_atomic.h \
    lammps/atom_vec_body.h \
    lammps/atom_vec_charge.h \
    lammps/atom_vec_ellipsoid.h \
    lammps/atom_vec_hybrid.h \
    lammps/atom_vec_line.h \
    lammps/atom_vec_sphere.h \
    lammps/atom_vec_tri.h \
    lammps/balance.h \
    lammps/body.h \
    lammps/bond.h \
    lammps/bond_hybrid.h \
    lammps/change_box.h \
    lammps/citeme.h \
    lammps/comm.h \
    lammps/comm_brick.h \
    lammps/comm_tiled.h \
    lammps/compute.h \
    lammps/compute_angle_local.h \
    lammps/compute_atom_molecule.h \
    lammps/compute_bond_local.h \
    lammps/compute_centro_atom.h \
    lammps/compute_cluster_atom.h \
    lammps/compute_cna_atom.h \
    lammps/compute_com.h \
    lammps/compute_com_molecule.h \
    lammps/compute_contact_atom.h \
    lammps/compute_coord_atom.h \
    lammps/compute_dihedral_local.h \
    lammps/compute_displace_atom.h \
    lammps/compute_erotate_sphere.h \
    lammps/compute_erotate_sphere_atom.h \
    lammps/compute_group_group.h \
    lammps/compute_gyration.h \
    lammps/compute_gyration_molecule.h \
    lammps/compute_heat_flux.h \
    lammps/compute_improper_local.h \
    lammps/compute_inertia_molecule.h \
    lammps/compute_ke.h \
    lammps/compute_ke_atom.h \
    lammps/compute_msd.h \
    lammps/compute_msd_molecule.h \
    lammps/compute_pair.h \
    lammps/compute_pair_local.h \
    lammps/compute_pe.h \
    lammps/compute_pe_atom.h \
    lammps/compute_pressure.h \
    lammps/compute_property_atom.h \
    lammps/compute_property_local.h \
    lammps/compute_property_molecule.h \
    lammps/compute_rdf.h \
    lammps/compute_reduce.h \
    lammps/compute_reduce_region.h \
    lammps/compute_slice.h \
    lammps/compute_stress_atom.h \
    lammps/compute_temp.h \
    lammps/compute_temp_com.h \
    lammps/compute_temp_deform.h \
    lammps/compute_temp_partial.h \
    lammps/compute_temp_profile.h \
    lammps/compute_temp_ramp.h \
    lammps/compute_temp_region.h \
    lammps/compute_temp_sphere.h \
    lammps/compute_vacf.h \
    lammps/compute_vcm_molecule.h \
    lammps/create_atoms.h \
    lammps/create_box.h \
    lammps/delete_atoms.h \
    lammps/delete_bonds.h \
    lammps/dihedral.h \
    lammps/dihedral_hybrid.h \
    lammps/displace_atoms.h \
    lammps/domain.h \
    lammps/dump.h \
    lammps/dump_atom.h \
    lammps/dump_cfg.h \
    lammps/dump_custom.h \
    lammps/dump_dcd.h \
    lammps/dump_image.h \
    lammps/dump_local.h \
    lammps/dump_movie.h \
    lammps/dump_xyz.h \
    lammps/error.h \
    lammps/finish.h \
    lammps/fix.h \
    lammps/fix_adapt.h \
    lammps/fix_addforce.h \
    lammps/fix_ave_atom.h \
    lammps/fix_ave_correlate.h \
    lammps/fix_ave_histo.h \
    lammps/fix_ave_spatial.h \
    lammps/fix_ave_time.h \
    lammps/fix_aveforce.h \
    lammps/fix_balance.h \
    lammps/fix_box_relax.h \
    lammps/fix_deform.h \
    lammps/fix_drag.h \
    lammps/fix_dt_reset.h \
    lammps/fix_enforce2d.h \
    lammps/fix_external.h \
    lammps/fix_gravity.h \
    lammps/fix_group.h \
    lammps/fix_heat.h \
    lammps/fix_indent.h \
    lammps/fix_langevin.h \
    lammps/fix_lineforce.h \
    lammps/fix_minimize.h \
    lammps/fix_momentum.h \
    lammps/fix_move.h \
    lammps/fix_nh.h \
    lammps/fix_nh_sphere.h \
    lammps/fix_nph.h \
    lammps/fix_nph_sphere.h \
    lammps/fix_npt.h \
    lammps/fix_npt_sphere.h \
    lammps/fix_nve.h \
    lammps/fix_nve_limit.h \
    lammps/fix_nve_noforce.h \
    lammps/fix_nve_sphere.h \
    lammps/fix_nvt.h \
    lammps/fix_nvt_sllod.h \
    lammps/fix_nvt_sphere.h \
    lammps/fix_planeforce.h \
    lammps/fix_press_berendsen.h \
    lammps/fix_print.h \
    lammps/fix_property_atom.h \
    lammps/fix_read_restart.h \
    lammps/fix_recenter.h \
    lammps/fix_respa.h \
    lammps/fix_restrain.h \
    lammps/fix_setforce.h \
    lammps/fix_shear_history.h \
    lammps/fix_spring.h \
    lammps/fix_spring_rg.h \
    lammps/fix_spring_self.h \
    lammps/fix_store.h \
    lammps/fix_store_force.h \
    lammps/fix_store_state.h \
    lammps/fix_temp_berendsen.h \
    lammps/fix_temp_csvr.h \
    lammps/fix_temp_rescale.h \
    lammps/fix_tmd.h \
    lammps/fix_vector.h \
    lammps/fix_viscous.h \
    lammps/fix_wall.h \
    lammps/fix_wall_harmonic.h \
    lammps/fix_wall_lj1043.h \
    lammps/fix_wall_lj126.h \
    lammps/fix_wall_lj93.h \
    lammps/fix_wall_reflect.h \
    lammps/fix_wall_region.h \
    lammps/force.h \
    lammps/group.h \
    lammps/image.h \
    lammps/improper.h \
    lammps/improper_hybrid.h \
    lammps/input.h \
    lammps/integrate.h \
    lammps/irregular.h \
    lammps/kspace.h \
    lammps/lammps.h \
    lammps/lattice.h \
    lammps/library.h \
    lammps/lmptype.h \
    lammps/math_const.h \
    lammps/math_extra.h \
    lammps/math_special.h \
    lammps/memory.h \
    lammps/min.h \
    lammps/min_cg.h \
    lammps/min_fire.h \
    lammps/min_hftn.h \
    lammps/min_linesearch.h \
    lammps/min_quickmin.h \
    lammps/min_sd.h \
    lammps/minimize.h \
    lammps/modify.h \
    lammps/molecule.h \
    lammps/mpi.h \
    lammps/mpiio.h \
    lammps/my_page.h \
    lammps/my_pool_chunk.h \
    lammps/neigh_bond.h \
    lammps/neigh_derive.h \
    lammps/neigh_full.h \
    lammps/neigh_gran.h \
    lammps/neigh_half_bin.h \
    lammps/neigh_half_multi.h \
    lammps/neigh_half_nsq.h \
    lammps/neigh_list.h \
    lammps/neigh_request.h \
    lammps/neigh_respa.h \
    lammps/neighbor.h \
    lammps/output.h \
    lammps/pair.h \
    lammps/pair_beck.h \
    lammps/pair_born.h \
    lammps/pair_born_coul_wolf.h \
    lammps/pair_buck.h \
    lammps/pair_buck_coul_cut.h \
    lammps/pair_coul_cut.h \
    lammps/pair_coul_debye.h \
    lammps/pair_coul_dsf.h \
    lammps/pair_coul_wolf.h \
    lammps/pair_dpd.h \
    lammps/pair_dpd_tstat.h \
    lammps/pair_gauss.h \
    lammps/pair_hybrid.h \
    lammps/pair_hybrid_overlay.h \
    lammps/pair_lj96_cut.h \
    lammps/pair_lj_cubic.h \
    lammps/pair_lj_cut.h \
    lammps/pair_lj_cut_coul_cut.h \
    lammps/pair_lj_cut_coul_debye.h \
    lammps/pair_lj_cut_coul_dsf.h \
    lammps/pair_lj_expand.h \
    lammps/pair_lj_gromacs.h \
    lammps/pair_lj_gromacs_coul_gromacs.h \
    lammps/pair_lj_smooth.h \
    lammps/pair_lj_smooth_linear.h \
    lammps/pair_mie_cut.h \
    lammps/pair_morse.h \
    lammps/pair_soft.h \
    lammps/pair_table.h \
    lammps/pair_yukawa.h \
    lammps/pair_zbl.h \
    lammps/pointers.h \
    lammps/procmap.h \
    lammps/random_mars.h \
    lammps/random_park.h \
    lammps/rcb.h \
    lammps/read_data.h \
    lammps/read_dump.h \
    lammps/read_restart.h \
    lammps/reader.h \
    lammps/reader_native.h \
    lammps/reader_xyz.h \
    lammps/region.h \
    lammps/region_block.h \
    lammps/region_cone.h \
    lammps/region_cylinder.h \
    lammps/region_intersect.h \
    lammps/region_plane.h \
    lammps/region_prism.h \
    lammps/region_sphere.h \
    lammps/region_union.h \
    lammps/replicate.h \
    lammps/rerun.h \
    lammps/respa.h \
    lammps/run.h \
    lammps/set.h \
    lammps/special.h \
    lammps/style_angle.h \
    lammps/style_atom.h \
    lammps/style_body.h \
    lammps/style_bond.h \
    lammps/style_command.h \
    lammps/style_compute.h \
    lammps/style_dihedral.h \
    lammps/style_dump.h \
    lammps/style_fix.h \
    lammps/style_improper.h \
    lammps/style_integrate.h \
    lammps/style_kspace.h \
    lammps/style_minimize.h \
    lammps/style_pair.h \
    lammps/style_reader.h \
    lammps/style_region.h \
    lammps/suffix.h \
    lammps/thermo.h \
    lammps/timer.h \
    lammps/universe.h \
    lammps/update.h \
    lammps/variable.h \
    lammps/velocity.h \
    lammps/verlet.h \
    lammps/version.h \
    lammps/write_data.h \
    lammps/write_dump.h \
    lammps/write_restart.h \
    simulations/simulation.h \
    simulations/lennardjonescrystal.h \
    simulations/simulations.h \
    simulations/lennardjonesdiffusion.h \
    simulations/bulkwater.h \
    lammps/angle_charmm.h \
    lammps/angle_cosine.h \
    lammps/angle_cosine_delta.h \
    lammps/angle_cosine_periodic.h \
    lammps/angle_cosine_squared.h \
    lammps/angle_harmonic.h \
    lammps/angle_table.h \
    lammps/atom_vec_angle.h \
    lammps/atom_vec_bond.h \
    lammps/atom_vec_full.h \
    lammps/atom_vec_molecular.h \
    lammps/atom_vec_template.h \
    lammps/bond_fene.h \
    lammps/bond_fene_expand.h \
    lammps/bond_harmonic.h \
    lammps/bond_morse.h \
    lammps/bond_nonlinear.h \
    lammps/bond_quartic.h \
    lammps/bond_table.h \
    lammps/dihedral_charmm.h \
    lammps/dihedral_harmonic.h \
    lammps/dihedral_helix.h \
    lammps/dihedral_multi_harmonic.h \
    lammps/dihedral_opls.h \
    lammps/improper_cvff.h \
    lammps/improper_harmonic.h \
    lammps/improper_umbrella.h \
    lammps/pair_hbond_dreiding_lj.h \
    lammps/pair_hbond_dreiding_morse.h \
    lammps/pair_lj_charmm_coul_charmm.h \
    lammps/pair_lj_charmm_coul_charmm_implicit.h \
    lammps/pair_lj_cut_tip4p_cut.h \
    lammps/pair_tip4p_cut.h \
    lammps/compute_erotate_rigid.h \
    lammps/compute_ke_rigid.h \
    lammps/fix_rigid.h \
    lammps/fix_rigid_nh.h \
    lammps/fix_rigid_nh_small.h \
    lammps/fix_rigid_nph.h \
    lammps/fix_rigid_nph_small.h \
    lammps/fix_rigid_npt.h \
    lammps/fix_rigid_npt_small.h \
    lammps/fix_rigid_nve.h \
    lammps/fix_rigid_nve_small.h \
    lammps/fix_rigid_nvt.h \
    lammps/fix_rigid_nvt_small.h \
    lammps/fix_rigid_small.h \
    lammps/fix_shake.h

DISTFILES +=
