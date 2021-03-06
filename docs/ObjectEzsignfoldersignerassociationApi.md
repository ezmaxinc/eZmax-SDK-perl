# EzmaxApi::ObjectEzsignfoldersignerassociationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignfoldersignerassociationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignfoldersignerassociation_create_object_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_create_object_v1) | **POST** /1/object/ezsignfoldersignerassociation | Create a new Ezsignfoldersignerassociation
[**ezsignfoldersignerassociation_delete_object_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_delete_object_v1) | **DELETE** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID} | Delete an existing Ezsignfoldersignerassociation
[**ezsignfoldersignerassociation_get_children_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_get_children_v1) | **GET** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID}/getChildren | Retrieve an existing Ezsignfoldersignerassociation&#39;s children IDs
[**ezsignfoldersignerassociation_get_in_person_login_url_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_get_in_person_login_url_v1) | **GET** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID}/getInPersonLoginUrl | Retrieve a Login Url to allow In-Person signing
[**ezsignfoldersignerassociation_get_object_v1**](ObjectEzsignfoldersignerassociationApi.md#ezsignfoldersignerassociation_get_object_v1) | **GET** /1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID} | Retrieve an existing Ezsignfoldersignerassociation


# **ezsignfoldersignerassociation_create_object_v1**
> EzsignfoldersignerassociationCreateObjectV1Response ezsignfoldersignerassociation_create_object_v1(ezsignfoldersignerassociation_create_object_v1_request => $ezsignfoldersignerassociation_create_object_v1_request)

Create a new Ezsignfoldersignerassociation

The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignfoldersignerassociation_create_object_v1_request = [EzmaxApi::Object::ARRAY[EzsignfoldersignerassociationCreateObjectV1Request]->new()]; # ARRAY[EzsignfoldersignerassociationCreateObjectV1Request] | 

eval { 
    my $result = $api_instance->ezsignfoldersignerassociation_create_object_v1(ezsignfoldersignerassociation_create_object_v1_request => $ezsignfoldersignerassociation_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignfoldersignerassociation_create_object_v1_request** | [**ARRAY[EzsignfoldersignerassociationCreateObjectV1Request]**](EzsignfoldersignerassociationCreateObjectV1Request.md)|  | 

### Return type

[**EzsignfoldersignerassociationCreateObjectV1Response**](EzsignfoldersignerassociationCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_delete_object_v1**
> EzsignfoldersignerassociationDeleteObjectV1Response ezsignfoldersignerassociation_delete_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id)

Delete an existing Ezsignfoldersignerassociation

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | The unique ID of the Ezsignfoldersignerassociation

eval { 
    my $result = $api_instance->ezsignfoldersignerassociation_delete_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**| The unique ID of the Ezsignfoldersignerassociation | 

### Return type

[**EzsignfoldersignerassociationDeleteObjectV1Response**](EzsignfoldersignerassociationDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_get_children_v1**
> ezsignfoldersignerassociation_get_children_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id)

Retrieve an existing Ezsignfoldersignerassociation's children IDs

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | The unique ID of the Ezsignfoldersignerassociation

eval { 
    $api_instance->ezsignfoldersignerassociation_get_children_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_get_children_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**| The unique ID of the Ezsignfoldersignerassociation | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_get_in_person_login_url_v1**
> EzsignfoldersignerassociationGetInPersonLoginUrlV1Response ezsignfoldersignerassociation_get_in_person_login_url_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id)

Retrieve a Login Url to allow In-Person signing

This endpoint returns a Login Url that can be used in a browser or embedded in an I-Frame to allow in person signing.  The signer Login type must be configured as In-Person.

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | The unique ID of the Ezsignfoldersignerassociation

eval { 
    my $result = $api_instance->ezsignfoldersignerassociation_get_in_person_login_url_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_get_in_person_login_url_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**| The unique ID of the Ezsignfoldersignerassociation | 

### Return type

[**EzsignfoldersignerassociationGetInPersonLoginUrlV1Response**](EzsignfoldersignerassociationGetInPersonLoginUrlV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldersignerassociation_get_object_v1**
> EzsignfoldersignerassociationGetObjectV1Response ezsignfoldersignerassociation_get_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id)

Retrieve an existing Ezsignfoldersignerassociation

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldersignerassociationApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldersignerassociation_id = 56; # int | The unique ID of the Ezsignfoldersignerassociation

eval { 
    my $result = $api_instance->ezsignfoldersignerassociation_get_object_v1(pki_ezsignfoldersignerassociation_id => $pki_ezsignfoldersignerassociation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldersignerassociationApi->ezsignfoldersignerassociation_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldersignerassociation_id** | **int**| The unique ID of the Ezsignfoldersignerassociation | 

### Return type

[**EzsignfoldersignerassociationGetObjectV1Response**](EzsignfoldersignerassociationGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

