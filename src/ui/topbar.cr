
require "gtk4"

def create_topbar
    topbar = Gtk::Box.new(:horizontal, 0)
    label = Gtk::Label.new("Topbar")
    topbar.append(label)
    topbar
end
