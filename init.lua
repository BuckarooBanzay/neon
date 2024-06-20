
local defs = {
    { suffix = "box" },
    { suffix = "circle" },
    { suffix = "cross" },
    {
        suffix = "box_top",
        tiles = {
            "neon_box.png",
            "blank.png",
            "neon_box_top.png"
        },
        use_texture_alpha = "blend",
        drawtype = "normal"
    }
}

for _, def in pairs(defs) do
    minetest.register_node("neon:" .. def.suffix, {
        description = "Neon " .. def.suffix,
        tiles = def.tiles or {"neon_" .. def.suffix .. ".png"},
        groups = {
            cracky = 1,
            ud_param2_colorable = 1
        },
        use_texture_alpha = def.use_texture_alpha,
        is_ground_content = false,
        palette = "unifieddyes_palette_extended.png",
        paramtype = "light",
        paramtype2 = "color",
        drawtype = def.drawtype or "glasslike",
        light_source = minetest.LIGHT_MAX,
        on_construct = unifieddyes.on_construct,
        on_dig = unifieddyes.on_dig
    })
end