# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Province do
  @moduledoc false

  @derive [Poison.Encoder]
  defstruct [
    :isoCode,
    :name
  ]

  @type t :: %__MODULE__{
          :isoCode => String.t(),
          :name => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Province do
  def decode(value, _options) do
    value
  end
end
