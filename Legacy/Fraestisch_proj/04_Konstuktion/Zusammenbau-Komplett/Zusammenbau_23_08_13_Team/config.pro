! Config.pro fuer Creo 8 - 2.xx
!-------------------------------------------------
! 2.10	2021-01  
!=================================================
! PFADE -> BIB -> PLOTTER ->FARBEN
!=================================================
! Workaround CVE-2022-1096
windows_browser_type ie_browser
! ------------------------------------------------
! Allgemeine Einstellungen
! ------------------------------------------------
bom_format $HKA_Creo8_Config\Einstellungen\stl.bom
search_path_file $HKA_Creo8_Config\Einstellungen\search.pro
pro_dtl_setup_dir $HKA_Creo8_Config\Einstellungen\
format_setup_file $HKA_Creo8_Config\Einstellungen\HsKA_config.dtl
drawing_setup_file $HKA_Creo8_Config\Einstellungen\HsKA_config.dtl
trail_dir $TEMP
start_appmgr no
! ------------------------------------------------
! Startmodelle
! ------------------------------------------------
start_model_dir $HKA_Creo8_Config\lib\Schablonen\
template_designasm $HKA_Creo8_Config\lib\Schablonen\Baugruppe-mm_N_s.asm
!template_drawing $HKA_Creo8_Config\lib\lib\std\startzeichnung.drw
template_sheetmetalpart $HKA_Creo8_Config\lib\Schablonen\Blech-mm_N_s.prt
template_solidpart $HKA_Creo8_Config\lib\Schablonen\Teil-mm_N_s.prt
template_drawing $pro_directory\creo_standards\templates\a3_drawing.drw
! ------------------------------------------------
! Bibliothek
! ------------------------------------------------
pro_library_dir $HKA_Creo8_Config\lib\
pro_table_dir $HKA_Creo8_Config\lib\Tabellen
!pro_weld_params_dir $HKA_Creo8_Config\lib\schweissen\
pro_group_dir $HKA_Creo8_Config\lib\konstruktionselemente\
pro_material_dir $HKA_Creo8_Config\lib\werkstoffe\
!pro_pip_fitt_dir $HKA_Creo8_Config\lib\anlagenbau\
!pro_pip_lnstk_dir $HKA_Creo8_Config\lib\anlagenbau\rohrklassen\
pro_sheet_met_dir $HKA_Creo8_Config\lib\Blech\
sketcher_palette_path $HKA_Creo8_Config\lib\skizzen\
hole_parameter_file_path $HKA_Creo8_Config\lib\Gewinde\
! ------------------------------------------------
! Plotter
! ------------------------------------------------
pen_table_file $HKA_Creo8_Config\Einstellungen\Plotter\mono.pnt
pro_plot_config_dir $HKA_Creo8_Config\Einstellungen\Plotter\
plot_names yes
use_8_plotter_pens yes
variable_plots_in_inches no
intf_profile_dir $HKA_Creo8_Config\Einstellungen\Plotter\
pdf_linecap projecting square
pdf_linejoin bevel
pdf_use_pentable yes
ttf_handling_for_plot_files stroke all fonts
! ------------------------------------------------
! Zeichnung
! ------------------------------------------------
!pro_crosshatch_dir $HKA_Creo8_Config\lib\schraffur\
pro_surface_finish_dir $HKA_Creo8_Config\lib\symbol\oberflaeche\
pro_symbol_dir $HKA_Creo8_Config\lib\symbol\
pro_format_dir $HKA_Creo8_Config\lib\format\
!pro_note_dir $HKA_Creo8_Config\lib\notizen\
allow_move_view_with_move yes
! ------------------------------------------------
! Farben
! ------------------------------------------------
pro_colormap_path $HKA_Creo8_Config\lib\Farbeffekte\
system_colors_file $HKA_Creo8_Config\SystemColor\syscol.scl
!=================================================
! BENUTZEROBERFLAECHE + SYSTEM
!=================================================
file_open_default_folder working_directory
load_ui_customization_run_dir yes
bell no
open_simplified_rep_by_default no
modelcheck_enabled no
todays_date_note_format %dd.%mm.%yy
spin_with_orientation_center no
display_plane_tags yes
display_axis_tags yes
display_point_tags yes
display shadewithedges
display_annotations no
display_coord_sys no
display_points no
spin_with_part_entities yes
visible_message_lines 1
mass_property_calculate automatic
regen_solid_before_save yes
reserved_menu_space 0.0
display_full_object_path yes
prehighlight_tree yes
file_open_default_view details
save_instance_accelerator NONE
force_new_file_options_dialog yes
allow_3dbox_selection yes
open_window_maximized yes
enable_learning_connector no
suppress_license_loss_dialog yes
!=================================================
! TEILE
!=================================================
auto_add_remove yes
feature_create_auto_ok yes
millimeter_grid_interval 1.0
user_defined_grid_interval 1.0
show_axes_for_extr_arcs yes
tol_display yes
!=================================================
! Einheiten
!=================================================
pro_unit_sys mmns
pro_unit_length unit_mm
pro_unit_mass unit_kilogram
!=================================================
! Layer
!=================================================
def_layer layer_axis                         01_Achsen
def_layer layer_datum                        01_Ebenen
def_layer layer_feature                      02_alle_KE
def_layer layer_chamfer_feat                 02_Fasen
def_layer layer_curve                        01_Kurven
def_layer layer_draft_feat                   02_Ausformschr
def_layer layer_hole_feat                    02_Bohrungen
def_layer layer_quilt                        02_Gewinde
def_layer layer_round_feat                   02_Rundungen
def_layer layer_surface                      02_Flaechen
def_layer layer_driven_dim                   04_ZchnBemassung
def_layer layer_weld_feat                    03_Schweissnaehte
!=================================================
! Genauigkeit
!=================================================
accuracy_lower_bound 1.0e-6
default_abs_accuracy 0.001
!default_dec_places 3
!=================================================
! Toleranzen
!=================================================
tolerance_class medium
tolerance_standard iso
!=================================================
! BAUGRUPPEN
!=================================================
comp_assemble_start default
!=================================================
! SKIZZIERER
!=================================================
sketcher_starts_in_2d yes
sketcher_auto_create_references yes
sketcher_equal_length_constr no
sketcher_midpoint_constr no
show_sketch_dims_in_feature yes
grid_snap no
sketcher_disp_dimensions yes
sketcher_alignment_constr yes
sketcher_refit_after_dim_modify yes
!=================================================
! MISC
!=================================================
weld_ui_standard iso
csv_format_delimeter semicolon
!=================================================
! MAPKEYS
!=================================================
mapkey ** @MAPKEY_LABELMAPKEYS;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdRibbonOptionsDlg` ;\
mapkey(continued) ~ Select `ribbon_options_dialog` `PageSwitcherPageList` 1 `env_layouts`;\
mapkey(continued) ~ Activate `ribbon_options_dialog` `env_layouts.Env_MapkeySet_Btn`;
! ------------------------------------------------
!---- FUNKTIONSTASTEN ----
! ------------------------------------------------
mapkey $F3 @MAPKEY_LABELVerdeckte Kanten;\
mapkey(continued) ~ Command `ProCmdEnvMdlDisp`  `Hidden line`;

mapkey $F4 @MAPKEY_LABELSchattiert;~ Command `ProCmdEnvShadedEdges`  1;

mapkey $F5 @MAPKEY_LABELEbenen E/A;~ Command `ProCmdEnvDtmDisp` 0;

mapkey $F6 @MAPKEY_LABELAchsen E/A;~ Command `ProCmdEnvAxisDisp` 0;

mapkey $F7 @MAPKEY_LABELPunkte E/A;~ Command `ProCmdEnvPntsDisp` 1;

mapkey $F8 @MAPKEY_LABELKoordinatensysteme E/A;\
mapkey(continued) ~ Command `ProCmdEnvCsysDisp` 1;

mapkey $F9 @MAPKEY_LABELModellbaum;~ Command `ProCmdLayer_ShowMdlTree` ;\
mapkey(continued) ~ Close `main_dlg_cur` `PHTLeft.PHLayerUI.LayerShowBtn`;

mapkey $F12 @MAPKEY_LABELFolienbaum;~ Command `ProCmdMdlTreeShowLyrs` 1 ;\
mapkey(continued) ~ Close `main_dlg_cur` `PHTLeft.ShowCB`;
! ------------------------------------------------
!---- Ansichten ----
! ------------------------------------------------
mapkey 1v @MAPKEY_LABELAnsicht VORNE;~ Command `ProCmdViewNamePick` 1 ;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `02_VORNE`;

mapkey 1o @MAPKEY_LABELAnsicht OBEN;~ Command `ProCmdViewNamePick` 1 ;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `01_OBEN`;

mapkey 1l @MAPKEY_LABELAnsicht LINKS;~ Command `ProCmdViewNamePick` 1 ;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `03_LINKS`;

mapkey 1r @MAPKEY_LABELAnsicht RECHTS;~ Command `ProCmdViewNamePick` 1 ;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `04_RECHTS`;

mapkey 1u @MAPKEY_LABELAnsicht UNTEN;~ Command `ProCmdViewNamePick` 1 ;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `05_UNTEN`;

mapkey 1h @MAPKEY_LABELAnsicht HINTEN;~ Command `ProCmdViewNamePick` 1 ;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `06_HINTEN`;

mapkey 1s @MAPKEY_LABELAnsicht STANDARD;~ Command `ProCmdViewNamePick` 1 ;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `Standard Orientation`;\
mapkey(continued) ~ Command `ProCmdViewRefit`;
! ------------------------------------------------
!---- NEUES Objekt ----
! ------------------------------------------------
mapkey -nt @MAPKEY_LABELNeues Teil;~ Command `ProCmdModelNew`;

mapkey -nb @MAPKEY_LABELNeue Baugruppe;~ Command `ProCmdModelNew` ;\
mapkey(continued) ~ Select `new` `Type`1  `Assembly`;

mapkey -nz @MAPKEY_LABELNeue Zeichnung;~ Command `ProCmdModelNew` ;\
mapkey(continued) ~ Select `new` `Type`1  `Drawing`;
! ------------------------------------------------
!---- Stuecklisten ----
! ------------------------------------------------
mapkey -stl @MAPKEY_LABELStueckliste;~ Command `ProCmdDwgTblFromFile` ;\
mapkey(continued) ~ Activate `file_open` `User Formats_shortcut`;\
mapkey(continued) ~ Select `file_open` `Ph_list.Filelist`1  `tabellen`;\
mapkey(continued) ~ Select `file_open` `Ph_list.Filelist`1  `tabellen`;\
mapkey(continued) ~ Activate `file_open` `Ph_list.Filelist`1  `tabellen`;\
mapkey(continued) ~ Select `file_open` `Ph_list.Filelist`1  `Stuecklisten`;\
mapkey(continued) ~ Activate `file_open` `Ph_list.Filelist`1  `Stuecklisten`;
! ------------------------------------------------
!---- Messen ----
! ------------------------------------------------
mapkey -ma ~ Activate `main_dlg_cur` `page_Analysis_control_btn` 1;\
mapkey(continued) ~ Command `ProCmdNaMeasureDistance`;

mapkey -ml @MAPKEY_LABELMessen Laenge;~ Command `ProCmdNaMeasureLength`;

mapkey -mw @MAPKEY_LABELMessen Winkel;~ Command `ProCmdNaMeasureAngle`;

mapkey -md @MAPKEY_LABELMessen Durchmesser;\
mapkey(continued) ~ Command `ProCmdNaMeasureDiameter` ;
! ------------------------------------------------
!---- Regenerieren ----
! ------------------------------------------------
mapkey 11 @MAPKEY_NAMERegenerieren;#REGENERATE;#AUTOMATIC;
! ------------------------------------------------
!---- Zeichnugsansicht aktualisieren
! ------------------------------------------------
mapkey -aa @MAPKEY_LABELAnsicht Aktualisieren;~ Command `ProCmdViewRegenCur`;
! ------------------------------------------------
!---- Sicherung Speichern, PDF Export
! ------------------------------------------------
mapkey -ss @MAPKEY_LABELSicherung Speichern;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelBackup` ;\
mapkey(continued) ~ Activate `file_saveas` `OK`;
!----- Plot PDF
mapkey -pp @PDF plotten;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdExportPreview` ;~ Command `ProCmdDwgPubSettings` ;\
mapkey(continued) ~ Open `intf_profile` `opt_profile`;~ Close `intf_profile` `opt_profile`;\
mapkey(continued) ~ Select `intf_profile` `opt_profile` 1 `PDF-Zeichnung`;\
mapkey(continued) ~ Activate `intf_profile` `OkPshBtn`;~ Command `ProCmdDwgPubExport` ;\
mapkey(continued) ~ Activate `file_saveas` `OK`;~ FocusIn `UI Message Dialog` `ok`;\
mapkey(continued) ~ FocusIn `UI Message Dialog` `ok`;~ Activate `UI Message Dialog` `ok`;\
mapkey(continued) ~ Activate `main_dlg_cur` `main_dlg_cur`;
! ------------------------------------------------
!------ Öffnen
! ------------------------------------------------
mapkey -ot @MAPKEY_LABELÖffnen Teil;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `db_2`;
mapkey -ob @MAPKEY_LABELÖfnen Baugruppe;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `db_1`;
mapkey -oz @MAPKEY_LABELÖffnen Zeichnung;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `db_4`;
! ------------------------------------------------
!------ Gewindebohrung ISO R1 ------------------------
! ------------------------------------------------
mapkey -m2 @MAPKEY_LABELGewindebohrung M2;~ Command `ProCmdHole` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ui_str_skt_std_type_rg` 1 `Std`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_screwsize_omnu` 1 `M2`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;

mapkey -m3 @MAPKEY_LABELGewindebohrung M3;~ Command `ProCmdHole` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ui_str_skt_std_type_rg` 1 `Std`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_screwsize_omnu` 1 `M3`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;

mapkey -m4 @MAPKEY_LABELGewindebohrung M4;~ Command `ProCmdHole` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ui_str_skt_std_type_rg` 1 `Std`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_screwsize_omnu` 1 `M4`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;

mapkey -m5 @MAPKEY_LABELGewindebohrung M5;~ Command `ProCmdHole` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ui_str_skt_std_type_rg` 1 `Std`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_screwsize_omnu` 1 `M5`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;

mapkey -m6 @MAPKEY_LABELGewindebohrung M6;~ Command `ProCmdHole` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ui_str_skt_std_type_rg` 1 `Std`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_screwsize_omnu` 1 `M6`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;

mapkey -m8 @MAPKEY_LABELGewindebohrung M8;~ Command `ProCmdHole` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ui_str_skt_std_type_rg` 1 `Std`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_screwsize_omnu` 1 `M8`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;

mapkey -m10 @MAPKEY_LABELGewindebohrung M10;~ Command `ProCmdHole` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ui_str_skt_std_type_rg` 1 `Std`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_screwsize_omnu` 1 `M10`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;

mapkey -m12 @MAPKEY_LABELGewindebohrung M12;~ Command `ProCmdHole` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ui_str_skt_std_type_rg` 1 `Std`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_screwsize_omnu` 1 `M12`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;

mapkey -m16 @MAPKEY_LABELGewindebohrung M16;~ Command `ProCmdHole` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ui_str_skt_std_type_rg` 1 `Std`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_thrdseries_omnu`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.hle_screwsize_omnu` 1 `M16`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.hle_screwsize_omnu`;

! ------------------------------------------------
! Bolzengewinde ISO R1
! ------------------------------------------------
mapkey +m2 @MAPKEY_LABELAussengewinde M2;~ Command `ProCmdCosmeticThread` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.typeopt` 1 `type_opt_std`;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Open `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `----------`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNF`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNC`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `Rohr_ISO228`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Komplett`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Fein-R1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R1`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.thd_series_opt` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2.5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M3`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M4`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M8`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.screw_size_opt` 1 `M2`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.costhread_depth.0` 1;

mapkey +m3 @MAPKEY_LABELAussengewinde M3;~ Command `ProCmdCosmeticThread` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.typeopt` 1 `type_opt_std`;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Open `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `----------`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNF`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNC`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `Rohr_ISO228`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Komplett`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Fein-R1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R1`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.thd_series_opt` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2.5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M3`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M4`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M8`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.screw_size_opt` 1 `M3`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.costhread_depth.0` 1;

mapkey +m4 @MAPKEY_LABELAussengewinde M4;~ Command `ProCmdCosmeticThread` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.typeopt` 1 `type_opt_std`;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Open `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `----------`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNF`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNC`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `Rohr_ISO228`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Komplett`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Fein-R1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R1`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.thd_series_opt` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2.5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M3`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M4`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M8`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.screw_size_opt` 1 `M4`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.costhread_depth.0` 1;

mapkey +m5 @MAPKEY_LABELAussengewinde M5;~ Command `ProCmdCosmeticThread` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.typeopt` 1 `type_opt_std`;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Open `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `----------`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNF`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNC`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `Rohr_ISO228`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Komplett`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Fein-R1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R1`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.thd_series_opt` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2.5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M3`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M4`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M8`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.screw_size_opt` 1 `M5`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.costhread_depth.0` 1;

mapkey +m6 @MAPKEY_LABELAussengewinde M6;~ Command `ProCmdCosmeticThread` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.typeopt` 1 `type_opt_std`;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Open `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `----------`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNF`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNC`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `Rohr_ISO228`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Komplett`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Fein-R1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R1`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.thd_series_opt` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2.5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M3`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M4`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M8`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.screw_size_opt` 1 `M6`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.costhread_depth.0` 1;

mapkey +m8 @MAPKEY_LABELAussengewinde M8;~ Command `ProCmdCosmeticThread` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.typeopt` 1 `type_opt_std`;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Open `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `----------`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNF`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNC`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `Rohr_ISO228`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Komplett`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Fein-R1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R1`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.thd_series_opt` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2.5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M3`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M4`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M8`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.screw_size_opt` 1 `M8`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.costhread_depth.0` 1;

mapkey +m10 @MAPKEY_LABELAussengewinde M10;~ Command `ProCmdCosmeticThread` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.typeopt` 1 `type_opt_std`;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Open `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `----------`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNF`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNC`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `Rohr_ISO228`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Komplett`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Fein-R1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R1`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.thd_series_opt` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2.5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M3`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M4`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M8`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.screw_size_opt` 1 `M10`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.costhread_depth.0` 1;

mapkey +m12 @MAPKEY_LABELAussengewinde M12;~ Command `ProCmdCosmeticThread` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.typeopt` 1 `type_opt_std`;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Open `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `----------`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNF`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNC`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `Rohr_ISO228`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Komplett`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Fein-R1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R1`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.thd_series_opt` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2.5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M3`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M4`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M8`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.screw_size_opt` 1 `M12`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.costhread_depth.0` 1;

mapkey +m16 @MAPKEY_LABELAussengewinde M16;~ Command `ProCmdCosmeticThread` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.typeopt` 1 `type_opt_std`;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Open `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `----------`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNF`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `UNC`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `Rohr_ISO228`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Komplett`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-Fein-R1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.thd_series_opt` `ISO-R1`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.thd_series_opt` 1 `ISO-R1`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.thd_series_opt`;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M1.6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M2.5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M3`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M4`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M5`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M6`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M8`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M20`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M16`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M12`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.screw_size_opt` `M10`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.screw_size_opt` 1 `M16`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.screw_size_opt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.costhread_depth.0` 1;
! ------------------------------------------------
! Fasen
! ------------------------------------------------
mapkey -fa @MAPKEY_LABELFase Breite x 45°;~ Command `ProCmdChamferEdge` ;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.DimenSch`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.DimenSch` `DxD`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.DimenSch` `D1xD2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.DimenSch` `AnglexD`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.DimenSch` `45xD`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.DimenSch`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.DimenSch` 1 `45xD`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.DimenSch`;

mapkey -fw @MAPKEY_LABELFase Breite x Winkel;~ Command `ProCmdChamferEdge` ;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.DimenSch`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.DimenSch` `DxD`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.DimenSch` `D1xD2`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.DimenSch` `AnglexD`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.DimenSch`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.DimenSch` 1 `AnglexD`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `maindashInst0.DimenSch`;
! ------------------------------------------------
! QuerSchnitt
! ------------------------------------------------
mapkey -qs ~ Command `ProCmdXsecPlanar` ;\
mapkey(continued) ~ Open `main_dlg_cur` `maindashInst0.constr_type1`;\
mapkey(continued) ~ Close `main_dlg_cur` `maindashInst0.constr_type1`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.constr_type1` 1 `Through`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.xsec_info_page.0` 1;\
mapkey(continued) ~ Input `xsec_info_page.0.0` `PH.FEATNAME` ` `;\
mapkey(continued) ~ Update `xsec_info_page.0.0` `PH.FEATNAME` ` `;\
mapkey(continued) ~ Activate `xsec_info_page.0.0` `PH.FEATNAME`;\
mapkey(continued) ~ FocusOut `xsec_info_page.0.0` `PH.FEATNAME`;
! ------------------------------------------------
! EOF
! ------------------------------------------------
