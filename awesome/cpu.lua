-- CPU Bling bling graph and friends


cpu_conf = {
    height = 21,
    width = 8,
    rounded_size = 0.5,
    -- graph_background_color = beautiful.bg_focus,
    background_color = beautiful.bg_focus,
    -- graph_background_border = beautiful.bg_focus,
    background_border = beautiful.bg_focus
}

cpu_graphs = {}

for i=1,CORES do
    cpu_graphs[i] = blingbling.progress_graph(cpu_conf)

    blingbling.popups.htop(cpu_graphs[i], { terminal = terminal })

    vicious.register(cpu_graphs[i], vicious.widgets.cpu, "$"..(i+1).."",1)
end

