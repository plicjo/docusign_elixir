# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.CurrencyFeatureSetPrice do
  @moduledoc false

  @derive [Poison.Encoder]
  defstruct [
    :currencyCode,
    :currencySymbol,
    :envelopeFee,
    :fixedFee,
    :seatFee
  ]

  @type t :: %__MODULE__{
          :currencyCode => String.t(),
          :currencySymbol => String.t(),
          :envelopeFee => String.t(),
          :fixedFee => String.t(),
          :seatFee => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.CurrencyFeatureSetPrice do
  def decode(value, _options) do
    value
  end
end
