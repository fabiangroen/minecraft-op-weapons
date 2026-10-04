# Minecraft OP Weapons

Three server-side-only datapack weapons for Minecraft: Java Edition (Fabric or vanilla server). No client mods or resource packs are needed: items borrow vanilla models, and all effects are particles, sounds, and display entities.

Written for Minecraft 26.x (data pack format 101.1 and up). Datapack syntax changes between versions, so if something errors on `/reload`, check the server log for the function name.

All three weapons use `carrot_on_a_stick` as the base item (right-click detection via the `used` statistic) and are told apart by a `custom_data` tag, so they work side by side.

## Weapons

| Pack | Give command | What it does |
|------|--------------|--------------|
| `corrupted_beacon` | `/function cb:give` | Rise while charging, hover, then fire a thick purple beam for ~4s. Hits glow, play a hit ding, and credit you with the kill. |
| `anime_katana` | `/function kt:give` | Draw (rooted, red path telegraph), flash-step up to 14 blocks along your aim, then everything you passed through is cut at once and left on exactly half a heart. |
| `chain_scythe` | `/function sc:give` | Chain the first enemy in your crosshair, rise into the air while they are forced to watch, yank them up to you, reap, then slam them into the ground. |

## Install

1. Run `./build.sh` to build `dist/*.zip`, or zip each pack folder yourself with `pack.mcmeta` at the zip root.
2. Put the zips in `<world>/datapacks/`.
3. Run `/reload`. (The scythe's earlier custom damage type is gone, so a restart is no longer required.)
4. Use the give command from the table above.

## Notes

- Damage balance: the beacon and scythe use magic-style damage, which ignores armor points but is reduced by Protection enchantments, so heavily enchanted armor leaves a victim barely alive. The katana always leaves the target on half a heart.
- The katana freezes the caster completely (gravity off, position pinned, even in mid-air) while drawing and posing. Its dash direction (yaw and pitch) is locked when the dash starts. Standing on the ground and looking down flattens the dash; in the air you can dive.
- Weapons can hurt other players. Use teams or tags if you want to exclude friends.
- Edit-friendly tuning values are listed in the comments and function names; for example the cooldowns are `cb:recover`, `kt:end`, and `sc:finish`.
