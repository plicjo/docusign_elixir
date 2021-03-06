# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.TemplateBulkRecipients do
  @moduledoc """
  API calls for all endpoints tagged `TemplateBulkRecipients`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes the bulk recipient list on a template.
  Deletes the bulk recipient list on a template.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - recipient_id (String.t): The &#x60;recipientId&#x60; used when the envelope or template was created.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.BulkRecipientsUpdateResponse{}} on success
  {:error, info} on failure
  """
  @spec recipients_delete_template_bulk_recipients_file(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.BulkRecipientsUpdateResponse.t()} | {:error, Tesla.Env.t()}
  def recipients_delete_template_bulk_recipients_file(
        connection,
        account_id,
        recipient_id,
        template_id,
        _opts \\ []
      ) do
    %{}
    |> method(:delete)
    |> url(
      "/v2/accounts/#{account_id}/templates/#{template_id}/recipients/#{recipient_id}/bulk_recipients"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.BulkRecipientsUpdateResponse{})
  end

  @doc """
  Gets the bulk recipient file from a template.
  Retrieves the bulk recipient file information from a template that has a bulk recipient.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - recipient_id (String.t): The &#x60;recipientId&#x60; used when the envelope or template was created.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :include_tabs (String.t): When set to **true**, the tab information associated with the recipient is included in the response.
    - :start_position (String.t): Reserved for DocuSign. 

  ## Returns

  {:ok, %DocuSign.Model.TemplateBulkRecipients{}} on success
  {:error, info} on failure
  """
  @spec recipients_get_template_bulk_recipients(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.TemplateBulkRecipients.t()} | {:error, Tesla.Env.t()}
  def recipients_get_template_bulk_recipients(
        connection,
        account_id,
        recipient_id,
        template_id,
        opts \\ []
      ) do
    optional_params = %{
      include_tabs: :query,
      start_position: :query
    }

    %{}
    |> method(:get)
    |> url(
      "/v2/accounts/#{account_id}/templates/#{template_id}/recipients/#{recipient_id}/bulk_recipients"
    )
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TemplateBulkRecipients{})
  end

  @doc """
  Adds or replaces the bulk recipients list in a template.
  Updates the bulk recipients in a template using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - recipient_id (String.t): The &#x60;recipientId&#x60; used when the envelope or template was created.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :bulk_recipients_request (BulkRecipientsRequest): 

  ## Returns

  {:ok, %DocuSign.Model.BulkRecipientsSummaryResponse{}} on success
  {:error, info} on failure
  """
  @spec recipients_put_template_bulk_recipients(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.BulkRecipientsSummaryResponse.t()} | {:error, Tesla.Env.t()}
  def recipients_put_template_bulk_recipients(
        connection,
        account_id,
        recipient_id,
        template_id,
        opts \\ []
      ) do
    optional_params = %{
      bulkRecipientsRequest: :body
    }

    %{}
    |> method(:put)
    |> url(
      "/v2/accounts/#{account_id}/templates/#{template_id}/recipients/#{recipient_id}/bulk_recipients"
    )
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.BulkRecipientsSummaryResponse{})
  end
end
