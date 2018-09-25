# AsposeCellsCloud::CellsRangesApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsRangesApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_ranges_get_worksheet_cells_range_value**](CellsRangesApi.md#cells_ranges_get_worksheet_cells_range_value) | **GET** /cells/{name}/worksheets/{sheetName}/ranges/value | Get cells list in a range by range name or row column indexes  
[**cells_ranges_post_worksheet_cells_range_column_width**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_column_width) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/columnWidth | Set column width of range
[**cells_ranges_post_worksheet_cells_range_merge**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_merge) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/merge | Combines a range of cells into a single cell.              
[**cells_ranges_post_worksheet_cells_range_move_to**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_move_to) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/moveto | Move the current range to the dest range.             
[**cells_ranges_post_worksheet_cells_range_outline_border**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_outline_border) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/outlineBorder | Sets outline border around a range of cells.
[**cells_ranges_post_worksheet_cells_range_row_height**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_row_height) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/rowHeight | set row height of range
[**cells_ranges_post_worksheet_cells_range_style**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_style) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/style | Sets the style of the range.             
[**cells_ranges_post_worksheet_cells_range_unmerge**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_unmerge) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/unmerge | Unmerges merged cells of this range.             
[**cells_ranges_post_worksheet_cells_range_value**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_value) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/value | Puts a value into the range, if appropriate the value will be converted to other data type and cell&#39;s number format will be reset.             
[**cells_ranges_post_worksheet_cells_ranges**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_ranges) | **POST** /cells/{name}/worksheets/{sheetName}/ranges | copy range in the worksheet


# **cells_ranges_get_worksheet_cells_range_value**
> RangeValueResponse cells_ranges_get_worksheet_cells_range_value(name => $name, sheet_name => $sheet_name, namerange => $namerange, first_row => $first_row, first_column => $first_column, row_count => $row_count, column_count => $column_count, folder => $folder, storage => $storage)

Get cells list in a range by range name or row column indexes  

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsRangesApi;
my $api_instance = AsposeCellsCloud::CellsRangesApi->new(
);

my $name = 'name_example'; # string | workbook name
my $sheet_name = 'sheet_name_example'; # string | worksheet name
my $namerange = 'namerange_example'; # string | range name, for example: 'A1:B2' or 'range_name1'
my $first_row = 56; # int | the first row of the range
my $first_column = 56; # int | the first column of the range
my $row_count = 56; # int | the count of rows in the range
my $column_count = 56; # int | the count of columns in the range
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ranges_get_worksheet_cells_range_value(name => $name, sheet_name => $sheet_name, namerange => $namerange, first_row => $first_row, first_column => $first_column, row_count => $row_count, column_count => $column_count, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsRangesApi->cells_ranges_get_worksheet_cells_range_value: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| workbook name | 
 **sheet_name** | **string**| worksheet name | 
 **namerange** | **string**| range name, for example: &#39;A1:B2&#39; or &#39;range_name1&#39; | [optional] 
 **first_row** | **int**| the first row of the range | [optional] 
 **first_column** | **int**| the first column of the range | [optional] 
 **row_count** | **int**| the count of rows in the range | [optional] 
 **column_count** | **int**| the count of columns in the range | [optional] 
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**RangeValueResponse**](RangeValueResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ranges_post_worksheet_cells_range_column_width**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_column_width(name => $name, sheet_name => $sheet_name, value => $value, range => $range, folder => $folder, storage => $storage)

Set column width of range

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsRangesApi;
my $api_instance = AsposeCellsCloud::CellsRangesApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $value = 1.2; # double | 
my $range = AsposeCellsCloud::Object::Range->new(); # Range | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ranges_post_worksheet_cells_range_column_width(name => $name, sheet_name => $sheet_name, value => $value, range => $range, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_column_width: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **value** | **double**|  | 
 **range** | [**Range**](Range.md)|  | [optional] 
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

# **cells_ranges_post_worksheet_cells_range_merge**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_merge(name => $name, sheet_name => $sheet_name, range => $range, folder => $folder, storage => $storage)

Combines a range of cells into a single cell.              

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsRangesApi;
my $api_instance = AsposeCellsCloud::CellsRangesApi->new(
);

my $name = 'name_example'; # string | workbook name
my $sheet_name = 'sheet_name_example'; # string | worksheet name
my $range = AsposeCellsCloud::Object::Range->new(); # Range | range in worksheet 
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ranges_post_worksheet_cells_range_merge(name => $name, sheet_name => $sheet_name, range => $range, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_merge: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| workbook name | 
 **sheet_name** | **string**| worksheet name | 
 **range** | [**Range**](Range.md)| range in worksheet  | [optional] 
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ranges_post_worksheet_cells_range_move_to**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_move_to(name => $name, sheet_name => $sheet_name, dest_row => $dest_row, dest_column => $dest_column, range => $range, folder => $folder, storage => $storage)

Move the current range to the dest range.             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsRangesApi;
my $api_instance = AsposeCellsCloud::CellsRangesApi->new(
);

my $name = 'name_example'; # string | workbook name
my $sheet_name = 'sheet_name_example'; # string | worksheet name
my $dest_row = 56; # int | The start row of the dest range.
my $dest_column = 56; # int | The start column of the dest range.
my $range = AsposeCellsCloud::Object::Range->new(); # Range | range in worksheet 
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ranges_post_worksheet_cells_range_move_to(name => $name, sheet_name => $sheet_name, dest_row => $dest_row, dest_column => $dest_column, range => $range, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_move_to: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| workbook name | 
 **sheet_name** | **string**| worksheet name | 
 **dest_row** | **int**| The start row of the dest range. | 
 **dest_column** | **int**| The start column of the dest range. | 
 **range** | [**Range**](Range.md)| range in worksheet  | [optional] 
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ranges_post_worksheet_cells_range_outline_border**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_outline_border(name => $name, sheet_name => $sheet_name, range_operate => $range_operate, folder => $folder, storage => $storage)

Sets outline border around a range of cells.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsRangesApi;
my $api_instance = AsposeCellsCloud::CellsRangesApi->new(
);

my $name = 'name_example'; # string | workbook name
my $sheet_name = 'sheet_name_example'; # string | worksheet name
my $range_operate = AsposeCellsCloud::Object::RangeSetOutlineBorderRequest->new(); # RangeSetOutlineBorderRequest | Range Set OutlineBorder Request 
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ranges_post_worksheet_cells_range_outline_border(name => $name, sheet_name => $sheet_name, range_operate => $range_operate, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_outline_border: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| workbook name | 
 **sheet_name** | **string**| worksheet name | 
 **range_operate** | [**RangeSetOutlineBorderRequest**](RangeSetOutlineBorderRequest.md)| Range Set OutlineBorder Request  | [optional] 
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ranges_post_worksheet_cells_range_row_height**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_row_height(name => $name, sheet_name => $sheet_name, value => $value, range => $range, folder => $folder, storage => $storage)

set row height of range

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsRangesApi;
my $api_instance = AsposeCellsCloud::CellsRangesApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $value = 1.2; # double | 
my $range = AsposeCellsCloud::Object::Range->new(); # Range | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ranges_post_worksheet_cells_range_row_height(name => $name, sheet_name => $sheet_name, value => $value, range => $range, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_row_height: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **value** | **double**|  | 
 **range** | [**Range**](Range.md)|  | [optional] 
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

# **cells_ranges_post_worksheet_cells_range_style**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_style(name => $name, sheet_name => $sheet_name, range_operate => $range_operate, folder => $folder, storage => $storage)

Sets the style of the range.             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsRangesApi;
my $api_instance = AsposeCellsCloud::CellsRangesApi->new(
);

my $name = 'name_example'; # string | workbook name
my $sheet_name = 'sheet_name_example'; # string | worksheet name
my $range_operate = AsposeCellsCloud::Object::RangeSetStyleRequest->new(); # RangeSetStyleRequest | Range Set Style Request 
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ranges_post_worksheet_cells_range_style(name => $name, sheet_name => $sheet_name, range_operate => $range_operate, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_style: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| workbook name | 
 **sheet_name** | **string**| worksheet name | 
 **range_operate** | [**RangeSetStyleRequest**](RangeSetStyleRequest.md)| Range Set Style Request  | [optional] 
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ranges_post_worksheet_cells_range_unmerge**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_unmerge(name => $name, sheet_name => $sheet_name, range => $range, folder => $folder, storage => $storage)

Unmerges merged cells of this range.             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsRangesApi;
my $api_instance = AsposeCellsCloud::CellsRangesApi->new(
);

my $name = 'name_example'; # string | workbook name
my $sheet_name = 'sheet_name_example'; # string | worksheet name
my $range = AsposeCellsCloud::Object::Range->new(); # Range | range in worksheet 
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ranges_post_worksheet_cells_range_unmerge(name => $name, sheet_name => $sheet_name, range => $range, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_unmerge: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| workbook name | 
 **sheet_name** | **string**| worksheet name | 
 **range** | [**Range**](Range.md)| range in worksheet  | [optional] 
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ranges_post_worksheet_cells_range_value**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_value(name => $name, sheet_name => $sheet_name, value => $value, range => $range, is_converted => $is_converted, set_style => $set_style, folder => $folder, storage => $storage)

Puts a value into the range, if appropriate the value will be converted to other data type and cell's number format will be reset.             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsRangesApi;
my $api_instance = AsposeCellsCloud::CellsRangesApi->new(
);

my $name = 'name_example'; # string | workbook name
my $sheet_name = 'sheet_name_example'; # string | worksheet name
my $value = 'value_example'; # string | Input value
my $range = AsposeCellsCloud::Object::Range->new(); # Range | range in worksheet 
my $is_converted = 1; # boolean | True: converted to other data type if appropriate.
my $set_style = 1; # boolean | True: set the number format to cell's style when converting to other data type
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ranges_post_worksheet_cells_range_value(name => $name, sheet_name => $sheet_name, value => $value, range => $range, is_converted => $is_converted, set_style => $set_style, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_value: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| workbook name | 
 **sheet_name** | **string**| worksheet name | 
 **value** | **string**| Input value | 
 **range** | [**Range**](Range.md)| range in worksheet  | [optional] 
 **is_converted** | **boolean**| True: converted to other data type if appropriate. | [optional] [default to false]
 **set_style** | **boolean**| True: set the number format to cell&#39;s style when converting to other data type | [optional] [default to false]
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_ranges_post_worksheet_cells_ranges**
> SaaSposeResponse cells_ranges_post_worksheet_cells_ranges(name => $name, sheet_name => $sheet_name, range_operate => $range_operate, folder => $folder, storage => $storage)

copy range in the worksheet

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsRangesApi;
my $api_instance = AsposeCellsCloud::CellsRangesApi->new(
);

my $name = 'name_example'; # string | workbook name
my $sheet_name = 'sheet_name_example'; # string | worksheet name
my $range_operate = AsposeCellsCloud::Object::RangeCopyRequest->new(); # RangeCopyRequest | copydata,copystyle,copyto,copyvalue
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_ranges_post_worksheet_cells_ranges(name => $name, sheet_name => $sheet_name, range_operate => $range_operate, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_ranges: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| workbook name | 
 **sheet_name** | **string**| worksheet name | 
 **range_operate** | [**RangeCopyRequest**](RangeCopyRequest.md)| copydata,copystyle,copyto,copyvalue | [optional] 
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

