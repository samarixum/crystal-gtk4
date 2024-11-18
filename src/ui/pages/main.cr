
require "gtk4"

def create_main_content
    main_content = Gtk::Box.new(:vertical, 0)
    label = Gtk::Label.new("Main Content")
    main_content.append(label)
    main_content
end
