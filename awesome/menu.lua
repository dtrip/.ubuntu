
    bar_menu, bar_menu_w = radical.bar {
    }

    it = bar_menu:add_item {
        text = "Apps",
        tooltip = "Application Menu"
    }

    it.state[radical.base.item_flags.USED] = true

    -- rmenubar:add_item { text = "Screen 1", icon = beautiful.awesome_icon }
    -- rmenubar:add_item { text = "Test", icon = beautiful.firefox }

    rbox = wibox.layout.align.horizontal()
    rbox:set_left(bar_menu_w)
    -- rbox:set_widget(bar_menu_w)

    -- slayout:set_right(rmenubarbox)


