-- This function returns a formatted string with the current battery status. It
-- can be used to populate a text widget in the awesome window manager. Based
-- on the "Gigamo Battery Widget" found in the wiki at awesome.naquadah.org

-- local naughty = require("naughty")
-- local beautiful = require("beautiful")
--
-- function batteryInfo(adapter)
--   local fh = io.open("/sys/class/power_supply/"..adapter.."/present", "r")
--   if fh == nil then
--     battery = "A/C"
--     icon = ""
--     percent = ""
--   else
--     local fcur = io.open("/sys/class/power_supply/"..adapter.."/energy_now")  
--     local fcap = io.open("/sys/class/power_supply/"..adapter.."/energy_full")
--     local fsta = io.open("/sys/class/power_supply/"..adapter.."/status")
--     local cur = fcur:read()
--     local cap = fcap:read()
--     local sta = fsta:read()
--     fcur:close()
--     fcap:close()
--     fsta:close()
--     battery = math.floor(cur * 100 / cap)
--   
--     if sta:match("Charging") then
--       icon = "⚡"
--       percent = "%"
--     elseif sta:match("Discharging") then
--       icon = "⚠"
--       percent = "%"
--       if tonumber(battery) < 15 then
--         naughty.notify({ title    = "Battery Warning"
--                , text     = "Battery low!".."  "..battery..percent.."  ".."left!"
--                , timeout  = 5
--                , position = "top_right"
--                , fg       = beautiful.fg_focus
--                , bg       = beautiful.bg_focus
--         })
--       end
--     end
--   end
--   return " "..icon..battery..percent.." "
-- end


-- creates a battery indicator widget
-- batterywidget = wibox.widget.textbox()

-- batwidget = awful.widget.progressbar()
-- batwidget:set_width(8)
-- batwidget:set_height(8)
-- batwidget:set_vertical(true)
-- batwidget:set_background_color(beautiful.bg_normal)
-- batwidget:set_border_color(beautiful.bg_normal)
-- batwidget:set_color({ type = "linear", from = { 0, 0 }, to = { 0, 8 }, stops = { { 0, "#AECF96" }, { 0.5, "#88A175" }, { 1, "#FF5656" }}})
-- -- batwidget:set_color('#FF0000')

-- battery graph
batg = blingbling.line_graph({
    height = 21,
    width = 8,
    rounded_size = 0.5
})

baticon = wibox.widget.imagebox()
vicious.register(batg, vicious.widgets.bat,
    function (widget, args)
        if args[1] == "-" then
            baticon:set_image(beautiful.widget_battery)
            if args[2] <= 40 then
                baticon:set_image(beautiful.widget_battery_empty)
            end
        else
            baticon:set_image(beautiful.widget_ac)
        end
        return args[2]
    end, 30, "BAT0")

-- battery icon
-- baticon:set_image(beautiful.widget_battery)





-- batterywidget_timer = timer({timeout = 1})
-- batterywidget_timer:connect_signal("timeout", function()
    -- batterywidget:set_text(batteryInfo("BAT0"))
-- end)
-- batterywidget_timer:start()


