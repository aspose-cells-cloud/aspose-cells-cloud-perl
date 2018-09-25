# AsposeCellsCloud::CellsApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_delete_worksheet_columns**](CellsApi.md#cells_delete_worksheet_columns) | **DELETE** /cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex} | Delete worksheet columns.
[**cells_delete_worksheet_row**](CellsApi.md#cells_delete_worksheet_row) | **DELETE** /cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex} | Delete worksheet row.
[**cells_delete_worksheet_rows**](CellsApi.md#cells_delete_worksheet_rows) | **DELETE** /cells/{name}/worksheets/{sheetName}/cells/rows | Delete several worksheet rows.
[**cells_get_worksheet_cell**](CellsApi.md#cells_get_worksheet_cell) | **GET** /cells/{name}/worksheets/{sheetName}/cells/{cellOrMethodName} | Read cell data by cell&#39;s name.
[**cells_get_worksheet_cell_style**](CellsApi.md#cells_get_worksheet_cell_style) | **GET** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/style | Read cell&#39;s style info.
[**cells_get_worksheet_cells**](CellsApi.md#cells_get_worksheet_cells) | **GET** /cells/{name}/worksheets/{sheetName}/cells | Get cells info.
[**cells_get_worksheet_column**](CellsApi.md#cells_get_worksheet_column) | **GET** /cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex} | Read worksheet column data by column&#39;s index.
[**cells_get_worksheet_columns**](CellsApi.md#cells_get_worksheet_columns) | **GET** /cells/{name}/worksheets/{sheetName}/cells/columns | Read worksheet columns info.
[**cells_get_worksheet_row**](CellsApi.md#cells_get_worksheet_row) | **GET** /cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex} | Read worksheet row data by row&#39;s index.
[**cells_get_worksheet_rows**](CellsApi.md#cells_get_worksheet_rows) | **GET** /cells/{name}/worksheets/{sheetName}/cells/rows | Read worksheet rows info.
[**cells_post_cell_calculate**](CellsApi.md#cells_post_cell_calculate) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/calculate | Cell calculate formula
[**cells_post_cell_characters**](CellsApi.md#cells_post_cell_characters) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/characters | Set cell characters 
[**cells_post_clear_contents**](CellsApi.md#cells_post_clear_contents) | **POST** /cells/{name}/worksheets/{sheetName}/cells/clearcontents | Clear cells contents.
[**cells_post_clear_formats**](CellsApi.md#cells_post_clear_formats) | **POST** /cells/{name}/worksheets/{sheetName}/cells/clearformats | Clear cells contents.
[**cells_post_column_style**](CellsApi.md#cells_post_column_style) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/style | Set column style
[**cells_post_copy_cell_into_cell**](CellsApi.md#cells_post_copy_cell_into_cell) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{destCellName}/copy | Copy cell into cell
[**cells_post_copy_worksheet_columns**](CellsApi.md#cells_post_copy_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/copy | Copy worksheet columns.
[**cells_post_copy_worksheet_rows**](CellsApi.md#cells_post_copy_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/copy | Copy worksheet rows.
[**cells_post_group_worksheet_columns**](CellsApi.md#cells_post_group_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/group | Group worksheet columns.
[**cells_post_group_worksheet_rows**](CellsApi.md#cells_post_group_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/group | Group worksheet rows.
[**cells_post_hide_worksheet_columns**](CellsApi.md#cells_post_hide_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/hide | Hide worksheet columns.
[**cells_post_hide_worksheet_rows**](CellsApi.md#cells_post_hide_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/hide | Hide worksheet rows.
[**cells_post_row_style**](CellsApi.md#cells_post_row_style) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/style | Set row style.
[**cells_post_set_cell_html_string**](CellsApi.md#cells_post_set_cell_html_string) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring | Set htmlstring value into cell
[**cells_post_set_cell_range_value**](CellsApi.md#cells_post_set_cell_range_value) | **POST** /cells/{name}/worksheets/{sheetName}/cells | Set cell range value 
[**cells_post_set_worksheet_column_width**](CellsApi.md#cells_post_set_worksheet_column_width) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex} | Set worksheet column width.
[**cells_post_ungroup_worksheet_columns**](CellsApi.md#cells_post_ungroup_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/ungroup | Ungroup worksheet columns.
[**cells_post_ungroup_worksheet_rows**](CellsApi.md#cells_post_ungroup_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/ungroup | Ungroup worksheet rows.
[**cells_post_unhide_worksheet_columns**](CellsApi.md#cells_post_unhide_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/unhide | Unhide worksheet columns.
[**cells_post_unhide_worksheet_rows**](CellsApi.md#cells_post_unhide_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/unhide | Unhide worksheet rows.
[**cells_post_update_worksheet_cell_style**](CellsApi.md#cells_post_update_worksheet_cell_style) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/style | Update cell&#39;s style.
[**cells_post_update_worksheet_range_style**](CellsApi.md#cells_post_update_worksheet_range_style) | **POST** /cells/{name}/worksheets/{sheetName}/cells/style | Update cell&#39;s range style.
[**cells_post_update_worksheet_row**](CellsApi.md#cells_post_update_worksheet_row) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex} | Update worksheet row.
[**cells_post_worksheet_cell_set_value**](CellsApi.md#cells_post_worksheet_cell_set_value) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{cellName} | Set cell value.
[**cells_post_worksheet_merge**](CellsApi.md#cells_post_worksheet_merge) | **POST** /cells/{name}/worksheets/{sheetName}/cells/merge | Merge cells.
[**cells_post_worksheet_unmerge**](CellsApi.md#cells_post_worksheet_unmerge) | **POST** /cells/{name}/worksheets/{sheetName}/cells/unmerge | Unmerge cells.
[**cells_put_insert_worksheet_columns**](CellsApi.md#cells_put_insert_worksheet_columns) | **PUT** /cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex} | Insert worksheet columns.
[**cells_put_insert_worksheet_row**](CellsApi.md#cells_put_insert_worksheet_row) | **PUT** /cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex} | Insert new worksheet row.
[**cells_put_insert_worksheet_rows**](CellsApi.md#cells_put_insert_worksheet_rows) | **PUT** /cells/{name}/worksheets/{sheetName}/cells/rows | Insert several new worksheet rows.


# **cells_delete_worksheet_columns**
> ColumnsResponse cells_delete_worksheet_columns(name => $name, sheet_name => $sheet_name, column_index => $column_index, columns => $columns, update_reference => $update_reference, folder => $folder, storage => $storage)

Delete worksheet columns.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $column_index = 56; # int | The column index.
my $columns = 56; # int | The columns.
my $update_reference = 1; # boolean | The update reference.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_delete_worksheet_columns(name => $name, sheet_name => $sheet_name, column_index => $column_index, columns => $columns, update_reference => $update_reference, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_delete_worksheet_columns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **column_index** | **int**| The column index. | 
 **columns** | **int**| The columns. | 
 **update_reference** | **boolean**| The update reference. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ColumnsResponse**](ColumnsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_delete_worksheet_row**
> SaaSposeResponse cells_delete_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, folder => $folder, storage => $storage)

Delete worksheet row.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet bame.
my $row_index = 56; # int | The row index.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_delete_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_delete_worksheet_row: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet bame. | 
 **row_index** | **int**| The row index. | 
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

# **cells_delete_worksheet_rows**
> SaaSposeResponse cells_delete_worksheet_rows(name => $name, sheet_name => $sheet_name, startrow => $startrow, total_rows => $total_rows, update_reference => $update_reference, folder => $folder, storage => $storage)

Delete several worksheet rows.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet bame.
my $startrow = 56; # int | The begin row index to be operated.
my $total_rows = 56; # int | Number of rows to be operated.
my $update_reference = 1; # boolean | Indicates if update references in other worksheets.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_delete_worksheet_rows(name => $name, sheet_name => $sheet_name, startrow => $startrow, total_rows => $total_rows, update_reference => $update_reference, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_delete_worksheet_rows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet bame. | 
 **startrow** | **int**| The begin row index to be operated. | 
 **total_rows** | **int**| Number of rows to be operated. | [optional] [default to 1]
 **update_reference** | **boolean**| Indicates if update references in other worksheets. | [optional] [default to true]
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

# **cells_get_worksheet_cell**
> object cells_get_worksheet_cell(name => $name, sheet_name => $sheet_name, cell_or_method_name => $cell_or_method_name, folder => $folder, storage => $storage)

Read cell data by cell's name.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $cell_or_method_name = 'cell_or_method_name_example'; # string | The cell's or method name. (Method name like firstcell, endcell etc.)
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_get_worksheet_cell(name => $name, sheet_name => $sheet_name, cell_or_method_name => $cell_or_method_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_get_worksheet_cell: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **cell_or_method_name** | **string**| The cell&#39;s or method name. (Method name like firstcell, endcell etc.) | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_get_worksheet_cell_style**
> StyleResponse cells_get_worksheet_cell_style(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, folder => $folder, storage => $storage)

Read cell's style info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $cell_name = 'cell_name_example'; # string | Cell's name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_get_worksheet_cell_style(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_get_worksheet_cell_style: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **cell_name** | **string**| Cell&#39;s name. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**StyleResponse**](StyleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_get_worksheet_cells**
> CellsResponse cells_get_worksheet_cells(name => $name, sheet_name => $sheet_name, offest => $offest, count => $count, folder => $folder, storage => $storage)

Get cells info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $offest = 56; # int | Begginig offset.
my $count = 56; # int | Maximum amount of cells in the response.
my $folder = 'folder_example'; # string | Document's folder name.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_get_worksheet_cells(name => $name, sheet_name => $sheet_name, offest => $offest, count => $count, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_get_worksheet_cells: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **offest** | **int**| Begginig offset. | [optional] [default to 0]
 **count** | **int**| Maximum amount of cells in the response. | [optional] [default to 0]
 **folder** | **string**| Document&#39;s folder name. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CellsResponse**](CellsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_get_worksheet_column**
> ColumnResponse cells_get_worksheet_column(name => $name, sheet_name => $sheet_name, column_index => $column_index, folder => $folder, storage => $storage)

Read worksheet column data by column's index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $column_index = 56; # int | The column index.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_get_worksheet_column(name => $name, sheet_name => $sheet_name, column_index => $column_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_get_worksheet_column: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **column_index** | **int**| The column index. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ColumnResponse**](ColumnResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_get_worksheet_columns**
> ColumnsResponse cells_get_worksheet_columns(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Read worksheet columns info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | The workdook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_get_worksheet_columns(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_get_worksheet_columns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **folder** | **string**| The workdook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ColumnsResponse**](ColumnsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_get_worksheet_row**
> RowResponse cells_get_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, folder => $folder, storage => $storage)

Read worksheet row data by row's index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $row_index = 56; # int | The row index.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_get_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_get_worksheet_row: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **row_index** | **int**| The row index. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**RowResponse**](RowResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_get_worksheet_rows**
> RowsResponse cells_get_worksheet_rows(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Read worksheet rows info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | The workdook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_get_worksheet_rows(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_get_worksheet_rows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **folder** | **string**| The workdook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**RowsResponse**](RowsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_post_cell_calculate**
> SaaSposeResponse cells_post_cell_calculate(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, options => $options, folder => $folder, storage => $storage)

Cell calculate formula

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $cell_name = 'cell_name_example'; # string | 
my $options = AsposeCellsCloud::Object::CalculationOptions->new(); # CalculationOptions | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_cell_calculate(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, options => $options, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_cell_calculate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **cell_name** | **string**|  | 
 **options** | [**CalculationOptions**](CalculationOptions.md)|  | [optional] 
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

# **cells_post_cell_characters**
> SaaSposeResponse cells_post_cell_characters(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, options => $options, folder => $folder, storage => $storage)

Set cell characters 

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $cell_name = 'cell_name_example'; # string | 
my $options = [AsposeCellsCloud::Object::ARRAY[FontSetting]->new()]; # ARRAY[FontSetting] | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_cell_characters(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, options => $options, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_cell_characters: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **cell_name** | **string**|  | 
 **options** | [**ARRAY[FontSetting]**](FontSetting.md)|  | [optional] 
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

# **cells_post_clear_contents**
> SaaSposeResponse cells_post_clear_contents(name => $name, sheet_name => $sheet_name, range => $range, start_row => $start_row, start_column => $start_column, end_row => $end_row, end_column => $end_column, folder => $folder, storage => $storage)

Clear cells contents.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $range = 'range_example'; # string | The range.
my $start_row = 56; # int | The start row.
my $start_column = 56; # int | The start column.
my $end_row = 56; # int | The end row.
my $end_column = 56; # int | The end column.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_clear_contents(name => $name, sheet_name => $sheet_name, range => $range, start_row => $start_row, start_column => $start_column, end_row => $end_row, end_column => $end_column, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_clear_contents: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **range** | **string**| The range. | [optional] 
 **start_row** | **int**| The start row. | [optional] 
 **start_column** | **int**| The start column. | [optional] 
 **end_row** | **int**| The end row. | [optional] 
 **end_column** | **int**| The end column. | [optional] 
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

# **cells_post_clear_formats**
> SaaSposeResponse cells_post_clear_formats(name => $name, sheet_name => $sheet_name, range => $range, start_row => $start_row, start_column => $start_column, end_row => $end_row, end_column => $end_column, folder => $folder, storage => $storage)

Clear cells contents.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $range = 'range_example'; # string | The range.
my $start_row = 56; # int | The start row.
my $start_column = 56; # int | The start column.
my $end_row = 56; # int | The end row.
my $end_column = 56; # int | The end column.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_clear_formats(name => $name, sheet_name => $sheet_name, range => $range, start_row => $start_row, start_column => $start_column, end_row => $end_row, end_column => $end_column, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_clear_formats: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **range** | **string**| The range. | [optional] 
 **start_row** | **int**| The start row. | [optional] 
 **start_column** | **int**| The start column. | [optional] 
 **end_row** | **int**| The end row. | [optional] 
 **end_column** | **int**| The end column. | [optional] 
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

# **cells_post_column_style**
> SaaSposeResponse cells_post_column_style(name => $name, sheet_name => $sheet_name, column_index => $column_index, style => $style, folder => $folder, storage => $storage)

Set column style

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $column_index = 56; # int | The column index.
my $style = AsposeCellsCloud::Object::Style->new(); # Style | Style dto
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_column_style(name => $name, sheet_name => $sheet_name, column_index => $column_index, style => $style, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_column_style: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **column_index** | **int**| The column index. | 
 **style** | [**Style**](Style.md)| Style dto | [optional] 
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

# **cells_post_copy_cell_into_cell**
> SaaSposeResponse cells_post_copy_cell_into_cell(name => $name, dest_cell_name => $dest_cell_name, sheet_name => $sheet_name, worksheet => $worksheet, cellname => $cellname, row => $row, column => $column, folder => $folder, storage => $storage)

Copy cell into cell

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $dest_cell_name = 'dest_cell_name_example'; # string | Destination cell name
my $sheet_name = 'sheet_name_example'; # string | Destination worksheet name.
my $worksheet = 'worksheet_example'; # string | Source worksheet name.
my $cellname = 'cellname_example'; # string | Source cell name
my $row = 56; # int | Source row
my $column = 56; # int | Source column
my $folder = 'folder_example'; # string | Folder name
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_copy_cell_into_cell(name => $name, dest_cell_name => $dest_cell_name, sheet_name => $sheet_name, worksheet => $worksheet, cellname => $cellname, row => $row, column => $column, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_copy_cell_into_cell: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **dest_cell_name** | **string**| Destination cell name | 
 **sheet_name** | **string**| Destination worksheet name. | 
 **worksheet** | **string**| Source worksheet name. | 
 **cellname** | **string**| Source cell name | [optional] 
 **row** | **int**| Source row | [optional] 
 **column** | **int**| Source column | [optional] 
 **folder** | **string**| Folder name | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_post_copy_worksheet_columns**
> SaaSposeResponse cells_post_copy_worksheet_columns(name => $name, sheet_name => $sheet_name, source_column_index => $source_column_index, destination_column_index => $destination_column_index, column_number => $column_number, worksheet => $worksheet, folder => $folder, storage => $storage)

Copy worksheet columns.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $source_column_index = 56; # int | Source column index
my $destination_column_index = 56; # int | Destination column index
my $column_number = 56; # int | The copied column number
my $worksheet = 'worksheet_example'; # string | The Worksheet
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_copy_worksheet_columns(name => $name, sheet_name => $sheet_name, source_column_index => $source_column_index, destination_column_index => $destination_column_index, column_number => $column_number, worksheet => $worksheet, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_copy_worksheet_columns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **source_column_index** | **int**| Source column index | 
 **destination_column_index** | **int**| Destination column index | 
 **column_number** | **int**| The copied column number | 
 **worksheet** | **string**| The Worksheet | [optional] [default to ]
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

# **cells_post_copy_worksheet_rows**
> SaaSposeResponse cells_post_copy_worksheet_rows(name => $name, sheet_name => $sheet_name, source_row_index => $source_row_index, destination_row_index => $destination_row_index, row_number => $row_number, worksheet => $worksheet, folder => $folder, storage => $storage)

Copy worksheet rows.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $source_row_index = 56; # int | Source row index
my $destination_row_index = 56; # int | Destination row index
my $row_number = 56; # int | The copied row number
my $worksheet = 'worksheet_example'; # string | worksheet
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_copy_worksheet_rows(name => $name, sheet_name => $sheet_name, source_row_index => $source_row_index, destination_row_index => $destination_row_index, row_number => $row_number, worksheet => $worksheet, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_copy_worksheet_rows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **source_row_index** | **int**| Source row index | 
 **destination_row_index** | **int**| Destination row index | 
 **row_number** | **int**| The copied row number | 
 **worksheet** | **string**| worksheet | [optional] 
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

# **cells_post_group_worksheet_columns**
> SaaSposeResponse cells_post_group_worksheet_columns(name => $name, sheet_name => $sheet_name, first_index => $first_index, last_index => $last_index, hide => $hide, folder => $folder, storage => $storage)

Group worksheet columns.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $first_index = 56; # int | The first column index to be operated.
my $last_index = 56; # int | The last column index to be operated.
my $hide = 1; # boolean | columns visible state
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_group_worksheet_columns(name => $name, sheet_name => $sheet_name, first_index => $first_index, last_index => $last_index, hide => $hide, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_group_worksheet_columns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **first_index** | **int**| The first column index to be operated. | 
 **last_index** | **int**| The last column index to be operated. | 
 **hide** | **boolean**| columns visible state | [optional] 
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

# **cells_post_group_worksheet_rows**
> SaaSposeResponse cells_post_group_worksheet_rows(name => $name, sheet_name => $sheet_name, first_index => $first_index, last_index => $last_index, hide => $hide, folder => $folder, storage => $storage)

Group worksheet rows.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $first_index = 56; # int | The first row index to be operated.
my $last_index = 56; # int | The last row index to be operated.
my $hide = 1; # boolean | rows visible state
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_group_worksheet_rows(name => $name, sheet_name => $sheet_name, first_index => $first_index, last_index => $last_index, hide => $hide, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_group_worksheet_rows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **first_index** | **int**| The first row index to be operated. | 
 **last_index** | **int**| The last row index to be operated. | 
 **hide** | **boolean**| rows visible state | [optional] 
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

# **cells_post_hide_worksheet_columns**
> SaaSposeResponse cells_post_hide_worksheet_columns(name => $name, sheet_name => $sheet_name, start_column => $start_column, total_columns => $total_columns, folder => $folder, storage => $storage)

Hide worksheet columns.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $start_column = 56; # int | The begin column index to be operated.
my $total_columns = 56; # int | Number of columns to be operated.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_hide_worksheet_columns(name => $name, sheet_name => $sheet_name, start_column => $start_column, total_columns => $total_columns, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_hide_worksheet_columns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **start_column** | **int**| The begin column index to be operated. | 
 **total_columns** | **int**| Number of columns to be operated. | 
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

# **cells_post_hide_worksheet_rows**
> SaaSposeResponse cells_post_hide_worksheet_rows(name => $name, sheet_name => $sheet_name, startrow => $startrow, total_rows => $total_rows, folder => $folder, storage => $storage)

Hide worksheet rows.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $startrow = 56; # int | The begin row index to be operated.
my $total_rows = 56; # int | Number of rows to be operated.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_hide_worksheet_rows(name => $name, sheet_name => $sheet_name, startrow => $startrow, total_rows => $total_rows, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_hide_worksheet_rows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **startrow** | **int**| The begin row index to be operated. | 
 **total_rows** | **int**| Number of rows to be operated. | 
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

# **cells_post_row_style**
> SaaSposeResponse cells_post_row_style(name => $name, sheet_name => $sheet_name, row_index => $row_index, style => $style, folder => $folder, storage => $storage)

Set row style.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $row_index = 56; # int | The row index.
my $style = AsposeCellsCloud::Object::Style->new(); # Style | Style dto
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_row_style(name => $name, sheet_name => $sheet_name, row_index => $row_index, style => $style, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_row_style: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **row_index** | **int**| The row index. | 
 **style** | [**Style**](Style.md)| Style dto | [optional] 
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

# **cells_post_set_cell_html_string**
> CellResponse cells_post_set_cell_html_string(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, folder => $folder, storage => $storage)

Set htmlstring value into cell

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $cell_name = 'cell_name_example'; # string | The cell name.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_set_cell_html_string(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_set_cell_html_string: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **cell_name** | **string**| The cell name. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CellResponse**](CellResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_post_set_cell_range_value**
> SaaSposeResponse cells_post_set_cell_range_value(name => $name, sheet_name => $sheet_name, cellarea => $cellarea, value => $value, type => $type, folder => $folder, storage => $storage)

Set cell range value 

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $cellarea = 'cellarea_example'; # string | Cell area (like \"A1:C2\")
my $value = 'value_example'; # string | Range value
my $type = 'type_example'; # string | Value data type (like \"int\")
my $folder = 'folder_example'; # string | Folder name
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_set_cell_range_value(name => $name, sheet_name => $sheet_name, cellarea => $cellarea, value => $value, type => $type, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_set_cell_range_value: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **cellarea** | **string**| Cell area (like \&quot;A1:C2\&quot;) | 
 **value** | **string**| Range value | 
 **type** | **string**| Value data type (like \&quot;int\&quot;) | 
 **folder** | **string**| Folder name | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_post_set_worksheet_column_width**
> ColumnResponse cells_post_set_worksheet_column_width(name => $name, sheet_name => $sheet_name, column_index => $column_index, width => $width, folder => $folder, storage => $storage)

Set worksheet column width.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $column_index = 56; # int | The column index.
my $width = 1.2; # double | The width.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_set_worksheet_column_width(name => $name, sheet_name => $sheet_name, column_index => $column_index, width => $width, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_set_worksheet_column_width: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **column_index** | **int**| The column index. | 
 **width** | **double**| The width. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ColumnResponse**](ColumnResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_post_ungroup_worksheet_columns**
> SaaSposeResponse cells_post_ungroup_worksheet_columns(name => $name, sheet_name => $sheet_name, first_index => $first_index, last_index => $last_index, folder => $folder, storage => $storage)

Ungroup worksheet columns.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $first_index = 56; # int | The first column index to be operated.
my $last_index = 56; # int | The last column index to be operated.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_ungroup_worksheet_columns(name => $name, sheet_name => $sheet_name, first_index => $first_index, last_index => $last_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_ungroup_worksheet_columns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **first_index** | **int**| The first column index to be operated. | 
 **last_index** | **int**| The last column index to be operated. | 
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

# **cells_post_ungroup_worksheet_rows**
> SaaSposeResponse cells_post_ungroup_worksheet_rows(name => $name, sheet_name => $sheet_name, first_index => $first_index, last_index => $last_index, is_all => $is_all, folder => $folder, storage => $storage)

Ungroup worksheet rows.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $first_index = 56; # int | The first row index to be operated.
my $last_index = 56; # int | The last row index to be operated.
my $is_all = 1; # boolean | Is all row to be operated
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_ungroup_worksheet_rows(name => $name, sheet_name => $sheet_name, first_index => $first_index, last_index => $last_index, is_all => $is_all, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_ungroup_worksheet_rows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **first_index** | **int**| The first row index to be operated. | 
 **last_index** | **int**| The last row index to be operated. | 
 **is_all** | **boolean**| Is all row to be operated | [optional] 
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

# **cells_post_unhide_worksheet_columns**
> SaaSposeResponse cells_post_unhide_worksheet_columns(name => $name, sheet_name => $sheet_name, startcolumn => $startcolumn, total_columns => $total_columns, width => $width, folder => $folder, storage => $storage)

Unhide worksheet columns.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $startcolumn = 56; # int | The begin column index to be operated.
my $total_columns = 56; # int | Number of columns to be operated.
my $width = 1.2; # double | The new column width.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_unhide_worksheet_columns(name => $name, sheet_name => $sheet_name, startcolumn => $startcolumn, total_columns => $total_columns, width => $width, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_unhide_worksheet_columns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **startcolumn** | **int**| The begin column index to be operated. | 
 **total_columns** | **int**| Number of columns to be operated. | 
 **width** | **double**| The new column width. | [optional] [default to 50.0]
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

# **cells_post_unhide_worksheet_rows**
> SaaSposeResponse cells_post_unhide_worksheet_rows(name => $name, sheet_name => $sheet_name, startrow => $startrow, total_rows => $total_rows, height => $height, folder => $folder, storage => $storage)

Unhide worksheet rows.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $startrow = 56; # int | The begin row index to be operated.
my $total_rows = 56; # int | Number of rows to be operated.
my $height = 1.2; # double | The new row height.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_unhide_worksheet_rows(name => $name, sheet_name => $sheet_name, startrow => $startrow, total_rows => $total_rows, height => $height, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_unhide_worksheet_rows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **startrow** | **int**| The begin row index to be operated. | 
 **total_rows** | **int**| Number of rows to be operated. | 
 **height** | **double**| The new row height. | [optional] [default to 15.0]
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

# **cells_post_update_worksheet_cell_style**
> StyleResponse cells_post_update_worksheet_cell_style(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, style => $style, folder => $folder, storage => $storage)

Update cell's style.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $cell_name = 'cell_name_example'; # string | The cell name.
my $style = AsposeCellsCloud::Object::Style->new(); # Style | with update style settings.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_update_worksheet_cell_style(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, style => $style, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_update_worksheet_cell_style: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **cell_name** | **string**| The cell name. | 
 **style** | [**Style**](Style.md)| with update style settings. | [optional] 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**StyleResponse**](StyleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_post_update_worksheet_range_style**
> SaaSposeResponse cells_post_update_worksheet_range_style(name => $name, sheet_name => $sheet_name, range => $range, style => $style, folder => $folder, storage => $storage)

Update cell's range style.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $range = 'range_example'; # string | The range.
my $style = AsposeCellsCloud::Object::Style->new(); # Style | with update style settings.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_update_worksheet_range_style(name => $name, sheet_name => $sheet_name, range => $range, style => $style, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_update_worksheet_range_style: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **range** | **string**| The range. | 
 **style** | [**Style**](Style.md)| with update style settings. | [optional] 
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

# **cells_post_update_worksheet_row**
> RowResponse cells_post_update_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, height => $height, folder => $folder, storage => $storage)

Update worksheet row.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $row_index = 56; # int | The row index.
my $height = 1.2; # double | The new row height.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_update_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, height => $height, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_update_worksheet_row: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **row_index** | **int**| The row index. | 
 **height** | **double**| The new row height. | [optional] [default to 0.0]
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**RowResponse**](RowResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_post_worksheet_cell_set_value**
> CellResponse cells_post_worksheet_cell_set_value(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, value => $value, type => $type, formula => $formula, folder => $folder, storage => $storage)

Set cell value.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $cell_name = 'cell_name_example'; # string | The cell name.
my $value = 'value_example'; # string | The cell value.
my $type = 'type_example'; # string | The value type.
my $formula = 'formula_example'; # string | Formula for cell
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_worksheet_cell_set_value(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, value => $value, type => $type, formula => $formula, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_worksheet_cell_set_value: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **cell_name** | **string**| The cell name. | 
 **value** | **string**| The cell value. | [optional] 
 **type** | **string**| The value type. | [optional] 
 **formula** | **string**| Formula for cell | [optional] 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CellResponse**](CellResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_post_worksheet_merge**
> SaaSposeResponse cells_post_worksheet_merge(name => $name, sheet_name => $sheet_name, start_row => $start_row, start_column => $start_column, total_rows => $total_rows, total_columns => $total_columns, folder => $folder, storage => $storage)

Merge cells.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $start_row = 56; # int | The start row.
my $start_column = 56; # int | The start column.
my $total_rows = 56; # int | The total rows
my $total_columns = 56; # int | The total columns.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_worksheet_merge(name => $name, sheet_name => $sheet_name, start_row => $start_row, start_column => $start_column, total_rows => $total_rows, total_columns => $total_columns, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_worksheet_merge: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **start_row** | **int**| The start row. | 
 **start_column** | **int**| The start column. | 
 **total_rows** | **int**| The total rows | 
 **total_columns** | **int**| The total columns. | 
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

# **cells_post_worksheet_unmerge**
> SaaSposeResponse cells_post_worksheet_unmerge(name => $name, sheet_name => $sheet_name, start_row => $start_row, start_column => $start_column, total_rows => $total_rows, total_columns => $total_columns, folder => $folder, storage => $storage)

Unmerge cells.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $start_row = 56; # int | The start row.
my $start_column = 56; # int | The start column.
my $total_rows = 56; # int | The total rows
my $total_columns = 56; # int | The total columns.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_post_worksheet_unmerge(name => $name, sheet_name => $sheet_name, start_row => $start_row, start_column => $start_column, total_rows => $total_rows, total_columns => $total_columns, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_post_worksheet_unmerge: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **start_row** | **int**| The start row. | 
 **start_column** | **int**| The start column. | 
 **total_rows** | **int**| The total rows | 
 **total_columns** | **int**| The total columns. | 
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

# **cells_put_insert_worksheet_columns**
> ColumnsResponse cells_put_insert_worksheet_columns(name => $name, sheet_name => $sheet_name, column_index => $column_index, columns => $columns, update_reference => $update_reference, folder => $folder, storage => $storage)

Insert worksheet columns.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $column_index = 56; # int | The column index.
my $columns = 56; # int | The columns.
my $update_reference = 1; # boolean | The update reference.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_put_insert_worksheet_columns(name => $name, sheet_name => $sheet_name, column_index => $column_index, columns => $columns, update_reference => $update_reference, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_put_insert_worksheet_columns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **column_index** | **int**| The column index. | 
 **columns** | **int**| The columns. | 
 **update_reference** | **boolean**| The update reference. | [optional] [default to true]
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ColumnsResponse**](ColumnsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_put_insert_worksheet_row**
> RowResponse cells_put_insert_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, folder => $folder, storage => $storage)

Insert new worksheet row.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $row_index = 56; # int | The new row index.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_put_insert_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_put_insert_worksheet_row: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **row_index** | **int**| The new row index. | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**RowResponse**](RowResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_put_insert_worksheet_rows**
> SaaSposeResponse cells_put_insert_worksheet_rows(name => $name, sheet_name => $sheet_name, startrow => $startrow, total_rows => $total_rows, update_reference => $update_reference, folder => $folder, storage => $storage)

Insert several new worksheet rows.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsApi;
my $api_instance = AsposeCellsCloud::CellsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $startrow = 56; # int | The begin row index to be operated.
my $total_rows = 56; # int | Number of rows to be operated.
my $update_reference = 1; # boolean | Indicates if update references in other worksheets.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_put_insert_worksheet_rows(name => $name, sheet_name => $sheet_name, startrow => $startrow, total_rows => $total_rows, update_reference => $update_reference, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsApi->cells_put_insert_worksheet_rows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **startrow** | **int**| The begin row index to be operated. | 
 **total_rows** | **int**| Number of rows to be operated. | [optional] [default to 1]
 **update_reference** | **boolean**| Indicates if update references in other worksheets. | [optional] [default to true]
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

