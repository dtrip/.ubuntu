
-- network stuff

netwidget = blingbling.net({
    interface = "wlan0",
    background_color = beautiful.bg_focus
})

netwidget:set_ippopup()
netwidget:set_show_text(true)
netwidget:set_v_margin(3)
netwidget:set_h_margin(5)
