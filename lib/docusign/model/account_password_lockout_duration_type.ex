# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.AccountPasswordLockoutDurationType do
  @moduledoc false

  @derive [Poison.Encoder]
  defstruct [
    :options
  ]

  @type t :: %__MODULE__{
          :options => [String.t()]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountPasswordLockoutDurationType do
  def decode(value, _options) do
    value
  end
end
