# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.TemplateDocuments do
  @moduledoc """
  Template documents
  """

  @derive [Poison.Encoder]
  defstruct [
    :templateDocuments,
    :templateId
  ]

  @type t :: %__MODULE__{
          :templateDocuments => [EnvelopeDocument],
          :templateId => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.TemplateDocuments do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:templateDocuments, :list, DocuSign.Model.EnvelopeDocument, options)
  end
end
