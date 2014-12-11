-- calendar blingbling and friends
-- calw = blingbling.calendar.new({
--     type = "textbox",
--     text = "Calendar"
-- })

-- calw:set_cell_padding(4)
-- calw:set_columns_lines_titles_text_color(beautiful.fg_focus)
-- calw:set_title_text_color(beautiful.bg_focus)

--  Date widget
datewidget = wibox.widget.textbox()
vicious.register(datewidget, vicious.widgets.date, "%b %d,%l:%M %p ", 60)

-- Create a textclock widget
-- mytextclock = awful.widget.textclock()
