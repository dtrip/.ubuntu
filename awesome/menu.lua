

    local bar_menu, bar_menu_w = radical.bar {
        item_style = radical.item.style.arrow_prefix,
        disable_submenu_icon = true,
        bg_hover = "#00ff00",
        bg_focus = "#00ff00"
    }

    local app_menu = nil

    local it = bar_menu:add_item {
        text = "Apps",
        icon = beautiful.ubuntu_drk,
        tooltip = "Application Menu",
        sub_menu = function ()
            local smenu = radical.context{}
            smenu:add_item{ text="tst" }
            return smenu
        end}

    it = bar_menu:add_item {
        text = "Places",
        icon = beautiful.folder,
        tooltip = "Application Menu",
        sub_menu = function ()
            local smenu = radical.context{}
            smenu:add_item{ text="Home" }
            return smenu
        end}

    it.state[radical.base.item_flags.USED] = true

    -- rmenubar:add_item { text = "Screen 1", icon = beautiful.awesome_icon }
    -- rmenubar:add_item { text = "Test", icon = beautiful.firefox }

    rbox = wibox.layout.align.horizontal()
    rbox:set_left(bar_menu_w)
    -- rbox:set_widget(bar_menu_w)

    -- slayout:set_right(rmenubarbox)


