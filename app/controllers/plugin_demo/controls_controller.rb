class PluginDemo::ControlsController < Wheelhouse::ResourceController
  self.resource_class = PluginDemo::Control
  manage_site_breadcrumb
end
