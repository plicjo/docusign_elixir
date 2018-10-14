# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.TemplateDocuments do
  @moduledoc """
  API calls for all endpoints tagged `TemplateDocuments`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes documents from a template.
  Deletes one or more documents from an existing template.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :envelope_definition (EnvelopeDefinition): 

  ## Returns

  {:ok, %DocuSign.Model.TemplateDocuments{}} on success
  {:error, info} on failure
  """
  @spec documents_delete_template_documents(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.TemplateDocuments.t()} | {:error, Tesla.Env.t()}
  def documents_delete_template_documents(connection, account_id, template_id, opts \\ []) do
    optional_params = %{
      envelopeDefinition: :body
    }

    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/documents")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TemplateDocuments{})
  end

  @doc """
  Gets PDF documents from a template.
  Retrieves one or more PDF documents from the specified template.  You can specify the ID of the document to retrieve or can specify &#x60;combined&#x60; to retrieve all documents in the template as one pdf.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :encrypt (String.t): 
    - :show_changes (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec documents_get_template_document(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, String.t()} | {:error, Tesla.Env.t()}
  def documents_get_template_document(
        connection,
        account_id,
        document_id,
        template_id,
        opts \\ []
      ) do
    optional_params = %{
      encrypt: :query,
      show_changes: :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/documents/#{document_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets a list of documents associated with a template.
  Retrieves a list of documents associated with the specified template.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.TemplateDocuments{}} on success
  {:error, info} on failure
  """
  @spec documents_get_template_documents(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.TemplateDocuments.t()} | {:error, Tesla.Env.t()}
  def documents_get_template_documents(connection, account_id, template_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/documents")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TemplateDocuments{})
  end

  @doc """
  Adds a document to a template document.
  Adds the specified document to an existing template document.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :apply_document_fields (String.t): When **true**, document fields can be added or modified while adding or modifying envelope documents. 
    - :is_envelope_definition (String.t): 
    - :envelope_definition (EnvelopeDefinition): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeDocument{}} on success
  {:error, info} on failure
  """
  @spec documents_put_template_document(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.EnvelopeDocument.t()} | {:error, Tesla.Env.t()}
  def documents_put_template_document(
        connection,
        account_id,
        document_id,
        template_id,
        opts \\ []
      ) do
    optional_params = %{
      apply_document_fields: :query,
      is_envelope_definition: :query,
      envelopeDefinition: :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/documents/#{document_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeDocument{})
  end

  @doc """
  Adds documents to a template document.
  Adds one or more documents to an existing template document.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :apply_document_fields (String.t): When **true**, document fields can be added or modified while adding or modifying envelope documents. 
    - :persist_tabs (String.t): 
    - :envelope_definition (EnvelopeDefinition): 

  ## Returns

  {:ok, %DocuSign.Model.TemplateDocuments{}} on success
  {:error, info} on failure
  """
  @spec documents_put_template_documents(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.TemplateDocuments.t()} | {:error, Tesla.Env.t()}
  def documents_put_template_documents(connection, account_id, template_id, opts \\ []) do
    optional_params = %{
      apply_document_fields: :query,
      persist_tabs: :query,
      envelopeDefinition: :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/documents")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TemplateDocuments{})
  end
end
