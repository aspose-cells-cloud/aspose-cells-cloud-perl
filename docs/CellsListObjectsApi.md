# AsposeCellsCloud::CellsListObjectsApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsListObjectsApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_list_objects_delete_worksheet_list_object**](CellsListObjectsApi.md#cells_list_objects_delete_worksheet_list_object) | **DELETE** /cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex} | Delete worksheet list object by index
[**cells_list_objects_delete_worksheet_list_objects**](CellsListObjectsApi.md#cells_list_objects_delete_worksheet_list_objects) | **DELETE** /cells/{name}/worksheets/{sheetName}/listobjects | Delete worksheet list objects
[**cells_list_objects_get_worksheet_list_object**](CellsListObjectsApi.md#cells_list_objects_get_worksheet_list_object) | **GET** /cells/{name}/worksheets/{sheetName}/listobjects/{listobjectindex} | Get worksheet list object info by index.
[**cells_list_objects_get_worksheet_list_objects**](CellsListObjectsApi.md#cells_list_objects_get_worksheet_list_objects) | **GET** /cells/{name}/worksheets/{sheetName}/listobjects | Get worksheet listobjects info.
[**cells_list_objects_post_worksheet_list_object**](CellsListObjectsApi.md#cells_list_objects_post_worksheet_list_object) | **POST** /cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex} | Update  list object 
[**cells_list_objects_post_worksheet_list_object_convert_to_range**](CellsListObjectsApi.md#cells_list_objects_post_worksheet_list_object_convert_to_range) | **POST** /cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}/ConvertToRange | 
[**cells_list_objects_post_worksheet_list_object_sort_table**](CellsListObjectsApi.md#cells_list_objects_post_worksheet_list_object_sort_table) | **POST** /cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}/sort | 
[**cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table**](CellsListObjectsApi.md#cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table) | **POST** /cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}/SummarizeWithPivotTable | 
[**cells_list_objects_put_worksheet_list_object**](CellsListObjectsApi.md#cells_list_objects_put_worksheet_list_object) | **PUT** /cells/{name}/worksheets/{sheetName}/listobjects | Add a list object into worksheet.


# **cells_list_objects_delete_worksheet_list_object**
> SaaSposeResponse cells_list_objects_delete_worksheet_list_object(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, folder => $folder, storage => $storage)

Delete worksheet list object by index

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsListObjectsApi;
my $api_instance = AsposeCellsCloud::CellsListObjectsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $list_object_index = 56; # int | List object index
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_list_objects_delete_worksheet_list_object(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsListObjectsApi->cells_list_objects_delete_worksheet_list_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **list_object_index** | **int**| List object index | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_list_objects_delete_worksheet_list_objects**
> SaaSposeResponse cells_list_objects_delete_worksheet_list_objects(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Delete worksheet list objects

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsListObjectsApi;
my $api_instance = AsposeCellsCloud::CellsListObjectsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_list_objects_delete_worksheet_list_objects(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsListObjectsApi->cells_list_objects_delete_worksheet_list_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_list_objects_get_worksheet_list_object**
> ListObjectResponse cells_list_objects_get_worksheet_list_object(name => $name, sheet_name => $sheet_name, listobjectindex => $listobjectindex, folder => $folder, storage => $storage)

Get worksheet list object info by index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsListObjectsApi;
my $api_instance = AsposeCellsCloud::CellsListObjectsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $listobjectindex = 56; # int | list object index.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_list_objects_get_worksheet_list_object(name => $name, sheet_name => $sheet_name, listobjectindex => $listobjectindex, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsListObjectsApi->cells_list_objects_get_worksheet_list_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **listobjectindex** | **int**| list object index. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ListObjectResponse**](ListObjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_list_objects_get_worksheet_list_objects**
> ListObjectsResponse cells_list_objects_get_worksheet_list_objects(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet listobjects info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsListObjectsApi;
my $api_instance = AsposeCellsCloud::CellsListObjectsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_list_objects_get_worksheet_list_objects(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsListObjectsApi->cells_list_objects_get_worksheet_list_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ListObjectsResponse**](ListObjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_list_objects_post_worksheet_list_object**
> SaaSposeResponse cells_list_objects_post_worksheet_list_object(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, list_object => $list_object, folder => $folder, storage => $storage)

Update  list object 

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsListObjectsApi;
my $api_instance = AsposeCellsCloud::CellsListObjectsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $list_object_index = 56; # int | list Object index
my $list_object = AsposeCellsCloud::Object::ListObject->new(); # ListObject | listObject dto in request body.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_list_objects_post_worksheet_list_object(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, list_object => $list_object, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsListObjectsApi->cells_list_objects_post_worksheet_list_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **list_object_index** | **int**| list Object index | 
 **list_object** | [**ListObject**](ListObject.md)| listObject dto in request body. | [optional] 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_list_objects_post_worksheet_list_object_convert_to_range**
> SaaSposeResponse cells_list_objects_post_worksheet_list_object_convert_to_range(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsListObjectsApi;
my $api_instance = AsposeCellsCloud::CellsListObjectsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $list_object_index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_list_objects_post_worksheet_list_object_convert_to_range(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsListObjectsApi->cells_list_objects_post_worksheet_list_object_convert_to_range: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **list_object_index** | **int**|  | 
 **folder** | **string**|  | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_list_objects_post_worksheet_list_object_sort_table**
> SaaSposeResponse cells_list_objects_post_worksheet_list_object_sort_table(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, data_sorter => $data_sorter, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsListObjectsApi;
my $api_instance = AsposeCellsCloud::CellsListObjectsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $list_object_index = 56; # int | 
my $data_sorter = AsposeCellsCloud::Object::DataSorter->new(); # DataSorter | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_list_objects_post_worksheet_list_object_sort_table(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, data_sorter => $data_sorter, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsListObjectsApi->cells_list_objects_post_worksheet_list_object_sort_table: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **list_object_index** | **int**|  | 
 **data_sorter** | [**DataSorter**](DataSorter.md)|  | [optional] 
 **folder** | **string**|  | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table**
> SaaSposeResponse cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, destsheet_name => $destsheet_name, request => $request, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsListObjectsApi;
my $api_instance = AsposeCellsCloud::CellsListObjectsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $list_object_index = 56; # int | 
my $destsheet_name = 'destsheet_name_example'; # string | 
my $request = AsposeCellsCloud::Object::CreatePivotTableRequest->new(); # CreatePivotTableRequest | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, destsheet_name => $destsheet_name, request => $request, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsListObjectsApi->cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **list_object_index** | **int**|  | 
 **destsheet_name** | **string**|  | 
 **request** | [**CreatePivotTableRequest**](CreatePivotTableRequest.md)|  | [optional] 
 **folder** | **string**|  | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_list_objects_put_worksheet_list_object**
> ListObjectResponse cells_list_objects_put_worksheet_list_object(name => $name, sheet_name => $sheet_name, start_row => $start_row, start_column => $start_column, end_row => $end_row, end_column => $end_column, folder => $folder, storage => $storage, has_headers => $has_headers)

Add a list object into worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsListObjectsApi;
my $api_instance = AsposeCellsCloud::CellsListObjectsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $start_row = 56; # int | The start row of the list range.
my $start_column = 56; # int | The start row of the list range.
my $end_row = 56; # int | The start row of the list range.
my $end_column = 56; # int | The start row of the list range.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.
my $has_headers = 1; # boolean | Whether the range has headers.

eval { 
    my $result = $api_instance->cells_list_objects_put_worksheet_list_object(name => $name, sheet_name => $sheet_name, start_row => $start_row, start_column => $start_column, end_row => $end_row, end_column => $end_column, folder => $folder, storage => $storage, has_headers => $has_headers);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsListObjectsApi->cells_list_objects_put_worksheet_list_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **start_row** | **int**| The start row of the list range. | 
 **start_column** | **int**| The start row of the list range. | 
 **end_row** | **int**| The start row of the list range. | 
 **end_column** | **int**| The start row of the list range. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 
 **has_headers** | **boolean**| Whether the range has headers. | [optional] [default to true]

### Return type

[**ListObjectResponse**](ListObjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

