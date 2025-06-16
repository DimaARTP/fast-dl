// Created by Crowbar 0.74

$modelname "weapons\c_models\c_shield_medigun\c_shield_medigun.mdl"

$bodygroup "Body"
{
	studio "c_shield_medigun.smd"
}
$bodygroup "hose"
{
	studio "c_medigun_hose_reference.dmx.smd"
}
$bodygroup "hose"
{
	studio "UnknownModelName.smd"
}

$lod 10
{
	replacemodel "c_shield_medigun.smd" "c_shield_medigun_lod1.smd"
	replacemodel "c_medigun_hose_reference.dmx.smd" "c_medigun_hose_reference.dmx_lod1.smd"
	replacemodel "UnknownModelName.smd" "UnknownModelName_lod1.smd"
	replacebone "weapon_bone" "weapon_bone_L"
	nofacial
}
$lod 25
{
	replacemodel "c_shield_medigun.smd" "c_shield_medigun_lod2.smd"
	replacemodel "c_medigun_hose_reference.dmx.smd" "c_medigun_hose_reference.dmx_lod2.smd"
	replacemodel "UnknownModelName.smd" "UnknownModelName_lod2.smd"
	replacebone "weapon_bone" "weapon_bone_L"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition -4.75 0 -2.803

$cdmaterials "models\weapons\c_items\"

$texturegroup "skinfamilies"
{
	{ "c_shield_medigun"      }
	{ "c_shield_medigun_blue" }
}

$attachment "muzzle" "weapon_bone_L" 0 -0.79 29.34 rotate -90 0 0
$attachment "muzzle" "weapon_bone_L" 0 -0.79 29.34 rotate -90 0 0
$attachment "wb_hack" "weapon_bone" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -6.613 -13.716 -39 6.613 7.756 29.5

$hboxset "default"
$hbox 0 "weapon_bone_L" -3.5 -4.5 -4.5 3.5 2.5 29.5

$definebone "weapon_bone_L" "" 0 0 0 -0.000172 -0.000172 -0.000057 0 0 0 0 0 0
$definebone "joint_lever" "weapon_bone_L" 0 -0.934864 4.492332 0 0 0 0 0 0 0 0 0
$definebone "vm_weapon_bone_L" "joint_lever" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_hose01" "weapon_bone_L" 0 -0.90196 -5.938788 89.602117 -90.00044 -90.00044 0 0 0 0 0 0
$definebone "joint_hose02" "joint_hose01" 6.00258 0 0 0 -0.00848 0 0 0 0 0 0 0
$definebone "joint_hose03" "joint_hose02" 7.954309 0 0 0 0.406342 0 0 0 0 0 0 0
$definebone "joint_hose04" "joint_hose03" 6.692223 0 0 0 0 0 0 0 0 0 0 0
$definebone "joint_hose05" "joint_hose04" 7.928383 0 0 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone" "weapon_bone_L" 0 1.133598 4.492331 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"c_medigun_defense_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "c_medigun_defense_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
