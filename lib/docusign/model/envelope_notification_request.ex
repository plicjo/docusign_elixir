# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.EnvelopeNotificationRequest do
  @moduledoc false

  @derive [Poison.Encoder]
  defstruct [
    :expirations,
    :reminders,
    :useAccountDefaults
  ]

  @type t :: %__MODULE__{
          :expirations => Expirations,
          :reminders => Reminders,
          :useAccountDefaults => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopeNotificationRequest do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:expirations, :struct, DocuSign.Model.Expirations, options)
    |> deserialize(:reminders, :struct, DocuSign.Model.Reminders, options)
  end
end
