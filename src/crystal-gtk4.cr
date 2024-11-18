require "gtk4"
require "./ui/sidebar"
require "./ui/topbar"
require "./ui/pages/main"

app = Gtk::Application.new("crystal-gtk4.ygg.au", Gio::ApplicationFlags::None)
count = 0

app.activate_signal.connect do
    window = Gtk::ApplicationWindow.new(app)
    window.title = "Hello World!"
    window.set_default_size(800, 600)

    vbox = Gtk::Box.new(:vertical, 0)
    window.child = vbox

    topbar = create_topbar
    vbox.append(topbar)

    hbox = Gtk::Box.new(:horizontal, 0)
    vbox.append(hbox)

    sidebar = create_sidebar
    hbox.append(sidebar)

    main_content = create_main_content
    hbox.append(main_content)

    window.present
end

exit(app.run)
