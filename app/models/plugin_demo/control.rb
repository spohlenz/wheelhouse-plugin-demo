module PluginDemo
  class Control < Wheelhouse::Resource
    include Wheelhouse::Resource::Node
    include Wheelhouse::Resource::Renderable
    include Wheelhouse::Resource::Addressable
    include Wheelhouse::Resource::Versioned
    include Wheelhouse::Resource::Content
    
    activities :all
    
    icon "plugin-demo/controls.png"
    
    self.default_template = "controls"
    
    property :basic_text,   String, :required => true
    property :basic_text_2, String, :required => true
    property :basic_text_3, String, :required => true
    property :basic_text_4, String, :required => true
    
    property :long_text_1,  String, :required => true
    property :long_text_2,  String, :required => true
    
    property :date,     Date,     :required => true
    property :datetime, DateTime, :required => true
    property :time,     Time,     :required => true
    
    property :fixed_date,     Date,     :required => true, :default => proc { Date.today }
    property :fixed_datetime, DateTime, :required => true, :default => proc { DateTime.now }
    property :fixed_time,     Time,     :required => true, :default => proc { Time.now }
    
    property :sidebar_date,     Date,     :required => true, :default => proc { Date.today }
    property :sidebar_datetime, DateTime, :required => true, :default => proc { DateTime.now }
    property :sidebar_time,     Time,     :required => true, :default => proc { Time.now }
    
    property :fixed_1, String, :required => true
    property :fixed_2, String, :required => true
    property :fixed_3, String, :required => true
    
    property :short_text_25, String, :required => true
    property :short_text_50, String, :required => true
    property :short_text_75, String, :required => true
    
    property :single_image,     Wheelhouse::Image, :required => true
    property :image_collection, Collection[Wheelhouse::Image]
    
    property :title,     String
    property :permalink, String
    
    property :selection,       String
    property :tags,            Wheelhouse::Tags
    property :checkboxes,      Wheelhouse::Tags
    property :radio_buttons,   String
    property :single_checkbox, Boolean
    
    property :sidebar_selection,       String
    property :sidebar_tags,            Wheelhouse::Tags
    property :sidebar_checkboxes,      Wheelhouse::Tags
    property :sidebar_radio_buttons,   String
    property :sidebar_single_checkbox, Boolean
    
    def self.all_options
      ["Web Development", "Graphic Design", "Server Administration", "Project Management", "Bookkeeping", "Internal Meetings", "Client Meetings"]
    end
    
    def self.priorities
      ["Urgent", "Normal", "Optional"]
    end
  end
end
