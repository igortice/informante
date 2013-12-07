# -- informante method global --
# specify type attributes, for example: :hash, :object, :array, :string.
# Default: `:hash`
#
def informante(type = :hash)
  Informante.set(type)
end
