# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.TabMetadataList do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :tabs
  ]

  @type t :: %__MODULE__{
          :tabs => [CustomTabs]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.TabMetadataList do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:tabs, :list, DocuSign.Model.CustomTabs, options)
  end
end
