# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ConnectFailureResult do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :configId,
    :configUrl,
    :envelopeId,
    :status,
    :statusMessage
  ]

  @type t :: %__MODULE__{
          :configId => String.t(),
          :configUrl => String.t(),
          :envelopeId => String.t(),
          :status => String.t(),
          :statusMessage => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ConnectFailureResult do
  def decode(value, _options) do
    value
  end
end