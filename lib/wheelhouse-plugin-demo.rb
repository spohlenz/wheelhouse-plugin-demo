require 'wheelhouse'

module PluginDemo
  class Plugin < Wheelhouse::Plugin
    isolate_namespace PluginDemo
    
    resource { Resource(PluginDemo::Control) }
    
    resources {
      (1..3).map { |i|
        Resource(PluginDemo::Control, :label => "Custom Label", :sublabel => "Custom Sublabel #{i}", :url => plugin_demo.control_path(i))
      }
    }
    
    hook(:"pages.tabs", "plugin_demo/page_tabs")
  end
end
