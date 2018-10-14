# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.UserProfiles do
  @moduledoc """
  API calls for all endpoints tagged `UserProfiles`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Retrieves the user profile for a specified user.
  Retrieves the user profile information, the privacy settings and personal information (address, phone number, etc.) for the specified user.  The userId parameter specified in the endpoint must match the authenticated user&#39;s user ID and the user must be a member of the specified account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.UserProfiles{}} on success
  {:error, info} on failure
  """
  @spec user_profile_get_profile(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.UserProfiles.t()} | {:error, Tesla.Env.t()}
  def user_profile_get_profile(connection, account_id, user_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/profile")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserProfiles{})
  end

  @doc """
  Updates the user profile information for the specified user.
  Updates the user&#39;s detail information, profile information, privacy settings, and personal information in the user ID card.  You can also change a user&#39;s name by changing the information in the &#x60;userDetails&#x60; property. When changing a user&#39;s name, you can either change the information in the &#x60;userName&#x60; property OR change the information in &#x60;firstName&#x60;, &#x60;middleName&#x60;, &#x60;lastName, suffixName&#x60;, and &#x60;title&#x60; properties. Changes to &#x60;firstName&#x60;, &#x60;middleName&#x60;, &#x60;lastName&#x60;, &#x60;suffixName&#x60;, and &#x60;title&#x60; properties take precedence over changes to the &#x60;userName&#x60; property.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :user_profiles (UserProfiles): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_profile_put_profile(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_profile_put_profile(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      UserProfiles: :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/profile")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
