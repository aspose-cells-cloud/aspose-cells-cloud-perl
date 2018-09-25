# AsposeCellsCloud::CellsShapesApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsShapesApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_shapes_delete_worksheet_shape**](CellsShapesApi.md#cells_shapes_delete_worksheet_shape) | **DELETE** /cells/{name}/worksheets/{sheetName}/shapes/{shapeindex} | Delete a shape in worksheet
[**cells_shapes_delete_worksheet_shapes**](CellsShapesApi.md#cells_shapes_delete_worksheet_shapes) | **DELETE** /cells/{name}/worksheets/{sheetName}/shapes | delete all shapes in worksheet
[**cells_shapes_get_worksheet_shape**](CellsShapesApi.md#cells_shapes_get_worksheet_shape) | **GET** /cells/{name}/worksheets/{sheetName}/shapes/{shapeindex} | Get worksheet shape
[**cells_shapes_get_worksheet_shapes**](CellsShapesApi.md#cells_shapes_get_worksheet_shapes) | **GET** /cells/{name}/worksheets/{sheetName}/shapes | Get worksheet shapes 
[**cells_shapes_post_worksheet_shape**](CellsShapesApi.md#cells_shapes_post_worksheet_shape) | **POST** /cells/{name}/worksheets/{sheetName}/shapes/{shapeindex} | Update a shape in worksheet
[**cells_shapes_put_worksheet_shape**](CellsShapesApi.md#cells_shapes_put_worksheet_shape) | **PUT** /cells/{name}/worksheets/{sheetName}/shapes | Add shape in worksheet


# **cells_shapes_delete_worksheet_shape**
> SaaSposeResponse cells_shapes_delete_worksheet_shape(name => $name, sheet_name => $sheet_name, shapeindex => $shapeindex, folder => $folder, storage => $storage)

Delete a shape in worksheet

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsShapesApi;
my $api_instance = AsposeCellsCloud::CellsShapesApi->new(
);

my $name = 'name_example'; # string | document name.
my $sheet_name = 'sheet_name_example'; # string | worksheet name.
my $shapeindex = 56; # int | shape index in worksheet shapes.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_shapes_delete_worksheet_shape(name => $name, sheet_name => $sheet_name, shapeindex => $shapeindex, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsShapesApi->cells_shapes_delete_worksheet_shape: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| document name. | 
 **sheet_name** | **string**| worksheet name. | 
 **shapeindex** | **int**| shape index in worksheet shapes. | 
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

# **cells_shapes_delete_worksheet_shapes**
> SaaSposeResponse cells_shapes_delete_worksheet_shapes(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

delete all shapes in worksheet

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsShapesApi;
my $api_instance = AsposeCellsCloud::CellsShapesApi->new(
);

my $name = 'name_example'; # string | document name.
my $sheet_name = 'sheet_name_example'; # string | worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_shapes_delete_worksheet_shapes(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsShapesApi->cells_shapes_delete_worksheet_shapes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| document name. | 
 **sheet_name** | **string**| worksheet name. | 
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

# **cells_shapes_get_worksheet_shape**
> ShapeResponse cells_shapes_get_worksheet_shape(name => $name, sheet_name => $sheet_name, shapeindex => $shapeindex, folder => $folder, storage => $storage)

Get worksheet shape

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsShapesApi;
my $api_instance = AsposeCellsCloud::CellsShapesApi->new(
);

my $name = 'name_example'; # string | document name.
my $sheet_name = 'sheet_name_example'; # string | worksheet name.
my $shapeindex = 56; # int | shape index in worksheet shapes.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_shapes_get_worksheet_shape(name => $name, sheet_name => $sheet_name, shapeindex => $shapeindex, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsShapesApi->cells_shapes_get_worksheet_shape: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| document name. | 
 **sheet_name** | **string**| worksheet name. | 
 **shapeindex** | **int**| shape index in worksheet shapes. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ShapeResponse**](ShapeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_shapes_get_worksheet_shapes**
> ShapesResponse cells_shapes_get_worksheet_shapes(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet shapes 

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsShapesApi;
my $api_instance = AsposeCellsCloud::CellsShapesApi->new(
);

my $name = 'name_example'; # string | document name.
my $sheet_name = 'sheet_name_example'; # string | worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_shapes_get_worksheet_shapes(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsShapesApi->cells_shapes_get_worksheet_shapes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| document name. | 
 **sheet_name** | **string**| worksheet name. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ShapesResponse**](ShapesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_shapes_post_worksheet_shape**
> SaaSposeResponse cells_shapes_post_worksheet_shape(name => $name, sheet_name => $sheet_name, shapeindex => $shapeindex, dto => $dto, folder => $folder, storage => $storage)

Update a shape in worksheet

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsShapesApi;
my $api_instance = AsposeCellsCloud::CellsShapesApi->new(
);

my $name = 'name_example'; # string | document name.
my $sheet_name = 'sheet_name_example'; # string | worksheet name.
my $shapeindex = 56; # int | shape index in worksheet shapes.
my $dto = AsposeCellsCloud::Object::Shape->new(); # Shape | 
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_shapes_post_worksheet_shape(name => $name, sheet_name => $sheet_name, shapeindex => $shapeindex, dto => $dto, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsShapesApi->cells_shapes_post_worksheet_shape: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| document name. | 
 **sheet_name** | **string**| worksheet name. | 
 **shapeindex** | **int**| shape index in worksheet shapes. | 
 **dto** | [**Shape**](Shape.md)|  | [optional] 
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

# **cells_shapes_put_worksheet_shape**
> ShapeResponse cells_shapes_put_worksheet_shape(name => $name, sheet_name => $sheet_name, drawing_type => $drawing_type, upper_left_row => $upper_left_row, upper_left_column => $upper_left_column, top => $top, left => $left, width => $width, height => $height, folder => $folder, storage => $storage)

Add shape in worksheet

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsShapesApi;
my $api_instance = AsposeCellsCloud::CellsShapesApi->new(
);

my $name = 'name_example'; # string | document name.
my $sheet_name = 'sheet_name_example'; # string | worksheet name.
my $drawing_type = 'drawing_type_example'; # string | shape object type
my $upper_left_row = 56; # int | Upper left row index.
my $upper_left_column = 56; # int | Upper left column index.
my $top = 56; # int | Represents the vertical offset of Spinner from its left row, in unit of pixel.
my $left = 56; # int | Represents the horizontal offset of Spinner from its left column, in unit of pixel.
my $width = 56; # int | Represents the height of Spinner, in unit of pixel.
my $height = 56; # int | Represents the width of Spinner, in unit of pixel.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_shapes_put_worksheet_shape(name => $name, sheet_name => $sheet_name, drawing_type => $drawing_type, upper_left_row => $upper_left_row, upper_left_column => $upper_left_column, top => $top, left => $left, width => $width, height => $height, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsShapesApi->cells_shapes_put_worksheet_shape: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| document name. | 
 **sheet_name** | **string**| worksheet name. | 
 **drawing_type** | **string**| shape object type | 
 **upper_left_row** | **int**| Upper left row index. | 
 **upper_left_column** | **int**| Upper left column index. | 
 **top** | **int**| Represents the vertical offset of Spinner from its left row, in unit of pixel. | 
 **left** | **int**| Represents the horizontal offset of Spinner from its left column, in unit of pixel. | 
 **width** | **int**| Represents the height of Spinner, in unit of pixel. | 
 **height** | **int**| Represents the width of Spinner, in unit of pixel. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ShapeResponse**](ShapeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

