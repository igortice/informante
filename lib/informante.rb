require 'informante/templates'
require 'informante/informante_object'
require 'informante/hash'

module Informante
  extend self

  def set(type = nil)
    return nil unless type

    config(type)
  end

  def config(type = :hash)
    case type
      when :hash
        to_hash
      when :object
        to_object
      when :array
        to_array
      when :string
        to_string
      else
        raise "type `:#{type}` invalid for informante"
    end
  end

  def to_hash
    file_informante_to_yaml.recursive_symbolize_keys!
  end

  def to_array
    to_hash.to_a
  end

  def to_string
    to_hash.to_s
  end

  def to_object
    InformanteObject.new to_hash
  end

  def path_file_informante_config
    Rails.root.join('config', Informante::NAME_TEMPLATE_CONIG)
  end

  def file_informante
    File.exist?(path_file_informante_config) ? File.read(path_file_informante_config) : nil
  end

  def file_informante_to_yaml
    if self.file_informante
      begin
        YAML.load(file_informante)
      rescue => e
        raise "problem sintaxe file #{Informante::NAME_TEMPLATE_CONIG} #{e.to_s}"
      end
    end
  end
end
