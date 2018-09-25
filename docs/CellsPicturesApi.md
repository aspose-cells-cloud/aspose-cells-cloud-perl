# AsposeCellsCloud::CellsPicturesApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsPicturesApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_pictures_delete_worksheet_picture**](CellsPicturesApi.md#cells_pictures_delete_worksheet_picture) | **DELETE** /cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex} | Delete a picture object in worksheet
[**cells_pictures_delete_worksheet_pictures**](CellsPicturesApi.md#cells_pictures_delete_worksheet_pictures) | **DELETE** /cells/{name}/worksheets/{sheetName}/pictures | Delete all pictures in worksheet.
[**cells_pictures_get_worksheet_picture**](CellsPicturesApi.md#cells_pictures_get_worksheet_picture) | **GET** /cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex} | GRead worksheet picture by number.
[**cells_pictures_get_worksheet_pictures**](CellsPicturesApi.md#cells_pictures_get_worksheet_pictures) | **GET** /cells/{name}/worksheets/{sheetName}/pictures | Read worksheet pictures.
[**cells_pictures_post_worksheet_picture**](CellsPicturesApi.md#cells_pictures_post_worksheet_picture) | **POST** /cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex} | Update worksheet picture by index.
[**cells_pictures_put_worksheet_add_picture**](CellsPicturesApi.md#cells_pictures_put_worksheet_add_picture) | **PUT** /cells/{name}/worksheets/{sheetName}/pictures | Add a new worksheet picture.


# **cells_pictures_delete_worksheet_picture**
> SaaSposeResponse cells_pictures_delete_worksheet_picture(name => $name, sheet_name => $sheet_name, picture_index => $picture_index, folder => $folder, storage => $storage)

Delete a picture object in worksheet

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPicturesApi;
my $api_instance = AsposeCellsCloud::CellsPicturesApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worsheet name.
my $picture_index = 56; # int | Picture index
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pictures_delete_worksheet_picture(name => $name, sheet_name => $sheet_name, picture_index => $picture_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPicturesApi->cells_pictures_delete_worksheet_picture: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worsheet name. | 
 **picture_index** | **int**| Picture index | 
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

# **cells_pictures_delete_worksheet_pictures**
> SaaSposeResponse cells_pictures_delete_worksheet_pictures(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Delete all pictures in worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPicturesApi;
my $api_instance = AsposeCellsCloud::CellsPicturesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pictures_delete_worksheet_pictures(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPicturesApi->cells_pictures_delete_worksheet_pictures: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_pictures_get_worksheet_picture**
> string cells_pictures_get_worksheet_picture(name => $name, sheet_name => $sheet_name, picture_index => $picture_index, format => $format, folder => $folder, storage => $storage)

GRead worksheet picture by number.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPicturesApi;
my $api_instance = AsposeCellsCloud::CellsPicturesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $picture_index = 56; # int | The picture index.
my $format = 'format_example'; # string | The exported object format.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pictures_get_worksheet_picture(name => $name, sheet_name => $sheet_name, picture_index => $picture_index, format => $format, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPicturesApi->cells_pictures_get_worksheet_picture: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **picture_index** | **int**| The picture index. | 
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

# **cells_pictures_get_worksheet_pictures**
> PicturesResponse cells_pictures_get_worksheet_pictures(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Read worksheet pictures.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPicturesApi;
my $api_instance = AsposeCellsCloud::CellsPicturesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pictures_get_worksheet_pictures(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPicturesApi->cells_pictures_get_worksheet_pictures: $@\n";
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

[**PicturesResponse**](PicturesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_pictures_post_worksheet_picture**
> PictureResponse cells_pictures_post_worksheet_picture(name => $name, sheet_name => $sheet_name, picture_index => $picture_index, picture => $picture, folder => $folder, storage => $storage)

Update worksheet picture by index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPicturesApi;
my $api_instance = AsposeCellsCloud::CellsPicturesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $picture_index = 56; # int | The picture's index.
my $picture = AsposeCellsCloud::Object::Picture->new(); # Picture | Picture object
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pictures_post_worksheet_picture(name => $name, sheet_name => $sheet_name, picture_index => $picture_index, picture => $picture, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPicturesApi->cells_pictures_post_worksheet_picture: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **picture_index** | **int**| The picture&#39;s index. | 
 **picture** | [**Picture**](Picture.md)| Picture object | [optional] 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**PictureResponse**](PictureResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_pictures_put_worksheet_add_picture**
> PicturesResponse cells_pictures_put_worksheet_add_picture(name => $name, sheet_name => $sheet_name, picture => $picture, upper_left_row => $upper_left_row, upper_left_column => $upper_left_column, lower_right_row => $lower_right_row, lower_right_column => $lower_right_column, picture_path => $picture_path, folder => $folder, storage => $storage)

Add a new worksheet picture.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPicturesApi;
my $api_instance = AsposeCellsCloud::CellsPicturesApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worsheet name.
my $picture = AsposeCellsCloud::Object::Picture->new(); # Picture | Pictute object
my $upper_left_row = 56; # int | The image upper left row.
my $upper_left_column = 56; # int | The image upper left column.
my $lower_right_row = 56; # int | The image low right row.
my $lower_right_column = 56; # int | The image low right column.
my $picture_path = 'picture_path_example'; # string | The picture path, if not provided the picture data is inspected in the request body.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pictures_put_worksheet_add_picture(name => $name, sheet_name => $sheet_name, picture => $picture, upper_left_row => $upper_left_row, upper_left_column => $upper_left_column, lower_right_row => $lower_right_row, lower_right_column => $lower_right_column, picture_path => $picture_path, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPicturesApi->cells_pictures_put_worksheet_add_picture: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worsheet name. | 
 **picture** | [**Picture**](Picture.md)| Pictute object | [optional] 
 **upper_left_row** | **int**| The image upper left row. | [optional] [default to 0]
 **upper_left_column** | **int**| The image upper left column. | [optional] [default to 0]
 **lower_right_row** | **int**| The image low right row. | [optional] [default to 0]
 **lower_right_column** | **int**| The image low right column. | [optional] [default to 0]
 **picture_path** | **string**| The picture path, if not provided the picture data is inspected in the request body. | [optional] 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**PicturesResponse**](PicturesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

