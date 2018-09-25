# AsposeCellsCloud::CellsWorksheetValidationsApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsWorksheetValidationsApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_worksheet_validations_delete_worksheet_validation**](CellsWorksheetValidationsApi.md#cells_worksheet_validations_delete_worksheet_validation) | **DELETE** /cells/{name}/worksheets/{sheetName}/validations/{validationIndex} | Delete worksheet validation by index.
[**cells_worksheet_validations_get_worksheet_validation**](CellsWorksheetValidationsApi.md#cells_worksheet_validations_get_worksheet_validation) | **GET** /cells/{name}/worksheets/{sheetName}/validations/{validationIndex} | Get worksheet validation by index.
[**cells_worksheet_validations_get_worksheet_validations**](CellsWorksheetValidationsApi.md#cells_worksheet_validations_get_worksheet_validations) | **GET** /cells/{name}/worksheets/{sheetName}/validations | Get worksheet validations.
[**cells_worksheet_validations_post_worksheet_validation**](CellsWorksheetValidationsApi.md#cells_worksheet_validations_post_worksheet_validation) | **POST** /cells/{name}/worksheets/{sheetName}/validations/{validationIndex} | Update worksheet validation by index.
[**cells_worksheet_validations_put_worksheet_validation**](CellsWorksheetValidationsApi.md#cells_worksheet_validations_put_worksheet_validation) | **PUT** /cells/{name}/worksheets/{sheetName}/validations | Add worksheet validation at index.


# **cells_worksheet_validations_delete_worksheet_validation**
> ValidationResponse cells_worksheet_validations_delete_worksheet_validation(name => $name, sheet_name => $sheet_name, validation_index => $validation_index, folder => $folder, storage => $storage)

Delete worksheet validation by index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetValidationsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetValidationsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $validation_index = 56; # int | The validation index.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheet_validations_delete_worksheet_validation(name => $name, sheet_name => $sheet_name, validation_index => $validation_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetValidationsApi->cells_worksheet_validations_delete_worksheet_validation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **validation_index** | **int**| The validation index. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheet_validations_get_worksheet_validation**
> ValidationResponse cells_worksheet_validations_get_worksheet_validation(name => $name, sheet_name => $sheet_name, validation_index => $validation_index, folder => $folder, storage => $storage)

Get worksheet validation by index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetValidationsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetValidationsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $validation_index = 56; # int | The validation index.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheet_validations_get_worksheet_validation(name => $name, sheet_name => $sheet_name, validation_index => $validation_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetValidationsApi->cells_worksheet_validations_get_worksheet_validation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **validation_index** | **int**| The validation index. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheet_validations_get_worksheet_validations**
> ValidationsResponse cells_worksheet_validations_get_worksheet_validations(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet validations.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetValidationsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetValidationsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $folder = 'folder_example'; # string | Document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheet_validations_get_worksheet_validations(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetValidationsApi->cells_worksheet_validations_get_worksheet_validations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **folder** | **string**| Document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ValidationsResponse**](ValidationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheet_validations_post_worksheet_validation**
> ValidationResponse cells_worksheet_validations_post_worksheet_validation(name => $name, sheet_name => $sheet_name, validation_index => $validation_index, validation => $validation, folder => $folder, storage => $storage)

Update worksheet validation by index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetValidationsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetValidationsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $validation_index = 56; # int | The validation index.
my $validation = AsposeCellsCloud::Object::Validation->new(); # Validation | 
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheet_validations_post_worksheet_validation(name => $name, sheet_name => $sheet_name, validation_index => $validation_index, validation => $validation, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetValidationsApi->cells_worksheet_validations_post_worksheet_validation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **validation_index** | **int**| The validation index. | 
 **validation** | [**Validation**](Validation.md)|  | [optional] 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheet_validations_put_worksheet_validation**
> ValidationResponse cells_worksheet_validations_put_worksheet_validation(name => $name, sheet_name => $sheet_name, range => $range, folder => $folder, storage => $storage)

Add worksheet validation at index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetValidationsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetValidationsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $range = 'range_example'; # string | Specified cells area
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheet_validations_put_worksheet_validation(name => $name, sheet_name => $sheet_name, range => $range, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetValidationsApi->cells_worksheet_validations_put_worksheet_validation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **range** | **string**| Specified cells area | [optional] 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

