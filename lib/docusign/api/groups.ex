# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.Groups do
  @moduledoc """
  API calls for all endpoints tagged `Groups`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes an existing user group.
  Deletes an existing user group.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :groups (Groups): 

  ## Returns

  {:ok, %DocuSign.Model.Groups{}} on success
  {:error, info} on failure
  """
  @spec groups_delete_groups(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.Groups.t()} | {:error, Tesla.Env.t()}
  def groups_delete_groups(connection, account_id, opts \\ []) do
    optional_params = %{
      Groups: :body
    }

    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Groups{})
  end

  @doc """
  Gets information about groups associated with the account.
  Retrieves information about groups associated with the account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :count (String.t): Number of records to return. The number must be greater than 1 and less than or equal to 100.
    - :group_type (String.t): 
    - :search_text (String.t): 
    - :start_position (String.t): Starting value for the list.

  ## Returns

  {:ok, %DocuSign.Model.Groups{}} on success
  {:error, info} on failure
  """
  @spec groups_get_groups(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.Groups.t()} | {:error, Tesla.Env.t()}
  def groups_get_groups(connection, account_id, opts \\ []) do
    optional_params = %{
      count: :query,
      group_type: :query,
      search_text: :query,
      start_position: :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Groups{})
  end

  @doc """
  Creates one or more groups for the account.
  Creates one or more groups for the account.  Groups can be used to help manage users by associating users with a group. You can associate a group with a Permission Profile, which sets the user permissions for users in that group without having to set the &#x60;userSettings&#x60; property for each user. You are not required to set Permission Profiles for a group, but it makes it easier to manage user permissions for a large number of users. You can also use groups with template sharing to limit user access to templates.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :groups (Groups): 

  ## Returns

  {:ok, %DocuSign.Model.Groups{}} on success
  {:error, info} on failure
  """
  @spec groups_post_groups(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.Groups.t()} | {:error, Tesla.Env.t()}
  def groups_post_groups(connection, account_id, opts \\ []) do
    optional_params = %{
      Groups: :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Groups{})
  end

  @doc """
  Updates the group information for a group.
  Updates the group name and modifies, or sets, the permission profile for the group.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :groups (Groups): 

  ## Returns

  {:ok, %DocuSign.Model.Groups{}} on success
  {:error, info} on failure
  """
  @spec groups_put_groups(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.Groups.t()} | {:error, Tesla.Env.t()}
  def groups_put_groups(connection, account_id, opts \\ []) do
    optional_params = %{
      Groups: :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Groups{})
  end
end
