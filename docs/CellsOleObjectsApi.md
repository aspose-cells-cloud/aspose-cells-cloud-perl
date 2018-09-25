# AsposeCellsCloud::CellsOleObjectsApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsOleObjectsApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_ole_objects_delete_worksheet_ole_object**](CellsOleObjectsApi.md#cells_ole_objects_delete_worksheet_ole_object) | **DELETE** /cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex} | Delete OLE object.
[**cells_ole_objects_delete_worksheet_ole_objects**](CellsOleObjectsApi.md#cells_ole_objects_delete_worksheet_ole_objects) | **DELETE** /cells/{name}/worksheets/{sheetName}/oleobjects | Delete all OLE objects.
[**cells_ole_objects_get_worksheet_ole_object**](CellsOleObjectsApi.md#cells_ole_objects_get_worksheet_ole_object) | **GET** /cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber} | Get OLE object info.
[**cells_ole_objects_get_worksheet_ole_objects**](CellsOleObjectsApi.md#cells_ole_objects_get_worksheet_ole_objects) | **GET** /cells/{name}/worksheets/{sheetName}/oleobjects | Get worksheet OLE objects info.
[**cells_ole_objects_post_update_worksheet_ole_object**](CellsOleObjectsApi.md#cells_ole_objects_post_update_worksheet_ole_object) | **POST** /cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex} | Update OLE object.
[**cells_ole_objects_put_worksheet_ole_object**](CellsOleObjectsApi.md#cells_ole_objects_put_worksheet_ole_object) | **PUT** /cells/{name}/worksheets/{sheetName}/oleobjects | Add OLE object


# **cells_ole_objects_delete_worksheet_ole_object**
> SaaSposeResponse cells_ole_objects_delete_worksheet_ole_object(name => $name, sheet_name => $sheet_name, ole_object_index => $ole_object_index, folder => $folder, storage => $storage)

Delete OLE object.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsOleObjectsApi;
my $api_instance = AsposeCellsCloud::CellsOleObjectsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worsheet name.
my $ole_object_index = 56; # int | Ole object index
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ole_objects_delete_worksheet_ole_object(name => $name, sheet_name => $sheet_name, ole_object_index => $ole_object_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsOleObjectsApi->cells_ole_objects_delete_worksheet_ole_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worsheet name. | 
 **ole_object_index** | **int**| Ole object index | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ole_objects_delete_worksheet_ole_objects**
> SaaSposeResponse cells_ole_objects_delete_worksheet_ole_objects(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Delete all OLE objects.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsOleObjectsApi;
my $api_instance = AsposeCellsCloud::CellsOleObjectsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worsheet name.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ole_objects_delete_worksheet_ole_objects(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsOleObjectsApi->cells_ole_objects_delete_worksheet_ole_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worsheet name. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ole_objects_get_worksheet_ole_object**
> string cells_ole_objects_get_worksheet_ole_object(name => $name, sheet_name => $sheet_name, object_number => $object_number, format => $format, folder => $folder, storage => $storage)

Get OLE object info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsOleObjectsApi;
my $api_instance = AsposeCellsCloud::CellsOleObjectsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $object_number = 56; # int | The object number.
my $format = 'format_example'; # string | The exported object format.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ole_objects_get_worksheet_ole_object(name => $name, sheet_name => $sheet_name, object_number => $object_number, format => $format, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsOleObjectsApi->cells_ole_objects_get_worksheet_ole_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **object_number** | **int**| The object number. | 
 **format** | **string**| The exported object format. | [optional] 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ole_objects_get_worksheet_ole_objects**
> OleObjectsResponse cells_ole_objects_get_worksheet_ole_objects(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet OLE objects info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsOleObjectsApi;
my $api_instance = AsposeCellsCloud::CellsOleObjectsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ole_objects_get_worksheet_ole_objects(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsOleObjectsApi->cells_ole_objects_get_worksheet_ole_objects: $@\n";
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

[**OleObjectsResponse**](OleObjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ole_objects_post_update_worksheet_ole_object**
> SaaSposeResponse cells_ole_objects_post_update_worksheet_ole_object(name => $name, sheet_name => $sheet_name, ole_object_index => $ole_object_index, ole => $ole, folder => $folder, storage => $storage)

Update OLE object.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsOleObjectsApi;
my $api_instance = AsposeCellsCloud::CellsOleObjectsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worsheet name.
my $ole_object_index = 56; # int | Ole object index
my $ole = AsposeCellsCloud::Object::OleObject->new(); # OleObject | Ole Object
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ole_objects_post_update_worksheet_ole_object(name => $name, sheet_name => $sheet_name, ole_object_index => $ole_object_index, ole => $ole, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsOleObjectsApi->cells_ole_objects_post_update_worksheet_ole_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worsheet name. | 
 **ole_object_index** | **int**| Ole object index | 
 **ole** | [**OleObject**](OleObject.md)| Ole Object | [optional] 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ole_objects_put_worksheet_ole_object**
> OleObjectResponse cells_ole_objects_put_worksheet_ole_object(name => $name, sheet_name => $sheet_name, ole_object => $ole_object, upper_left_row => $upper_left_row, upper_left_column => $upper_left_column, height => $height, width => $width, ole_file => $ole_file, image_file => $image_file, folder => $folder, storage => $storage)

Add OLE object

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsOleObjectsApi;
my $api_instance = AsposeCellsCloud::CellsOleObjectsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worsheet name.
my $ole_object = AsposeCellsCloud::Object::OleObject->new(); # OleObject | Ole Object
my $upper_left_row = 56; # int | Upper left row index
my $upper_left_column = 56; # int | Upper left column index
my $height = 56; # int | Height of oleObject, in unit of pixel
my $width = 56; # int | Width of oleObject, in unit of pixel
my $ole_file = 'ole_file_example'; # string | OLE filename
my $image_file = 'image_file_example'; # string | Image filename
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ole_objects_put_worksheet_ole_object(name => $name, sheet_name => $sheet_name, ole_object => $ole_object, upper_left_row => $upper_left_row, upper_left_column => $upper_left_column, height => $height, width => $width, ole_file => $ole_file, image_file => $image_file, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsOleObjectsApi->cells_ole_objects_put_worksheet_ole_object: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worsheet name. | 
 **ole_object** | [**OleObject**](OleObject.md)| Ole Object | [optional] 
 **upper_left_row** | **int**| Upper left row index | [optional] [default to 0]
 **upper_left_column** | **int**| Upper left column index | [optional] [default to 0]
 **height** | **int**| Height of oleObject, in unit of pixel | [optional] [default to 0]
 **width** | **int**| Width of oleObject, in unit of pixel | [optional] [default to 0]
 **ole_file** | **string**| OLE filename | [optional] 
 **image_file** | **string**| Image filename | [optional] 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**OleObjectResponse**](OleObjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

