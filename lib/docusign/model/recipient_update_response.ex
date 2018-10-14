# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.RecipientUpdateResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :errorDetails,
    :recipientId,
    :tabs
  ]

  @type t :: %__MODULE__{
          :errorDetails => ErrorDetails,
          :recipientId => String.t(),
          :tabs => EnvelopeRecipientTabs
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.RecipientUpdateResponse do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:tabs, :struct, DocuSign.Model.EnvelopeRecipientTabs, options)
  end
end
