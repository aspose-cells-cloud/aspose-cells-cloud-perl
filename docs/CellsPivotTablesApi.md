# AsposeCellsCloud::CellsPivotTablesApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsPivotTablesApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_pivot_tables_delete_pivot_table_field**](CellsPivotTablesApi.md#cells_pivot_tables_delete_pivot_table_field) | **DELETE** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField | Delete pivot field into into pivot table
[**cells_pivot_tables_delete_worksheet_pivot_table**](CellsPivotTablesApi.md#cells_pivot_tables_delete_worksheet_pivot_table) | **DELETE** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex} | Delete worksheet pivot table by index
[**cells_pivot_tables_delete_worksheet_pivot_table_filter**](CellsPivotTablesApi.md#cells_pivot_tables_delete_worksheet_pivot_table_filter) | **DELETE** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters/{fieldIndex} | delete  pivot filter for piovt table             
[**cells_pivot_tables_delete_worksheet_pivot_table_filters**](CellsPivotTablesApi.md#cells_pivot_tables_delete_worksheet_pivot_table_filters) | **DELETE** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters | delete all pivot filters for piovt table
[**cells_pivot_tables_delete_worksheet_pivot_tables**](CellsPivotTablesApi.md#cells_pivot_tables_delete_worksheet_pivot_tables) | **DELETE** /cells/{name}/worksheets/{sheetName}/pivottables | Delete worksheet pivot tables
[**cells_pivot_tables_get_pivot_table_field**](CellsPivotTablesApi.md#cells_pivot_tables_get_pivot_table_field) | **GET** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField | Get pivot field into into pivot table
[**cells_pivot_tables_get_worksheet_pivot_table**](CellsPivotTablesApi.md#cells_pivot_tables_get_worksheet_pivot_table) | **GET** /cells/{name}/worksheets/{sheetName}/pivottables/{pivottableIndex} | Get worksheet pivottable info by index.
[**cells_pivot_tables_get_worksheet_pivot_table_filter**](CellsPivotTablesApi.md#cells_pivot_tables_get_worksheet_pivot_table_filter) | **GET** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters/{filterIndex} | 
[**cells_pivot_tables_get_worksheet_pivot_table_filters**](CellsPivotTablesApi.md#cells_pivot_tables_get_worksheet_pivot_table_filters) | **GET** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters | 
[**cells_pivot_tables_get_worksheet_pivot_tables**](CellsPivotTablesApi.md#cells_pivot_tables_get_worksheet_pivot_tables) | **GET** /cells/{name}/worksheets/{sheetName}/pivottables | Get worksheet pivottables info.
[**cells_pivot_tables_post_pivot_table_cell_style**](CellsPivotTablesApi.md#cells_pivot_tables_post_pivot_table_cell_style) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Format | Update cell style for pivot table
[**cells_pivot_tables_post_pivot_table_field_hide_item**](CellsPivotTablesApi.md#cells_pivot_tables_post_pivot_table_field_hide_item) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/Hide | 
[**cells_pivot_tables_post_pivot_table_field_move_to**](CellsPivotTablesApi.md#cells_pivot_tables_post_pivot_table_field_move_to) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/Move | 
[**cells_pivot_tables_post_pivot_table_style**](CellsPivotTablesApi.md#cells_pivot_tables_post_pivot_table_style) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/FormatAll | Update style for pivot table
[**cells_pivot_tables_post_worksheet_pivot_table_calculate**](CellsPivotTablesApi.md#cells_pivot_tables_post_worksheet_pivot_table_calculate) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Calculate | Calculates pivottable&#39;s data to cells.
[**cells_pivot_tables_post_worksheet_pivot_table_move**](CellsPivotTablesApi.md#cells_pivot_tables_post_worksheet_pivot_table_move) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Move | 
[**cells_pivot_tables_put_pivot_table_field**](CellsPivotTablesApi.md#cells_pivot_tables_put_pivot_table_field) | **PUT** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField | Add pivot field into into pivot table
[**cells_pivot_tables_put_worksheet_pivot_table**](CellsPivotTablesApi.md#cells_pivot_tables_put_worksheet_pivot_table) | **PUT** /cells/{name}/worksheets/{sheetName}/pivottables | Add a pivot table into worksheet.
[**cells_pivot_tables_put_worksheet_pivot_table_filter**](CellsPivotTablesApi.md#cells_pivot_tables_put_worksheet_pivot_table_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters | Add pivot filter for piovt table index


# **cells_pivot_tables_delete_pivot_table_field**
> SaaSposeResponse cells_pivot_tables_delete_pivot_table_field(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, pivot_field_type => $pivot_field_type, request => $request, folder => $folder, storage => $storage)

Delete pivot field into into pivot table

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $pivot_table_index = 56; # int | Pivot table index
my $pivot_field_type = 'pivot_field_type_example'; # string | The fields area type.
my $request = AsposeCellsCloud::Object::PivotTableFieldRequest->new(); # PivotTableFieldRequest | Dto that conrains field indexes
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_delete_pivot_table_field(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, pivot_field_type => $pivot_field_type, request => $request, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_delete_pivot_table_field: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **pivot_table_index** | **int**| Pivot table index | 
 **pivot_field_type** | **string**| The fields area type. | 
 **request** | [**PivotTableFieldRequest**](PivotTableFieldRequest.md)| Dto that conrains field indexes | [optional] 
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

# **cells_pivot_tables_delete_worksheet_pivot_table**
> SaaSposeResponse cells_pivot_tables_delete_worksheet_pivot_table(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, folder => $folder, storage => $storage)

Delete worksheet pivot table by index

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $pivot_table_index = 56; # int | Pivot table index
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_delete_worksheet_pivot_table(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_delete_worksheet_pivot_table: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **pivot_table_index** | **int**| Pivot table index | 
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

# **cells_pivot_tables_delete_worksheet_pivot_table_filter**
> SaaSposeResponse cells_pivot_tables_delete_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, field_index => $field_index, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage)

delete  pivot filter for piovt table             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $pivot_table_index = 56; # int | 
my $field_index = 56; # int | 
my $need_re_calculate = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_delete_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, field_index => $field_index, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_delete_worksheet_pivot_table_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **pivot_table_index** | **int**|  | 
 **field_index** | **int**|  | 
 **need_re_calculate** | **boolean**|  | [optional] [default to false]
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

# **cells_pivot_tables_delete_worksheet_pivot_table_filters**
> SaaSposeResponse cells_pivot_tables_delete_worksheet_pivot_table_filters(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage)

delete all pivot filters for piovt table

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $pivot_table_index = 56; # int | 
my $need_re_calculate = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_delete_worksheet_pivot_table_filters(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_delete_worksheet_pivot_table_filters: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **pivot_table_index** | **int**|  | 
 **need_re_calculate** | **boolean**|  | [optional] [default to false]
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

# **cells_pivot_tables_delete_worksheet_pivot_tables**
> SaaSposeResponse cells_pivot_tables_delete_worksheet_pivot_tables(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Delete worksheet pivot tables

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_delete_worksheet_pivot_tables(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_delete_worksheet_pivot_tables: $@\n";
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

# **cells_pivot_tables_get_pivot_table_field**
> PivotFieldResponse cells_pivot_tables_get_pivot_table_field(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, pivot_field_index => $pivot_field_index, pivot_field_type => $pivot_field_type, folder => $folder, storage => $storage)

Get pivot field into into pivot table

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $pivot_table_index = 56; # int | Pivot table index
my $pivot_field_index = 56; # int | The field index in the base fields.
my $pivot_field_type = 'pivot_field_type_example'; # string | The fields area type.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_get_pivot_table_field(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, pivot_field_index => $pivot_field_index, pivot_field_type => $pivot_field_type, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_get_pivot_table_field: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **pivot_table_index** | **int**| Pivot table index | 
 **pivot_field_index** | **int**| The field index in the base fields. | 
 **pivot_field_type** | **string**| The fields area type. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**PivotFieldResponse**](PivotFieldResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_pivot_tables_get_worksheet_pivot_table**
> PivotTableResponse cells_pivot_tables_get_worksheet_pivot_table(name => $name, sheet_name => $sheet_name, pivottable_index => $pivottable_index, folder => $folder, storage => $storage)

Get worksheet pivottable info by index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $pivottable_index = 56; # int | 
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_get_worksheet_pivot_table(name => $name, sheet_name => $sheet_name, pivottable_index => $pivottable_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_get_worksheet_pivot_table: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **pivottable_index** | **int**|  | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**PivotTableResponse**](PivotTableResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_pivot_tables_get_worksheet_pivot_table_filter**
> PivotFilterResponse cells_pivot_tables_get_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, filter_index => $filter_index, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $pivot_table_index = 56; # int | 
my $filter_index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_get_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, filter_index => $filter_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_get_worksheet_pivot_table_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **pivot_table_index** | **int**|  | 
 **filter_index** | **int**|  | 
 **folder** | **string**|  | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**PivotFilterResponse**](PivotFilterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_pivot_tables_get_worksheet_pivot_table_filters**
> PivotFiltersResponse cells_pivot_tables_get_worksheet_pivot_table_filters(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $pivot_table_index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_get_worksheet_pivot_table_filters(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_get_worksheet_pivot_table_filters: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **pivot_table_index** | **int**|  | 
 **folder** | **string**|  | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**PivotFiltersResponse**](PivotFiltersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_pivot_tables_get_worksheet_pivot_tables**
> PivotTablesResponse cells_pivot_tables_get_worksheet_pivot_tables(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet pivottables info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_get_worksheet_pivot_tables(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_get_worksheet_pivot_tables: $@\n";
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

[**PivotTablesResponse**](PivotTablesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_pivot_tables_post_pivot_table_cell_style**
> SaaSposeResponse cells_pivot_tables_post_pivot_table_cell_style(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, column => $column, row => $row, style => $style, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage)

Update cell style for pivot table

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $pivot_table_index = 56; # int | Pivot table index
my $column = 56; # int | 
my $row = 56; # int | 
my $style = AsposeCellsCloud::Object::Style->new(); # Style | Style dto in request body.
my $need_re_calculate = 1; # boolean | 
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_post_pivot_table_cell_style(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, column => $column, row => $row, style => $style, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_pivot_table_cell_style: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **pivot_table_index** | **int**| Pivot table index | 
 **column** | **int**|  | 
 **row** | **int**|  | 
 **style** | [**Style**](Style.md)| Style dto in request body. | [optional] 
 **need_re_calculate** | **boolean**|  | [optional] [default to false]
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

# **cells_pivot_tables_post_pivot_table_field_hide_item**
> SaaSposeResponse cells_pivot_tables_post_pivot_table_field_hide_item(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, pivot_field_type => $pivot_field_type, field_index => $field_index, item_index => $item_index, is_hide => $is_hide, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $pivot_table_index = 56; # int | 
my $pivot_field_type = 'pivot_field_type_example'; # string | 
my $field_index = 56; # int | 
my $item_index = 56; # int | 
my $is_hide = 1; # boolean | 
my $need_re_calculate = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_post_pivot_table_field_hide_item(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, pivot_field_type => $pivot_field_type, field_index => $field_index, item_index => $item_index, is_hide => $is_hide, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_pivot_table_field_hide_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **pivot_table_index** | **int**|  | 
 **pivot_field_type** | **string**|  | 
 **field_index** | **int**|  | 
 **item_index** | **int**|  | 
 **is_hide** | **boolean**|  | 
 **need_re_calculate** | **boolean**|  | [optional] [default to false]
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

# **cells_pivot_tables_post_pivot_table_field_move_to**
> SaaSposeResponse cells_pivot_tables_post_pivot_table_field_move_to(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, field_index => $field_index, from => $from, to => $to, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $pivot_table_index = 56; # int | 
my $field_index = 56; # int | 
my $from = 'from_example'; # string | 
my $to = 'to_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_post_pivot_table_field_move_to(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, field_index => $field_index, from => $from, to => $to, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_pivot_table_field_move_to: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **pivot_table_index** | **int**|  | 
 **field_index** | **int**|  | 
 **from** | **string**|  | 
 **to** | **string**|  | 
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

# **cells_pivot_tables_post_pivot_table_style**
> SaaSposeResponse cells_pivot_tables_post_pivot_table_style(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, style => $style, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage)

Update style for pivot table

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $pivot_table_index = 56; # int | Pivot table index
my $style = AsposeCellsCloud::Object::Style->new(); # Style | Style dto in request body.
my $need_re_calculate = 1; # boolean | 
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_post_pivot_table_style(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, style => $style, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_pivot_table_style: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **pivot_table_index** | **int**| Pivot table index | 
 **style** | [**Style**](Style.md)| Style dto in request body. | [optional] 
 **need_re_calculate** | **boolean**|  | [optional] [default to false]
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

# **cells_pivot_tables_post_worksheet_pivot_table_calculate**
> SaaSposeResponse cells_pivot_tables_post_worksheet_pivot_table_calculate(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, folder => $folder, storage => $storage)

Calculates pivottable's data to cells.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $pivot_table_index = 56; # int | Pivot table index
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_post_worksheet_pivot_table_calculate(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_worksheet_pivot_table_calculate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **pivot_table_index** | **int**| Pivot table index | 
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

# **cells_pivot_tables_post_worksheet_pivot_table_move**
> SaaSposeResponse cells_pivot_tables_post_worksheet_pivot_table_move(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, row => $row, column => $column, dest_cell_name => $dest_cell_name, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $pivot_table_index = 56; # int | 
my $row = 56; # int | 
my $column = 56; # int | 
my $dest_cell_name = 'dest_cell_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_post_worksheet_pivot_table_move(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, row => $row, column => $column, dest_cell_name => $dest_cell_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_worksheet_pivot_table_move: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **pivot_table_index** | **int**|  | 
 **row** | **int**|  | [optional] 
 **column** | **int**|  | [optional] 
 **dest_cell_name** | **string**|  | [optional] 
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

# **cells_pivot_tables_put_pivot_table_field**
> SaaSposeResponse cells_pivot_tables_put_pivot_table_field(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, pivot_field_type => $pivot_field_type, request => $request, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage)

Add pivot field into into pivot table

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $pivot_table_index = 56; # int | Pivot table index
my $pivot_field_type = 'pivot_field_type_example'; # string | The fields area type.
my $request = AsposeCellsCloud::Object::PivotTableFieldRequest->new(); # PivotTableFieldRequest | Dto that conrains field indexes
my $need_re_calculate = 1; # boolean | 
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_put_pivot_table_field(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, pivot_field_type => $pivot_field_type, request => $request, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_put_pivot_table_field: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **pivot_table_index** | **int**| Pivot table index | 
 **pivot_field_type** | **string**| The fields area type. | 
 **request** | [**PivotTableFieldRequest**](PivotTableFieldRequest.md)| Dto that conrains field indexes | [optional] 
 **need_re_calculate** | **boolean**|  | [optional] [default to false]
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

# **cells_pivot_tables_put_worksheet_pivot_table**
> PivotTableResponse cells_pivot_tables_put_worksheet_pivot_table(name => $name, sheet_name => $sheet_name, request => $request, folder => $folder, storage => $storage, source_data => $source_data, dest_cell_name => $dest_cell_name, table_name => $table_name, use_same_source => $use_same_source)

Add a pivot table into worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $request = AsposeCellsCloud::Object::CreatePivotTableRequest->new(); # CreatePivotTableRequest | CreatePivotTableRequest dto in request body.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.
my $source_data = 'source_data_example'; # string | The data for the new PivotTable cache.
my $dest_cell_name = 'dest_cell_name_example'; # string | The cell in the upper-left corner of the PivotTable report's destination range.
my $table_name = 'table_name_example'; # string | The name of the new PivotTable report.
my $use_same_source = 1; # boolean | Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory.

eval { 
    my $result = $api_instance->cells_pivot_tables_put_worksheet_pivot_table(name => $name, sheet_name => $sheet_name, request => $request, folder => $folder, storage => $storage, source_data => $source_data, dest_cell_name => $dest_cell_name, table_name => $table_name, use_same_source => $use_same_source);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_put_worksheet_pivot_table: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **request** | [**CreatePivotTableRequest**](CreatePivotTableRequest.md)| CreatePivotTableRequest dto in request body. | [optional] 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 
 **source_data** | **string**| The data for the new PivotTable cache. | [optional] 
 **dest_cell_name** | **string**| The cell in the upper-left corner of the PivotTable report&#39;s destination range. | [optional] 
 **table_name** | **string**| The name of the new PivotTable report. | [optional] 
 **use_same_source** | **boolean**| Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory. | [optional] 

### Return type

[**PivotTableResponse**](PivotTableResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_pivot_tables_put_worksheet_pivot_table_filter**
> SaaSposeResponse cells_pivot_tables_put_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, filter => $filter, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage)

Add pivot filter for piovt table index

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPivotTablesApi;
my $api_instance = AsposeCellsCloud::CellsPivotTablesApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $pivot_table_index = 56; # int | 
my $filter = AsposeCellsCloud::Object::PivotFilter->new(); # PivotFilter | 
my $need_re_calculate = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_pivot_tables_put_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, filter => $filter, need_re_calculate => $need_re_calculate, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPivotTablesApi->cells_pivot_tables_put_worksheet_pivot_table_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **pivot_table_index** | **int**|  | 
 **filter** | [**PivotFilter**](PivotFilter.md)|  | [optional] 
 **need_re_calculate** | **boolean**|  | [optional] [default to false]
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

