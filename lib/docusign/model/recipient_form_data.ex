# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.RecipientFormData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :declinedTime,
    :deliveredTime,
    :email,
    :formData,
    :name,
    :recipientId,
    :sentTime,
    :signedTime
  ]

  @type t :: %__MODULE__{
          :declinedTime => String.t(),
          :deliveredTime => String.t(),
          :email => String.t(),
          :formData => [NameValue],
          :name => String.t(),
          :recipientId => String.t(),
          :sentTime => String.t(),
          :signedTime => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.RecipientFormData do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:formData, :list, DocuSign.Model.NameValue, options)
  end
end
