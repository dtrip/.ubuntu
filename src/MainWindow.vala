
using Gtk;

public class MainWindow : Window {

    // constructor
    public MainWindow () {

        this.title = "Ubuntu Customization Setup";
        this.border_width = 10;
        this.window_position = WindowPosition.CENTER;

        this.set_default_size(500, 400);

        this.destroy.connect(Gtk.main_quit);

        var hbox = new Box(Orientation.VERTICAL, 2);
        hbox.border_width = 8;
        hbox.show_all();

        var btn = new Button.with_label("Install Packages");
        hbox.pack_start(btn, false, false, 0);

        var lbl = new Label("Install extra packages from official Ubuntu repository as well as from PPA's");
        hbox.pack_start(lbl, false, false, 1);

        this.add(hbox);

        try {
            this.icon = new Gdk.Pixbuf.from_file("./assets/imgs/config-icon.png");
        } catch (Error e) {
            stderr.printf("Error loading application icon %s\n", e.message);
        }
    }

}
