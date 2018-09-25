# AsposeCellsCloud::CellsWorksheetsApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsWorksheetsApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_worksheets_delete_unprotect_worksheet**](CellsWorksheetsApi.md#cells_worksheets_delete_unprotect_worksheet) | **DELETE** /cells/{name}/worksheets/{sheetName}/protection | Unprotect worksheet.
[**cells_worksheets_delete_worksheet**](CellsWorksheetsApi.md#cells_worksheets_delete_worksheet) | **DELETE** /cells/{name}/worksheets/{sheetName} | Delete worksheet.
[**cells_worksheets_delete_worksheet_background**](CellsWorksheetsApi.md#cells_worksheets_delete_worksheet_background) | **DELETE** /cells/{name}/worksheets/{sheetName}/background | Set worksheet background image.
[**cells_worksheets_delete_worksheet_comment**](CellsWorksheetsApi.md#cells_worksheets_delete_worksheet_comment) | **DELETE** /cells/{name}/worksheets/{sheetName}/comments/{cellName} | Delete worksheet&#39;s cell comment.
[**cells_worksheets_delete_worksheet_comments**](CellsWorksheetsApi.md#cells_worksheets_delete_worksheet_comments) | **DELETE** /cells/{name}/worksheets/{sheetName}/comments | Delete all comments for worksheet.
[**cells_worksheets_delete_worksheet_freeze_panes**](CellsWorksheetsApi.md#cells_worksheets_delete_worksheet_freeze_panes) | **DELETE** /cells/{name}/worksheets/{sheetName}/freezepanes | Unfreeze panes
[**cells_worksheets_get_named_ranges**](CellsWorksheetsApi.md#cells_worksheets_get_named_ranges) | **GET** /cells/{name}/worksheets/ranges | Read worksheets ranges info.
[**cells_worksheets_get_worksheet**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet) | **GET** /cells/{name}/worksheets/{sheetName} | Read worksheet info or export.
[**cells_worksheets_get_worksheet_calculate_formula**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_calculate_formula) | **GET** /cells/{name}/worksheets/{sheetName}/formulaResult | Calculate formula value.
[**cells_worksheets_get_worksheet_comment**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_comment) | **GET** /cells/{name}/worksheets/{sheetName}/comments/{cellName} | Get worksheet comment by cell name.
[**cells_worksheets_get_worksheet_comments**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_comments) | **GET** /cells/{name}/worksheets/{sheetName}/comments | Get worksheet comments.
[**cells_worksheets_get_worksheet_merged_cell**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_merged_cell) | **GET** /cells/{name}/worksheets/{sheetName}/mergedCells/{mergedCellIndex} | Get worksheet merged cell by its index.
[**cells_worksheets_get_worksheet_merged_cells**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_merged_cells) | **GET** /cells/{name}/worksheets/{sheetName}/mergedCells | Get worksheet merged cells.
[**cells_worksheets_get_worksheet_text_items**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_text_items) | **GET** /cells/{name}/worksheets/{sheetName}/textItems | Get worksheet text items.
[**cells_worksheets_get_worksheets**](CellsWorksheetsApi.md#cells_worksheets_get_worksheets) | **GET** /cells/{name}/worksheets | Read worksheets info.
[**cells_worksheets_post_autofit_worksheet_columns**](CellsWorksheetsApi.md#cells_worksheets_post_autofit_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/autofitcolumns | 
[**cells_worksheets_post_autofit_worksheet_row**](CellsWorksheetsApi.md#cells_worksheets_post_autofit_worksheet_row) | **POST** /cells/{name}/worksheets/{sheetName}/autofitrow | 
[**cells_worksheets_post_autofit_worksheet_rows**](CellsWorksheetsApi.md#cells_worksheets_post_autofit_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/autofitrows | Autofit worksheet rows.
[**cells_worksheets_post_copy_worksheet**](CellsWorksheetsApi.md#cells_worksheets_post_copy_worksheet) | **POST** /cells/{name}/worksheets/{sheetName}/copy | 
[**cells_worksheets_post_move_worksheet**](CellsWorksheetsApi.md#cells_worksheets_post_move_worksheet) | **POST** /cells/{name}/worksheets/{sheetName}/position | Move worksheet.
[**cells_worksheets_post_rename_worksheet**](CellsWorksheetsApi.md#cells_worksheets_post_rename_worksheet) | **POST** /cells/{name}/worksheets/{sheetName}/rename | Rename worksheet
[**cells_worksheets_post_update_worksheet_property**](CellsWorksheetsApi.md#cells_worksheets_post_update_worksheet_property) | **POST** /cells/{name}/worksheets/{sheetName} | Update worksheet property
[**cells_worksheets_post_update_worksheet_zoom**](CellsWorksheetsApi.md#cells_worksheets_post_update_worksheet_zoom) | **POST** /cells/{name}/worksheets/{sheetName}/zoom | 
[**cells_worksheets_post_worksheet_comment**](CellsWorksheetsApi.md#cells_worksheets_post_worksheet_comment) | **POST** /cells/{name}/worksheets/{sheetName}/comments/{cellName} | Update worksheet&#39;s cell comment.
[**cells_worksheets_post_worksheet_range_sort**](CellsWorksheetsApi.md#cells_worksheets_post_worksheet_range_sort) | **POST** /cells/{name}/worksheets/{sheetName}/sort | Sort worksheet range.
[**cells_worksheets_post_worksheet_text_search**](CellsWorksheetsApi.md#cells_worksheets_post_worksheet_text_search) | **POST** /cells/{name}/worksheets/{sheetName}/findText | Search text.
[**cells_worksheets_post_worsheet_text_replace**](CellsWorksheetsApi.md#cells_worksheets_post_worsheet_text_replace) | **POST** /cells/{name}/worksheets/{sheetName}/replaceText | Replace text.
[**cells_worksheets_put_add_new_worksheet**](CellsWorksheetsApi.md#cells_worksheets_put_add_new_worksheet) | **PUT** /cells/{name}/worksheets/{sheetName} | Add new worksheet.
[**cells_worksheets_put_change_visibility_worksheet**](CellsWorksheetsApi.md#cells_worksheets_put_change_visibility_worksheet) | **PUT** /cells/{name}/worksheets/{sheetName}/visible | Change worksheet visibility.
[**cells_worksheets_put_protect_worksheet**](CellsWorksheetsApi.md#cells_worksheets_put_protect_worksheet) | **PUT** /cells/{name}/worksheets/{sheetName}/protection | Protect worksheet.
[**cells_worksheets_put_worksheet_background**](CellsWorksheetsApi.md#cells_worksheets_put_worksheet_background) | **PUT** /cells/{name}/worksheets/{sheetName}/background | Set worksheet background image.
[**cells_worksheets_put_worksheet_comment**](CellsWorksheetsApi.md#cells_worksheets_put_worksheet_comment) | **PUT** /cells/{name}/worksheets/{sheetName}/comments/{cellName} | Add worksheet&#39;s cell comment.
[**cells_worksheets_put_worksheet_freeze_panes**](CellsWorksheetsApi.md#cells_worksheets_put_worksheet_freeze_panes) | **PUT** /cells/{name}/worksheets/{sheetName}/freezepanes | Set freeze panes


# **cells_worksheets_delete_unprotect_worksheet**
> WorksheetResponse cells_worksheets_delete_unprotect_worksheet(name => $name, sheet_name => $sheet_name, protect_parameter => $protect_parameter, folder => $folder, storage => $storage)

Unprotect worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $protect_parameter = AsposeCellsCloud::Object::ProtectSheetParameter->new(); # ProtectSheetParameter | with protection settings. Only password is used here.
my $folder = 'folder_example'; # string | Document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_delete_unprotect_worksheet(name => $name, sheet_name => $sheet_name, protect_parameter => $protect_parameter, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_unprotect_worksheet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **protect_parameter** | [**ProtectSheetParameter**](ProtectSheetParameter.md)| with protection settings. Only password is used here. | [optional] 
 **folder** | **string**| Document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorksheetResponse**](WorksheetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_delete_worksheet**
> WorksheetsResponse cells_worksheets_delete_worksheet(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Delete worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_delete_worksheet(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_worksheet: $@\n";
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

[**WorksheetsResponse**](WorksheetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_delete_worksheet_background**
> SaaSposeResponse cells_worksheets_delete_worksheet_background(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Set worksheet background image.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_delete_worksheet_background(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_worksheet_background: $@\n";
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

# **cells_worksheets_delete_worksheet_comment**
> SaaSposeResponse cells_worksheets_delete_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, folder => $folder, storage => $storage)

Delete worksheet's cell comment.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | The document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $cell_name = 'cell_name_example'; # string | The cell name
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_delete_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_worksheet_comment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **cell_name** | **string**| The cell name | 
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

# **cells_worksheets_delete_worksheet_comments**
> SaaSposeResponse cells_worksheets_delete_worksheet_comments(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Delete all comments for worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_delete_worksheet_comments(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_worksheet_comments: $@\n";
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

# **cells_worksheets_delete_worksheet_freeze_panes**
> SaaSposeResponse cells_worksheets_delete_worksheet_freeze_panes(name => $name, sheet_name => $sheet_name, row => $row, column => $column, freezed_rows => $freezed_rows, freezed_columns => $freezed_columns, folder => $folder, storage => $storage)

Unfreeze panes

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $row = 56; # int | 
my $column = 56; # int | 
my $freezed_rows = 56; # int | 
my $freezed_columns = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_delete_worksheet_freeze_panes(name => $name, sheet_name => $sheet_name, row => $row, column => $column, freezed_rows => $freezed_rows, freezed_columns => $freezed_columns, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_worksheet_freeze_panes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **row** | **int**|  | 
 **column** | **int**|  | 
 **freezed_rows** | **int**|  | 
 **freezed_columns** | **int**|  | 
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

# **cells_worksheets_get_named_ranges**
> RangesResponse cells_worksheets_get_named_ranges(name => $name, folder => $folder, storage => $storage)

Read worksheets ranges info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $folder = 'folder_example'; # string | Document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_get_named_ranges(name => $name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_get_named_ranges: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **folder** | **string**| Document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**RangesResponse**](RangesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_get_worksheet**
> string cells_worksheets_get_worksheet(name => $name, sheet_name => $sheet_name, format => $format, vertical_resolution => $vertical_resolution, horizontal_resolution => $horizontal_resolution, folder => $folder, storage => $storage)

Read worksheet info or export.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | The document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $format = 'format_example'; # string | The exported file format.
my $vertical_resolution = 56; # int | Image vertical resolution.
my $horizontal_resolution = 56; # int | Image horizontal resolution.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_get_worksheet(name => $name, sheet_name => $sheet_name, format => $format, vertical_resolution => $vertical_resolution, horizontal_resolution => $horizontal_resolution, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **format** | **string**| The exported file format. | [optional] 
 **vertical_resolution** | **int**| Image vertical resolution. | [optional] [default to 0]
 **horizontal_resolution** | **int**| Image horizontal resolution. | [optional] [default to 0]
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

# **cells_worksheets_get_worksheet_calculate_formula**
> SingleValueResponse cells_worksheets_get_worksheet_calculate_formula(name => $name, sheet_name => $sheet_name, formula => $formula, folder => $folder, storage => $storage)

Calculate formula value.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $formula = 'formula_example'; # string | The formula.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_get_worksheet_calculate_formula(name => $name, sheet_name => $sheet_name, formula => $formula, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_calculate_formula: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **formula** | **string**| The formula. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SingleValueResponse**](SingleValueResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_get_worksheet_comment**
> CommentResponse cells_worksheets_get_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, folder => $folder, storage => $storage)

Get worksheet comment by cell name.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | The document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $cell_name = 'cell_name_example'; # string | The cell name
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_get_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_comment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **cell_name** | **string**| The cell name | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CommentResponse**](CommentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_get_worksheet_comments**
> CommentsResponse cells_worksheets_get_worksheet_comments(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet comments.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_get_worksheet_comments(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_comments: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CommentsResponse**](CommentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_get_worksheet_merged_cell**
> MergedCellResponse cells_worksheets_get_worksheet_merged_cell(name => $name, sheet_name => $sheet_name, merged_cell_index => $merged_cell_index, folder => $folder, storage => $storage)

Get worksheet merged cell by its index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $merged_cell_index = 56; # int | Merged cell index.
my $folder = 'folder_example'; # string | Document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_get_worksheet_merged_cell(name => $name, sheet_name => $sheet_name, merged_cell_index => $merged_cell_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_merged_cell: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **merged_cell_index** | **int**| Merged cell index. | 
 **folder** | **string**| Document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**MergedCellResponse**](MergedCellResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_get_worksheet_merged_cells**
> MergedCellsResponse cells_worksheets_get_worksheet_merged_cells(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet merged cells.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The workseet name.
my $folder = 'folder_example'; # string | Document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_get_worksheet_merged_cells(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_merged_cells: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The workseet name. | 
 **folder** | **string**| Document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**MergedCellsResponse**](MergedCellsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_get_worksheet_text_items**
> TextItemsResponse cells_worksheets_get_worksheet_text_items(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet text items.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | The workbook's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_get_worksheet_text_items(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_text_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **folder** | **string**| The workbook&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**TextItemsResponse**](TextItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_get_worksheets**
> WorksheetsResponse cells_worksheets_get_worksheets(name => $name, folder => $folder, storage => $storage)

Read worksheets info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $folder = 'folder_example'; # string | Document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_get_worksheets(name => $name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **folder** | **string**| Document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorksheetsResponse**](WorksheetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_post_autofit_worksheet_columns**
> SaaSposeResponse cells_worksheets_post_autofit_worksheet_columns(name => $name, sheet_name => $sheet_name, first_column => $first_column, last_column => $last_column, auto_fitter_options => $auto_fitter_options, first_row => $first_row, last_row => $last_row, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $first_column = 56; # int | 
my $last_column = 56; # int | 
my $auto_fitter_options = AsposeCellsCloud::Object::AutoFitterOptions->new(); # AutoFitterOptions | 
my $first_row = 56; # int | 
my $last_row = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_autofit_worksheet_columns(name => $name, sheet_name => $sheet_name, first_column => $first_column, last_column => $last_column, auto_fitter_options => $auto_fitter_options, first_row => $first_row, last_row => $last_row, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_autofit_worksheet_columns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **first_column** | **int**|  | 
 **last_column** | **int**|  | 
 **auto_fitter_options** | [**AutoFitterOptions**](AutoFitterOptions.md)|  | [optional] 
 **first_row** | **int**|  | [optional] 
 **last_row** | **int**|  | [optional] 
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

# **cells_worksheets_post_autofit_worksheet_row**
> SaaSposeResponse cells_worksheets_post_autofit_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, first_column => $first_column, last_column => $last_column, auto_fitter_options => $auto_fitter_options, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $row_index = 56; # int | 
my $first_column = 56; # int | 
my $last_column = 56; # int | 
my $auto_fitter_options = AsposeCellsCloud::Object::AutoFitterOptions->new(); # AutoFitterOptions | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_autofit_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, first_column => $first_column, last_column => $last_column, auto_fitter_options => $auto_fitter_options, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_autofit_worksheet_row: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **row_index** | **int**|  | 
 **first_column** | **int**|  | 
 **last_column** | **int**|  | 
 **auto_fitter_options** | [**AutoFitterOptions**](AutoFitterOptions.md)|  | [optional] 
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

# **cells_worksheets_post_autofit_worksheet_rows**
> SaaSposeResponse cells_worksheets_post_autofit_worksheet_rows(name => $name, sheet_name => $sheet_name, auto_fitter_options => $auto_fitter_options, start_row => $start_row, end_row => $end_row, only_auto => $only_auto, folder => $folder, storage => $storage)

Autofit worksheet rows.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $auto_fitter_options = AsposeCellsCloud::Object::AutoFitterOptions->new(); # AutoFitterOptions | Auto Fitter Options.
my $start_row = 56; # int | Start row.
my $end_row = 56; # int | End row.
my $only_auto = 1; # boolean | Only auto.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_autofit_worksheet_rows(name => $name, sheet_name => $sheet_name, auto_fitter_options => $auto_fitter_options, start_row => $start_row, end_row => $end_row, only_auto => $only_auto, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_autofit_worksheet_rows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **auto_fitter_options** | [**AutoFitterOptions**](AutoFitterOptions.md)| Auto Fitter Options. | [optional] 
 **start_row** | **int**| Start row. | [optional] 
 **end_row** | **int**| End row. | [optional] 
 **only_auto** | **boolean**| Only auto. | [optional] [default to false]
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

# **cells_worksheets_post_copy_worksheet**
> SaaSposeResponse cells_worksheets_post_copy_worksheet(name => $name, sheet_name => $sheet_name, source_sheet => $source_sheet, options => $options, source_workbook => $source_workbook, source_folder => $source_folder, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $source_sheet = 'source_sheet_example'; # string | 
my $options = AsposeCellsCloud::Object::CopyOptions->new(); # CopyOptions | 
my $source_workbook = 'source_workbook_example'; # string | 
my $source_folder = 'source_folder_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_copy_worksheet(name => $name, sheet_name => $sheet_name, source_sheet => $source_sheet, options => $options, source_workbook => $source_workbook, source_folder => $source_folder, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_copy_worksheet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **source_sheet** | **string**|  | 
 **options** | [**CopyOptions**](CopyOptions.md)|  | [optional] 
 **source_workbook** | **string**|  | [optional] 
 **source_folder** | **string**|  | [optional] 
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

# **cells_worksheets_post_move_worksheet**
> WorksheetsResponse cells_worksheets_post_move_worksheet(name => $name, sheet_name => $sheet_name, moving => $moving, folder => $folder, storage => $storage)

Move worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $moving = AsposeCellsCloud::Object::WorksheetMovingRequest->new(); # WorksheetMovingRequest | with moving parameters.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_move_worksheet(name => $name, sheet_name => $sheet_name, moving => $moving, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_move_worksheet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **moving** | [**WorksheetMovingRequest**](WorksheetMovingRequest.md)| with moving parameters. | [optional] 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorksheetsResponse**](WorksheetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_post_rename_worksheet**
> SaaSposeResponse cells_worksheets_post_rename_worksheet(name => $name, sheet_name => $sheet_name, newname => $newname, folder => $folder, storage => $storage)

Rename worksheet

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $newname = 'newname_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_rename_worksheet(name => $name, sheet_name => $sheet_name, newname => $newname, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_rename_worksheet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **newname** | **string**|  | 
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

# **cells_worksheets_post_update_worksheet_property**
> WorksheetResponse cells_worksheets_post_update_worksheet_property(name => $name, sheet_name => $sheet_name, sheet => $sheet, folder => $folder, storage => $storage)

Update worksheet property

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $sheet = AsposeCellsCloud::Object::Worksheet->new(); # Worksheet | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_update_worksheet_property(name => $name, sheet_name => $sheet_name, sheet => $sheet, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_update_worksheet_property: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **sheet** | [**Worksheet**](Worksheet.md)|  | [optional] 
 **folder** | **string**|  | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorksheetResponse**](WorksheetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_post_update_worksheet_zoom**
> SaaSposeResponse cells_worksheets_post_update_worksheet_zoom(name => $name, sheet_name => $sheet_name, value => $value, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $value = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_update_worksheet_zoom(name => $name, sheet_name => $sheet_name, value => $value, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_update_worksheet_zoom: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **value** | **int**|  | 
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

# **cells_worksheets_post_worksheet_comment**
> SaaSposeResponse cells_worksheets_post_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, comment => $comment, folder => $folder, storage => $storage)

Update worksheet's cell comment.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | The document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $cell_name = 'cell_name_example'; # string | The cell name
my $comment = AsposeCellsCloud::Object::Comment->new(); # Comment | Comment object
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, comment => $comment, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_worksheet_comment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **cell_name** | **string**| The cell name | 
 **comment** | [**Comment**](Comment.md)| Comment object | [optional] 
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

# **cells_worksheets_post_worksheet_range_sort**
> SaaSposeResponse cells_worksheets_post_worksheet_range_sort(name => $name, sheet_name => $sheet_name, cell_area => $cell_area, data_sorter => $data_sorter, folder => $folder, storage => $storage)

Sort worksheet range.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $cell_area = 'cell_area_example'; # string | The range to sort.
my $data_sorter = AsposeCellsCloud::Object::DataSorter->new(); # DataSorter | with sorting settings.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_worksheet_range_sort(name => $name, sheet_name => $sheet_name, cell_area => $cell_area, data_sorter => $data_sorter, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_worksheet_range_sort: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **cell_area** | **string**| The range to sort. | 
 **data_sorter** | [**DataSorter**](DataSorter.md)| with sorting settings. | [optional] 
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

# **cells_worksheets_post_worksheet_text_search**
> TextItemsResponse cells_worksheets_post_worksheet_text_search(name => $name, sheet_name => $sheet_name, text => $text, folder => $folder, storage => $storage)

Search text.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $text = 'text_example'; # string | Text to search.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_worksheet_text_search(name => $name, sheet_name => $sheet_name, text => $text, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_worksheet_text_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **text** | **string**| Text to search. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**TextItemsResponse**](TextItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_post_worsheet_text_replace**
> WorksheetReplaceResponse cells_worksheets_post_worsheet_text_replace(name => $name, sheet_name => $sheet_name, old_value => $old_value, new_value => $new_value, folder => $folder, storage => $storage)

Replace text.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $old_value = 'old_value_example'; # string | The old text to replace.
my $new_value = 'new_value_example'; # string | The new text to replace by.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_post_worsheet_text_replace(name => $name, sheet_name => $sheet_name, old_value => $old_value, new_value => $new_value, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_post_worsheet_text_replace: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **old_value** | **string**| The old text to replace. | 
 **new_value** | **string**| The new text to replace by. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorksheetReplaceResponse**](WorksheetReplaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_put_add_new_worksheet**
> WorksheetsResponse cells_worksheets_put_add_new_worksheet(name => $name, sheet_name => $sheet_name, position => $position, sheettype => $sheettype, folder => $folder, storage => $storage)

Add new worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The new sheet name.
my $position = 56; # int | The new sheet position.
my $sheettype = 'sheettype_example'; # string | The new sheet type.
my $folder = 'folder_example'; # string | Document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_put_add_new_worksheet(name => $name, sheet_name => $sheet_name, position => $position, sheettype => $sheettype, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_put_add_new_worksheet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The new sheet name. | 
 **position** | **int**| The new sheet position. | [optional] 
 **sheettype** | **string**| The new sheet type. | [optional] 
 **folder** | **string**| Document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorksheetsResponse**](WorksheetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_put_change_visibility_worksheet**
> WorksheetResponse cells_worksheets_put_change_visibility_worksheet(name => $name, sheet_name => $sheet_name, is_visible => $is_visible, folder => $folder, storage => $storage)

Change worksheet visibility.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $is_visible = 1; # boolean | New worksheet visibility value.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_put_change_visibility_worksheet(name => $name, sheet_name => $sheet_name, is_visible => $is_visible, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_put_change_visibility_worksheet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **is_visible** | **boolean**| New worksheet visibility value. | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorksheetResponse**](WorksheetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_put_protect_worksheet**
> WorksheetResponse cells_worksheets_put_protect_worksheet(name => $name, sheet_name => $sheet_name, protect_parameter => $protect_parameter, folder => $folder, storage => $storage)

Protect worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $protect_parameter = AsposeCellsCloud::Object::ProtectSheetParameter->new(); # ProtectSheetParameter | with protection settings.
my $folder = 'folder_example'; # string | Document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_put_protect_worksheet(name => $name, sheet_name => $sheet_name, protect_parameter => $protect_parameter, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_put_protect_worksheet: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **protect_parameter** | [**ProtectSheetParameter**](ProtectSheetParameter.md)| with protection settings. | [optional] 
 **folder** | **string**| Document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorksheetResponse**](WorksheetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_put_worksheet_background**
> SaaSposeResponse cells_worksheets_put_worksheet_background(name => $name, sheet_name => $sheet_name, png => $png, folder => $folder, storage => $storage)

Set worksheet background image.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $png = AsposeCellsCloud::Object::string->new(); # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_put_worksheet_background(name => $name, sheet_name => $sheet_name, png => $png, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_put_worksheet_background: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **png** | **string**|  | 
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

# **cells_worksheets_put_worksheet_comment**
> CommentResponse cells_worksheets_put_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, comment => $comment, folder => $folder, storage => $storage)

Add worksheet's cell comment.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | The document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $cell_name = 'cell_name_example'; # string | The cell name
my $comment = AsposeCellsCloud::Object::Comment->new(); # Comment | Comment object
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_put_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, comment => $comment, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_put_worksheet_comment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **cell_name** | **string**| The cell name | 
 **comment** | [**Comment**](Comment.md)| Comment object | [optional] 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**CommentResponse**](CommentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_worksheets_put_worksheet_freeze_panes**
> SaaSposeResponse cells_worksheets_put_worksheet_freeze_panes(name => $name, sheet_name => $sheet_name, row => $row, column => $column, freezed_rows => $freezed_rows, freezed_columns => $freezed_columns, folder => $folder, storage => $storage)

Set freeze panes

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorksheetsApi;
my $api_instance = AsposeCellsCloud::CellsWorksheetsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $row = 56; # int | 
my $column = 56; # int | 
my $freezed_rows = 56; # int | 
my $freezed_columns = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_worksheets_put_worksheet_freeze_panes(name => $name, sheet_name => $sheet_name, row => $row, column => $column, freezed_rows => $freezed_rows, freezed_columns => $freezed_columns, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorksheetsApi->cells_worksheets_put_worksheet_freeze_panes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **row** | **int**|  | 
 **column** | **int**|  | 
 **freezed_rows** | **int**|  | 
 **freezed_columns** | **int**|  | 
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

