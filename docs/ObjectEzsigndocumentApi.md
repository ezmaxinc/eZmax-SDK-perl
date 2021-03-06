# EzmaxApi::ObjectEzsigndocumentApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigndocumentApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigndocument_apply_ezsigntemplate_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_apply_ezsigntemplate_v1) | **POST** /1/object/ezsigndocument/{pkiEzsigndocumentID}/applyezsigntemplate | Apply an Ezsign Template to the Ezsigndocument.
[**ezsigndocument_create_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_create_object_v1) | **POST** /1/object/ezsigndocument | Create a new Ezsigndocument
[**ezsigndocument_delete_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_delete_object_v1) | **DELETE** /1/object/ezsigndocument/{pkiEzsigndocumentID} | Delete an existing Ezsigndocument
[**ezsigndocument_get_children_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_children_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getChildren | Retrieve an existing Ezsigndocument&#39;s children IDs
[**ezsigndocument_get_download_url_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_download_url_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID}/getDownloadUrl/{eDocumentType} | Retrieve a URL to download documents.
[**ezsigndocument_get_object_v1**](ObjectEzsigndocumentApi.md#ezsigndocument_get_object_v1) | **GET** /1/object/ezsigndocument/{pkiEzsigndocumentID} | Retrieve an existing Ezsigndocument


# **ezsigndocument_apply_ezsigntemplate_v1**
> EzsigndocumentApplyEzsigntemplateV1Response ezsigndocument_apply_ezsigntemplate_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v1_request => $ezsigndocument_apply_ezsigntemplate_v1_request)

Apply an Ezsign Template to the Ezsigndocument.

This endpoint applies a predefined template to the ezsign document. This allows to automatically apply all the form and signature fields on a document in a single step.  The document must not already have fields otherwise an error will be returned.

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | The unique ID of the Ezsigndocument
my $ezsigndocument_apply_ezsigntemplate_v1_request = EzmaxApi::Object::EzsigndocumentApplyEzsigntemplateV1Request->new(); # EzsigndocumentApplyEzsigntemplateV1Request | 

eval { 
    my $result = $api_instance->ezsigndocument_apply_ezsigntemplate_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v1_request => $ezsigndocument_apply_ezsigntemplate_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_apply_ezsigntemplate_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**| The unique ID of the Ezsigndocument | 
 **ezsigndocument_apply_ezsigntemplate_v1_request** | [**EzsigndocumentApplyEzsigntemplateV1Request**](EzsigndocumentApplyEzsigntemplateV1Request.md)|  | 

### Return type

[**EzsigndocumentApplyEzsigntemplateV1Response**](EzsigndocumentApplyEzsigntemplateV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_create_object_v1**
> EzsigndocumentCreateObjectV1Response ezsigndocument_create_object_v1(ezsigndocument_create_object_v1_request => $ezsigndocument_create_object_v1_request)

Create a new Ezsigndocument

The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigndocument_create_object_v1_request = [EzmaxApi::Object::ARRAY[EzsigndocumentCreateObjectV1Request]->new()]; # ARRAY[EzsigndocumentCreateObjectV1Request] | 

eval { 
    my $result = $api_instance->ezsigndocument_create_object_v1(ezsigndocument_create_object_v1_request => $ezsigndocument_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigndocument_create_object_v1_request** | [**ARRAY[EzsigndocumentCreateObjectV1Request]**](EzsigndocumentCreateObjectV1Request.md)|  | 

### Return type

[**EzsigndocumentCreateObjectV1Response**](EzsigndocumentCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_delete_object_v1**
> EzsigndocumentDeleteObjectV1Response ezsigndocument_delete_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Delete an existing Ezsigndocument

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | The unique ID of the Ezsigndocument

eval { 
    my $result = $api_instance->ezsigndocument_delete_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**| The unique ID of the Ezsigndocument | 

### Return type

[**EzsigndocumentDeleteObjectV1Response**](EzsigndocumentDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_children_v1**
> ezsigndocument_get_children_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument's children IDs

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | The unique ID of the Ezsigndocument

eval { 
    $api_instance->ezsigndocument_get_children_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_children_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**| The unique ID of the Ezsigndocument | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_download_url_v1**
> EzsigndocumentGetDownloadUrlV1Response ezsigndocument_get_download_url_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, e_document_type => $e_document_type)

Retrieve a URL to download documents.

This endpoint returns URLs to different files that can be downloaded during the signing process.  These links will expire after 5 minutes so the download of the file should be made soon after retrieving the link.

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | The unique ID of the Ezsigndocument
my $e_document_type = "e_document_type_example"; # string | The type of document to retrieve.  1. **Initial** Is the initial document before any signature were applied. 2. **Signed** Is the final document once all signatures were applied. 3. **Proofdocument** Is the evidence report. 4. **Proof** Is the complete evidence archive including all of the above and more. 

eval { 
    my $result = $api_instance->ezsigndocument_get_download_url_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id, e_document_type => $e_document_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_download_url_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**| The unique ID of the Ezsigndocument | 
 **e_document_type** | **string**| The type of document to retrieve.  1. **Initial** Is the initial document before any signature were applied. 2. **Signed** Is the final document once all signatures were applied. 3. **Proofdocument** Is the evidence report. 4. **Proof** Is the complete evidence archive including all of the above and more.  | 

### Return type

[**EzsigndocumentGetDownloadUrlV1Response**](EzsigndocumentGetDownloadUrlV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndocument_get_object_v1**
> EzsigndocumentGetObjectV1Response ezsigndocument_get_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id)

Retrieve an existing Ezsigndocument

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigndocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndocument_id = 56; # int | The unique ID of the Ezsigndocument

eval { 
    my $result = $api_instance->ezsigndocument_get_object_v1(pki_ezsigndocument_id => $pki_ezsigndocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndocumentApi->ezsigndocument_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndocument_id** | **int**| The unique ID of the Ezsigndocument | 

### Return type

[**EzsigndocumentGetObjectV1Response**](EzsigndocumentGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

