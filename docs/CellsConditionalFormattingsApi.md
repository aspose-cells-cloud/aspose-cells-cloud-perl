# AsposeCellsCloud::CellsConditionalFormattingsApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsConditionalFormattingsApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_conditional_formattings_delete_worksheet_conditional_formatting**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_delete_worksheet_conditional_formatting) | **DELETE** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index} | Remove conditional formatting
[**cells_conditional_formattings_delete_worksheet_conditional_formatting_area**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_delete_worksheet_conditional_formatting_area) | **DELETE** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/area | Remove cell area from conditional formatting.
[**cells_conditional_formattings_delete_worksheet_conditional_formattings**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_delete_worksheet_conditional_formattings) | **DELETE** /cells/{name}/worksheets/{sheetName}/conditionalFormattings | Clear all condition formattings
[**cells_conditional_formattings_get_worksheet_conditional_formatting**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_get_worksheet_conditional_formatting) | **GET** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index} | Get conditional formatting
[**cells_conditional_formattings_get_worksheet_conditional_formattings**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_get_worksheet_conditional_formattings) | **GET** /cells/{name}/worksheets/{sheetName}/conditionalFormattings | Get conditional formattings 
[**cells_conditional_formattings_put_worksheet_conditional_formatting**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_put_worksheet_conditional_formatting) | **PUT** /cells/{name}/worksheets/{sheetName}/conditionalFormattings | Add a condition formatting.
[**cells_conditional_formattings_put_worksheet_format_condition**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_put_worksheet_format_condition) | **PUT** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index} | Add a format condition.
[**cells_conditional_formattings_put_worksheet_format_condition_area**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_put_worksheet_format_condition_area) | **PUT** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index}/area | add a cell area for format condition             
[**cells_conditional_formattings_put_worksheet_format_condition_condition**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_put_worksheet_format_condition_condition) | **PUT** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index}/condition | Add a condition for format condition.


# **cells_conditional_formattings_delete_worksheet_conditional_formatting**
> SaaSposeResponse cells_conditional_formattings_delete_worksheet_conditional_formatting(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage)

Remove conditional formatting

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsConditionalFormattingsApi;
my $api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_conditional_formattings_delete_worksheet_conditional_formatting(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_delete_worksheet_conditional_formatting: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **index** | **int**|  | 
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

# **cells_conditional_formattings_delete_worksheet_conditional_formatting_area**
> SaaSposeResponse cells_conditional_formattings_delete_worksheet_conditional_formatting_area(name => $name, sheet_name => $sheet_name, start_row => $start_row, start_column => $start_column, total_rows => $total_rows, total_columns => $total_columns, folder => $folder, storage => $storage)

Remove cell area from conditional formatting.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsConditionalFormattingsApi;
my $api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $start_row = 56; # int | 
my $start_column = 56; # int | 
my $total_rows = 56; # int | 
my $total_columns = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_conditional_formattings_delete_worksheet_conditional_formatting_area(name => $name, sheet_name => $sheet_name, start_row => $start_row, start_column => $start_column, total_rows => $total_rows, total_columns => $total_columns, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_delete_worksheet_conditional_formatting_area: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **start_row** | **int**|  | 
 **start_column** | **int**|  | 
 **total_rows** | **int**|  | 
 **total_columns** | **int**|  | 
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

# **cells_conditional_formattings_delete_worksheet_conditional_formattings**
> SaaSposeResponse cells_conditional_formattings_delete_worksheet_conditional_formattings(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Clear all condition formattings

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsConditionalFormattingsApi;
my $api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_conditional_formattings_delete_worksheet_conditional_formattings(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_delete_worksheet_conditional_formattings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
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

# **cells_conditional_formattings_get_worksheet_conditional_formatting**
> ConditionalFormattingResponse cells_conditional_formattings_get_worksheet_conditional_formatting(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage)

Get conditional formatting

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsConditionalFormattingsApi;
my $api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_conditional_formattings_get_worksheet_conditional_formatting(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_get_worksheet_conditional_formatting: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **index** | **int**|  | 
 **folder** | **string**|  | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ConditionalFormattingResponse**](ConditionalFormattingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_conditional_formattings_get_worksheet_conditional_formattings**
> ConditionalFormattingsResponse cells_conditional_formattings_get_worksheet_conditional_formattings(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get conditional formattings 

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsConditionalFormattingsApi;
my $api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_conditional_formattings_get_worksheet_conditional_formattings(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_get_worksheet_conditional_formattings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **folder** | **string**|  | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ConditionalFormattingsResponse**](ConditionalFormattingsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_conditional_formattings_put_worksheet_conditional_formatting**
> SaaSposeResponse cells_conditional_formattings_put_worksheet_conditional_formatting(name => $name, sheet_name => $sheet_name, cell_area => $cell_area, formatcondition => $formatcondition, folder => $folder, storage => $storage)

Add a condition formatting.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsConditionalFormattingsApi;
my $api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $cell_area = 'cell_area_example'; # string | 
my $formatcondition = AsposeCellsCloud::Object::FormatCondition->new(); # FormatCondition | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_conditional_formattings_put_worksheet_conditional_formatting(name => $name, sheet_name => $sheet_name, cell_area => $cell_area, formatcondition => $formatcondition, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_put_worksheet_conditional_formatting: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **cell_area** | **string**|  | 
 **formatcondition** | [**FormatCondition**](FormatCondition.md)|  | [optional] 
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

# **cells_conditional_formattings_put_worksheet_format_condition**
> SaaSposeResponse cells_conditional_formattings_put_worksheet_format_condition(name => $name, sheet_name => $sheet_name, index => $index, cell_area => $cell_area, type => $type, operator_type => $operator_type, formula1 => $formula1, formula2 => $formula2, folder => $folder, storage => $storage)

Add a format condition.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsConditionalFormattingsApi;
my $api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $index = 56; # int | 
my $cell_area = 'cell_area_example'; # string | 
my $type = 'type_example'; # string | 
my $operator_type = 'operator_type_example'; # string | 
my $formula1 = 'formula1_example'; # string | 
my $formula2 = 'formula2_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_conditional_formattings_put_worksheet_format_condition(name => $name, sheet_name => $sheet_name, index => $index, cell_area => $cell_area, type => $type, operator_type => $operator_type, formula1 => $formula1, formula2 => $formula2, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_put_worksheet_format_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **index** | **int**|  | 
 **cell_area** | **string**|  | 
 **type** | **string**|  | 
 **operator_type** | **string**|  | 
 **formula1** | **string**|  | 
 **formula2** | **string**|  | 
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

# **cells_conditional_formattings_put_worksheet_format_condition_area**
> SaaSposeResponse cells_conditional_formattings_put_worksheet_format_condition_area(name => $name, sheet_name => $sheet_name, index => $index, cell_area => $cell_area, folder => $folder, storage => $storage)

add a cell area for format condition             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsConditionalFormattingsApi;
my $api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $index = 56; # int | 
my $cell_area = 'cell_area_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_conditional_formattings_put_worksheet_format_condition_area(name => $name, sheet_name => $sheet_name, index => $index, cell_area => $cell_area, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_put_worksheet_format_condition_area: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **index** | **int**|  | 
 **cell_area** | **string**|  | 
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

# **cells_conditional_formattings_put_worksheet_format_condition_condition**
> SaaSposeResponse cells_conditional_formattings_put_worksheet_format_condition_condition(name => $name, sheet_name => $sheet_name, index => $index, type => $type, operator_type => $operator_type, formula1 => $formula1, formula2 => $formula2, folder => $folder, storage => $storage)

Add a condition for format condition.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsConditionalFormattingsApi;
my $api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $index = 56; # int | 
my $type = 'type_example'; # string | 
my $operator_type = 'operator_type_example'; # string | 
my $formula1 = 'formula1_example'; # string | 
my $formula2 = 'formula2_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_conditional_formattings_put_worksheet_format_condition_condition(name => $name, sheet_name => $sheet_name, index => $index, type => $type, operator_type => $operator_type, formula1 => $formula1, formula2 => $formula2, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_put_worksheet_format_condition_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **index** | **int**|  | 
 **type** | **string**|  | 
 **operator_type** | **string**|  | 
 **formula1** | **string**|  | 
 **formula2** | **string**|  | 
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

