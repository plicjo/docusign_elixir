# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Gets the user information for a specified user.
  Retrieves the user information for the specified user.   To return additional user information that details the last login date, login status, and the user&#39;s password expiration date, set the optional &#x60;additional_info&#x60; query string parameter to **true**.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :additional_info (String.t): When set to **true**, the full list of user information is returned for each user in the account.
    - :email (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.Users{}} on success
  {:error, info} on failure
  """
  @spec user_get_user(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.Users.t()} | {:error, Tesla.Env.t()}
  def user_get_user(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      :additional_info => :query,
      :email => :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Users{})
  end

  @doc """
  Deletes the user profile image for the specified user.
  Deletes the user profile image from the  specified user&#39;s profile.  The userId parameter specified in the endpoint must match the authenticated user&#39;s user ID and the user must be a member of the specified account.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_profile_image_delete_user_profile_image(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def user_profile_image_delete_user_profile_image(connection, account_id, user_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/profile/image")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves the user profile image for the specified user.
  Retrieves the user profile picture for the specified user. The image is returned in the same format as uploaded.  The userId parameter specified in the endpoint must match the authenticated user&#39;s user ID and the user must be a member of the specified account.  If successful, the response returns a 200 - OK and the user profile image.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :encoding (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec user_profile_image_get_user_profile_image(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, String.t()} | {:error, Tesla.Env.t()}
  def user_profile_image_get_user_profile_image(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      :encoding => :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/profile/image")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Updates the user profile image for a specified user.
  Updates the user profile image by uploading an image to the user profile.  The supported image formats are: gif, png, jpeg, and bmp. The file must be less than 200K. For best viewing results, DocuSign recommends that the image is no more than 79 pixels wide and high.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_profile_image_put_user_profile_image(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def user_profile_image_put_user_profile_image(connection, account_id, user_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/profile/image")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Updates the specified user information.
  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :users (Users): 

  ## Returns

  {:ok, %DocuSign.Model.Users{}} on success
  {:error, info} on failure
  """
  @spec user_put_user(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.Users.t()} | {:error, Tesla.Env.t()}
  def user_put_user(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      :Users => :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Users{})
  end

  @doc """
  Gets the user account settings for a specified user.
  Retrieves a list of the account settings and email notification information for the specified user.  The response returns the account setting name/value information and the email notification settings for the specified user. For more information about the different user settings, see the [ML:userSettings list].

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.UserSettingsInformation{}} on success
  {:error, info} on failure
  """
  @spec user_settings_get_user_settings(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.UserSettingsInformation.t()} | {:error, Tesla.Env.t()}
  def user_settings_get_user_settings(connection, account_id, user_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/settings")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserSettingsInformation{})
  end

  @doc """
  Updates the user account settings for a specified user.
  Updates the account settings list and email notification types for the specified user.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - user_id (String.t): The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
  - opts (KeywordList): [optional] Optional parameters
    - :user_settings_information (UserSettingsInformation): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_settings_put_user_settings(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def user_settings_put_user_settings(connection, account_id, user_id, opts \\ []) do
    optional_params = %{
      :userSettingsInformation => :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/users/#{user_id}/settings")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Removes users account privileges.
  This closes one or more user records in the account. Users are never deleted from an account, but closing a user prevents them from using account functions.  The response returns whether the API execution was successful (200 - OK) or  if it failed. The response contains a user structure similar to the request and includes the user changes. If an error occurred during the DELETE operation for any of the users, the response for that user contains an &#x60;errorDetails&#x60; node with &#x60;errorCode&#x60; and &#x60;message&#x60; properties.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :delete (String.t): 
    - :user_info_list (UserInfoList): 

  ## Returns

  {:ok, %DocuSign.Model.GroupUsers{}} on success
  {:error, info} on failure
  """
  @spec users_delete_users(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.GroupUsers.t()} | {:error, Tesla.Env.t()}
  def users_delete_users(connection, account_id, opts \\ []) do
    optional_params = %{
      :delete => :query,
      :userInfoList => :body
    }

    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.GroupUsers{})
  end

  @doc """
  Retrieves the list of users for the specified account.
  Retrieves the list of users for the specified account.  The response returns the list of users for the account along with the information about the result set. If the &#x60;additional_info&#x60; query was added to the endpoint and set to **true**, the full user information is returned for each user

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :additional_info (String.t): When set to **true**, the full list of user information is returned for each user in the account.
    - :count (String.t): Number of records to return. The number must be greater than 0 and less than or equal to 100. 
    - :email (String.t): 
    - :email_substring (String.t): Filters the returned user records by the email address or a sub-string of email address.
    - :group_id (String.t): Filters user records returned by one or more group Id&#39;s.
    - :login_status (String.t): 
    - :not_group_id (String.t): 
    - :start_position (String.t): Starting value for the list. 
    - :status (String.t): Filters the user records by account status. One of:  * ActivationRequired * ActivationSent * Active * Closed * Disabled 
    - :user_name_substring (String.t): Filters the user records returned by the user name or a sub-string of user name.

  ## Returns

  {:ok, %DocuSign.Model.UserInformationList{}} on success
  {:error, info} on failure
  """
  @spec users_get_users(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.UserInformationList.t()} | {:error, Tesla.Env.t()}
  def users_get_users(connection, account_id, opts \\ []) do
    optional_params = %{
      :additional_info => :query,
      :count => :query,
      :email => :query,
      :email_substring => :query,
      :group_id => :query,
      :login_status => :query,
      :not_group_id => :query,
      :start_position => :query,
      :status => :query,
      :user_name_substring => :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserInformationList{})
  end

  @doc """
  Adds news user to the specified account.
  Adds new users to an account.  The body of this request is an array of [&#x60;Users&#x60;][usersobject] objects. For each new user, you must provide at least the &#x60;userName&#x60; and an &#x60;email&#x60;.  The [&#x60;userSettings&#x60; property](#user-settings) is a [name/value][nameValue] list that specifies the actions users can perform. In the example below, Tal Mason will be able to send envelopes, and the activation email will be in French because the &#x60;locale&#x60; is set to &#x60;fr&#x60;.   &#x60;&#x60;&#x60; POST /restapi/v2/accounts/{accountId}/users Content-Type: application/json &#x60;&#x60;&#x60; &#x60;&#x60;&#x60; {   \&quot;newUsers\&quot;: [     {       \&quot;userName\&quot;: \&quot;Claire Horace\&quot;,       \&quot;email\&quot;: \&quot;claire@example.com.com\&quot;     },     {       \&quot;userName\&quot;: \&quot;Tal Mason\&quot;,       \&quot;email\&quot;: \&quot;tal@example.com.com\&quot;,       \&quot;userSettings\&quot;: [         {           \&quot;name\&quot;: \&quot;canSendEnvelope\&quot;,           \&quot;value\&quot;: \&quot;true\&quot;         },         {           \&quot;name\&quot;: \&quot;locale\&quot;,           \&quot;value\&quot;: \&quot;fr\&quot;         }       ]     }   ] } &#x60;&#x60;&#x60;   A successful response is a &#x60;newUsers&#x60; array with information about the newly created users. If there was problem creating a user, that entry will contain an &#x60;errorDetails&#x60; property that describes what went wrong.  &#x60;&#x60;&#x60;json {   \&quot;newUsers\&quot;: [     {       \&quot;userId\&quot;: \&quot;e064a4fc-c0da-c0c0-95fa-8bac87ede98a\&quot;,       \&quot;uri\&quot;: \&quot;/users/e064a4fc-c0da-c0c0-95fa-8bac87ede98a\&quot;,       \&quot;email\&quot;: \&quot;claire@example.com\&quot;,       \&quot;userName\&quot;: \&quot;Claire Horace\&quot;,       \&quot;createdDateTime\&quot;: \&quot;0001-01-01T08:00:00.0000000Z\&quot;,       \&quot;errorDetails\&quot;: {         \&quot;errorCode\&quot;: \&quot;USER_ALREADY_EXISTS_IN_ACCOUNT\&quot;,         \&quot;message\&quot;: \&quot;Username and email combination already exists for this account.\&quot;       }     },     {       \&quot;userId\&quot;: \&quot;a0e6c64b-feed-cafe-9af0-805ff3c8cffd\&quot;,       \&quot;uri\&quot;: \&quot;/users/a0e6c64b-feed-cafe-9af0-805ff3c8cffd\&quot;,       \&quot;email\&quot;: \&quot;tal@example.com\&quot;,       \&quot;userName\&quot;: \&quot;Tal Mason\&quot;,       \&quot;userStatus\&quot;: \&quot;ActivationSent\&quot;,       \&quot;createdDateTime\&quot;: \&quot;2017-09-15T05:54:36.1265683Z\&quot;     }   ] } &#x60;&#x60;&#x60;   ### User Settings  User settings specify the capabilities a newly created user will have.   | Name                             | Value   | Authorization Requried                                         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | | :------------------------------- | :------ | :------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | | allowBulkRecipients              | Boolean | Admin                                                          | When **true**, this user can use the bulk send functionality.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | | allowRecipientLanguageSelection  | Boolean | Admin                                                          | When **true**, this user can set the language used in the standard email format for a recipient when creating an envelope.                                                                                                                                                                                                                                                                                                                                                                                                                                                              | | allowSendOnBehalfOf              | Boolean | Admin                                                          | When **true**, this user can send envelopes &#39;on behalf of&#39; other users through the API.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | | apiAccountWideAccess             | Boolean | Admin                                                          | When **true**, this user can send and manage envelopes for the entire account using the DocuSign API.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | | canEditSharedAddressBook         | String  | Admin                                                          | Sets the address book usage and management rights for the user. Possible values: &lt;ul&gt; &lt;li&gt;&lt;code&gt;none&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;use_only_shared&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;use_private_and_shared&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;share&lt;/code&gt;&lt;/li&gt; &lt;/ul&gt;                                                                                                                                                                                                                                                                                                                                                   | | canManageAccount                 | Boolean | Admin &amp;amp; not setting for self                               | When **true**, this user can manage account settings, manage user settings, add users, and remove users.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | | canManageTemplates               | String  | Admin &amp;amp; not setting for self                               | Sets the template usage and management rights for the user. Possible values: &lt;ul&gt; &lt;li&gt;&lt;code&gt;none&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;use&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;create&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;share&lt;/code&gt;&lt;/li&gt; &lt;/ul&gt;                                                                                                                                                                                                                                                                                                                                                                                   | | canSendAPIRequests               | Boolean | Admin &amp;amp; [account setting][accountsettings] &#x60;usesAPI&#x60; is set| Only needed if integrator key is not used. When **true**, this user can send and manage envelopes using the DocuSign API.                                                                                                                                                                                                                                                                                                                                                                                                                                                               | | canSendEnvelope                  | Boolean | Admin &amp;amp; not setting for self                               | When **true**, this user can send envelopes though the DocuSign Console.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | | enableDSPro                      | Boolean | SysAdmin                                                       | When **true**, this user can send and manage envelopes from the DocuSign Desktop Client.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | | enableSequentialSigningAPI       | Boolean | SysAdmin                                                       | When **true**, this user can define the routing order of recipients for envelopes sent using the DocuSign API.                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | | enableSequentialSigningUI        | Boolean | SysAdmin                                                       | When **true**, this user can define the routing order of recipients while sending documents for signature.                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | | enableSignerAttachments          | Boolean | Admin                                                          | When **true**, this user can add requests for attachments from signers while sending documents.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | | enableSignOnPaperOverride        | Boolean | Admin                                                          | When **true**, this user can override the account setting that determines if signers may sign their documents on paper as an option to signing electronically.                                                                                                                                                                                                                                                                                                                                                                                                                          | | enableTransactionPoint           | Boolean | SysAdmin                                                       | When **true**, this user can select an envelope from their member console and upload the envelope documents to TransactionPoint.                                                                                                                                                                                                                                                                                                                                                                                                                                                        | | enableVaulting                   | Boolean | Admin                                                          | When **true**, this user can use electronic vaulting for documents.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | | locale                           | String  | Admin                                                          | Sets the default language for the user. The supported languages are: &lt;ul&gt; &lt;li&gt;Chinese Simplified: &lt;code&gt;zh_CN&lt;/code&gt;&lt;/li&gt; &lt;li&gt;Chinese Traditional: &lt;code&gt;zh_TW&lt;/code&gt;&lt;/li&gt; &lt;li&gt;Dutch: &lt;code&gt;nl&lt;/code&gt;&lt;/li&gt; &lt;li&gt;English US: &lt;code&gt;en&lt;/code&gt;&lt;/li&gt; &lt;li&gt;French: &lt;code&gt;fr&lt;/code&gt;&lt;/li&gt; &lt;li&gt;German: &lt;code&gt;de&lt;/code&gt;&lt;/li&gt; &lt;li&gt;Italian: &lt;code&gt;it&lt;/code&gt;&lt;/li&gt; &lt;li&gt;Japanese: &lt;code&gt;ja&lt;/code&gt;&lt;/li&gt; &lt;li&gt;Korean: &lt;code&gt;ko&lt;/code&gt;&lt;/li&gt; &lt;li&gt;Portuguese: &lt;code&gt;pt&lt;/code&gt;&lt;/li&gt; &lt;li&gt;Portuguese (Brazil): &lt;code&gt;pt_BR&lt;/code&gt;&lt;/li&gt; &lt;li&gt;Russian: &lt;code&gt;ru&lt;/code&gt;&lt;/li&gt; &lt;li&gt;Spanish: &lt;code&gt;es&lt;/code&gt;&lt;/li&gt; &lt;/ul&gt; | | powerFormAdmin                   | Boolean | Admin                                                          | When **true**, this user can create, manage and download the PowerForms documents.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | | powerFormUser                    | Boolean | Admin                                                          | When **true**, this user can view and download PowerForms documents.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | | selfSignedRecipientEmailDocument | String  | Admin                                                          | Sets how self-signed documents are presented to the email recipients. This can only be changed if the &lt;code&gt;selfSignedRecipientEmailDocumentUserOverride&lt;/code&gt; &lt;a href&#x3D;\&quot;/esign/restapi/Accounts/Accounts/create/#account-settings\&quot;&gt;account setting&lt;/a&gt; is &lt;strong&gt;true&lt;/strong&gt;. This setting overrides the account setting. Possibe values are: &lt;ul&gt; &lt;li&gt;&lt;code&gt;include_pdf&lt;/code&gt;: A PDF of the completed document is attached to the email.&lt;/li&gt; &lt;li&gt;&lt;code&gt;include_link&lt;/code&gt;: A secure link to the self-signed documents is included in the email.&lt;/li&gt; &lt;/ul&gt;                      | | vaultingMode                     | String  | Admin                                                          | Sets the electronic vaulting mode for the user. Possible values: &lt;ul&gt; &lt;li&gt;&lt;code&gt;none&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;estored&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;electronic_original&lt;/code&gt;&lt;/li&gt; &lt;/ul&gt;                                                                                                                                                                                                                                                                                                                                                                                                          |  [accountsettings]:  /esign/restapi/Accounts/Accounts/create/#account-settings [nameValue]:        #/definitions/nameValue [usersobject]:      #/definitions/Users 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :new_users_definition (NewUsersDefinition): 

  ## Returns

  {:ok, %DocuSign.Model.NewUsersSummary{}} on success
  {:error, info} on failure
  """
  @spec users_post_users(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.NewUsersSummary.t()} | {:error, Tesla.Env.t()}
  def users_post_users(connection, account_id, opts \\ []) do
    optional_params = %{
      :newUsersDefinition => :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.NewUsersSummary{})
  end

  @doc """
  Change one or more user in the specified account.
  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :user_information_list (UserInformationList): 

  ## Returns

  {:ok, %DocuSign.Model.UserInformationList{}} on success
  {:error, info} on failure
  """
  @spec users_put_users(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.UserInformationList.t()} | {:error, Tesla.Env.t()}
  def users_put_users(connection, account_id, opts \\ []) do
    optional_params = %{
      :userInformationList => :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserInformationList{})
  end
end
