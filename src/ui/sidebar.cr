
require "gtk4"

def create_sidebar
    sidebar = Gtk::Box.new(:vertical, 0)
    button1 = Gtk::Button.new_with_label("Button 1")
    button2 = Gtk::Button.new_with_label("Button 2")
    sidebar.append(button1)
    sidebar.append(button2)
    sidebar
end
