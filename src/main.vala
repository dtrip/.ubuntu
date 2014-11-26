using Gtk;

int main (string[] args) {

    Gtk.init(ref args);

    var w = new MainWindow();
    w.show_all();

    Gtk.main();
    return 0;
}
