
-- tags = {}

tags = {
    names = {
        '',
        '',
        '',
        4,
        5,
        6,
        7,
        8,
        9
    },
    layouts = {
        layouts[2],
        layouts[4],
        layouts[4],
        layouts[2],
        layouts[2],
        layouts[2],
        layouts[2],
        layouts[2],
        layouts[2]
    },
    icons = {
        beautiful.term_icon,
        beautiful.www_icon,
        beautiful.gimp_icon,
        nil,
        nil,
        nil,
        nil,
        nil,
        nil
    }
}

for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag(tags.names, s, tags.layout)

    for i, t in ipairs(tags[s]) do
        awful.tag.seticon(tags.icons[i], t)
    end
end
-- for s = 1, screen.count() do
    -- Each screen has its own tag table.
    -- tags[s] = awful.tag({ '>_', 'WwW', 'G!mp', 4, 5, 6, 7, 8, 9 }, s, layouts[1])
-- end
