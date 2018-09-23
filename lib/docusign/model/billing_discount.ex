# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.BillingDiscount do
  @moduledoc false

  @derive [Poison.Encoder]
  defstruct [
    :beginQuantity,
    :discount,
    :endQuantity
  ]

  @type t :: %__MODULE__{
          :beginQuantity => String.t(),
          :discount => String.t(),
          :endQuantity => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BillingDiscount do
  def decode(value, _options) do
    value
  end
end
