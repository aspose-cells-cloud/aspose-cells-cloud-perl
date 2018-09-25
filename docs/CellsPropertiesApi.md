# AsposeCellsCloud::CellsPropertiesApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsPropertiesApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_properties_delete_document_properties**](CellsPropertiesApi.md#cells_properties_delete_document_properties) | **DELETE** /cells/{name}/documentproperties | Delete all custom document properties and clean built-in ones.
[**cells_properties_delete_document_property**](CellsPropertiesApi.md#cells_properties_delete_document_property) | **DELETE** /cells/{name}/documentproperties/{propertyName} | Delete document property.
[**cells_properties_get_document_properties**](CellsPropertiesApi.md#cells_properties_get_document_properties) | **GET** /cells/{name}/documentproperties | Read document properties.
[**cells_properties_get_document_property**](CellsPropertiesApi.md#cells_properties_get_document_property) | **GET** /cells/{name}/documentproperties/{propertyName} | Read document property by name.
[**cells_properties_put_document_property**](CellsPropertiesApi.md#cells_properties_put_document_property) | **PUT** /cells/{name}/documentproperties/{propertyName} | Set/create document property.


# **cells_properties_delete_document_properties**
> CellsDocumentPropertiesResponse cells_properties_delete_document_properties(name => $name, folder => $folder, storage => $storage)

Delete all custom document properties and clean built-in ones.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPropertiesApi;
my $api_instance = AsposeCellsCloud::CellsPropertiesApi->new(
);

my $name = 'name_example'; # string | The document name.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_properties_delete_document_properties(name => $name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPropertiesApi->cells_properties_delete_document_properties: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CellsDocumentPropertiesResponse**](CellsDocumentPropertiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_properties_delete_document_property**
> CellsDocumentPropertiesResponse cells_properties_delete_document_property(name => $name, property_name => $property_name, folder => $folder, storage => $storage)

Delete document property.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPropertiesApi;
my $api_instance = AsposeCellsCloud::CellsPropertiesApi->new(
);

my $name = 'name_example'; # string | The document name.
my $property_name = 'property_name_example'; # string | The property name.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_properties_delete_document_property(name => $name, property_name => $property_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPropertiesApi->cells_properties_delete_document_property: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **property_name** | **string**| The property name. | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CellsDocumentPropertiesResponse**](CellsDocumentPropertiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_properties_get_document_properties**
> CellsDocumentPropertiesResponse cells_properties_get_document_properties(name => $name, folder => $folder, storage => $storage)

Read document properties.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPropertiesApi;
my $api_instance = AsposeCellsCloud::CellsPropertiesApi->new(
);

my $name = 'name_example'; # string | The document name.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_properties_get_document_properties(name => $name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPropertiesApi->cells_properties_get_document_properties: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CellsDocumentPropertiesResponse**](CellsDocumentPropertiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_properties_get_document_property**
> CellsDocumentPropertyResponse cells_properties_get_document_property(name => $name, property_name => $property_name, folder => $folder, storage => $storage)

Read document property by name.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPropertiesApi;
my $api_instance = AsposeCellsCloud::CellsPropertiesApi->new(
);

my $name = 'name_example'; # string | The document name.
my $property_name = 'property_name_example'; # string | The property name.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_properties_get_document_property(name => $name, property_name => $property_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPropertiesApi->cells_properties_get_document_property: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **property_name** | **string**| The property name. | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CellsDocumentPropertyResponse**](CellsDocumentPropertyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_properties_put_document_property**
> CellsDocumentPropertyResponse cells_properties_put_document_property(name => $name, property_name => $property_name, property => $property, folder => $folder, storage => $storage)

Set/create document property.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPropertiesApi;
my $api_instance = AsposeCellsCloud::CellsPropertiesApi->new(
);

my $name = 'name_example'; # string | The document name.
my $property_name = 'property_name_example'; # string | The property name.
my $property = AsposeCellsCloud::Object::CellsDocumentProperty->new(); # CellsDocumentProperty | with new property value.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_properties_put_document_property(name => $name, property_name => $property_name, property => $property, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPropertiesApi->cells_properties_put_document_property: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **property_name** | **string**| The property name. | 
 **property** | [**CellsDocumentProperty**](CellsDocumentProperty.md)| with new property value. | [optional] 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CellsDocumentPropertyResponse**](CellsDocumentPropertyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

