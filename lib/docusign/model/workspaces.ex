# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Workspaces do
  @moduledoc false

  @derive [Poison.Encoder]
  defstruct [
    :billableAccountId,
    :created,
    :createdByInformation,
    :lastModified,
    :lastModifiedByInformation,
    :status,
    :workspaceBaseUrl,
    :workspaceDescription,
    :workspaceId,
    :workspaceName,
    :workspaceUri
  ]

  @type t :: %__MODULE__{
          :billableAccountId => String.t(),
          :created => String.t(),
          :createdByInformation => WorkspaceUser,
          :lastModified => String.t(),
          :lastModifiedByInformation => WorkspaceUser,
          :status => String.t(),
          :workspaceBaseUrl => String.t(),
          :workspaceDescription => String.t(),
          :workspaceId => String.t(),
          :workspaceName => String.t(),
          :workspaceUri => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Workspaces do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:createdByInformation, :struct, DocuSign.Model.WorkspaceUser, options)
    |> deserialize(:lastModifiedByInformation, :struct, DocuSign.Model.WorkspaceUser, options)
  end
end
