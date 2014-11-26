
using Gtk;

public class MainWindow : Window {

    // constructor
    public MainWindow () {

        this.title = "Ubuntu Customization Setup";
        this.border_width = 10;
        this.window_position = WindowPosition.CENTER;

        this.set_default_size(500, 400);

        this.destroy.connect(Gtk.main_quit);

        try {
            window.icon = new Gdk.Pixbuf.from_file("../assets/imgs/config-icon.png");
        } catch (Error e) {
            stderr.printf("Error loading application icon %s\n", e.message);
        }
    }
}
