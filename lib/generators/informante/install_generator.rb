require 'informante/templates'

module Informante::Generators
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    def copy_config_file
      file_name = Informante::NAME_TEMPLATE_CONFIG
      copy_file(file_name, "config/#{file_name}")
    end

    def copy_initializer_file
      file_name = Informante::NAME_TEMPLATE_INITIALIZERS
      copy_file(file_name, "config/initializers/#{file_name}")
    end
  end
end
