# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.SettingsMetadata do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :is21CFRPart11,
    :options,
    :rights,
    :uiHint,
    :uiOrder,
    :uiType
  ]

  @type t :: %__MODULE__{
          :is21CFRPart11 => String.t(),
          :options => [String.t()],
          :rights => String.t(),
          :uiHint => String.t(),
          :uiOrder => String.t(),
          :uiType => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.SettingsMetadata do
  def decode(value, _options) do
    value
  end
end
