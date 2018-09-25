# AsposeCellsCloud::CellsPageBreaksApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsPageBreaksApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_page_breaks_delete_horizontal_page_break**](CellsPageBreaksApi.md#cells_page_breaks_delete_horizontal_page_break) | **DELETE** /cells/{name}/worksheets/{sheetName}/horizontalpagebreaks/{index} | 
[**cells_page_breaks_delete_horizontal_page_breaks**](CellsPageBreaksApi.md#cells_page_breaks_delete_horizontal_page_breaks) | **DELETE** /cells/{name}/worksheets/{sheetName}/horizontalpagebreaks | 
[**cells_page_breaks_delete_vertical_page_break**](CellsPageBreaksApi.md#cells_page_breaks_delete_vertical_page_break) | **DELETE** /cells/{name}/worksheets/{sheetName}/verticalpagebreaks/{index} | 
[**cells_page_breaks_delete_vertical_page_breaks**](CellsPageBreaksApi.md#cells_page_breaks_delete_vertical_page_breaks) | **DELETE** /cells/{name}/worksheets/{sheetName}/verticalpagebreaks | 
[**cells_page_breaks_get_horizontal_page_break**](CellsPageBreaksApi.md#cells_page_breaks_get_horizontal_page_break) | **GET** /cells/{name}/worksheets/{sheetName}/horizontalpagebreaks/{index} | 
[**cells_page_breaks_get_horizontal_page_breaks**](CellsPageBreaksApi.md#cells_page_breaks_get_horizontal_page_breaks) | **GET** /cells/{name}/worksheets/{sheetName}/horizontalpagebreaks | 
[**cells_page_breaks_get_vertical_page_break**](CellsPageBreaksApi.md#cells_page_breaks_get_vertical_page_break) | **GET** /cells/{name}/worksheets/{sheetName}/verticalpagebreaks/{index} | 
[**cells_page_breaks_get_vertical_page_breaks**](CellsPageBreaksApi.md#cells_page_breaks_get_vertical_page_breaks) | **GET** /cells/{name}/worksheets/{sheetName}/verticalpagebreaks | 
[**cells_page_breaks_put_horizontal_page_break**](CellsPageBreaksApi.md#cells_page_breaks_put_horizontal_page_break) | **PUT** /cells/{name}/worksheets/{sheetName}/horizontalpagebreaks | 
[**cells_page_breaks_put_vertical_page_break**](CellsPageBreaksApi.md#cells_page_breaks_put_vertical_page_break) | **PUT** /cells/{name}/worksheets/{sheetName}/verticalpagebreaks | 


# **cells_page_breaks_delete_horizontal_page_break**
> SaaSposeResponse cells_page_breaks_delete_horizontal_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageBreaksApi;
my $api_instance = AsposeCellsCloud::CellsPageBreaksApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_breaks_delete_horizontal_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageBreaksApi->cells_page_breaks_delete_horizontal_page_break: $@\n";
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

# **cells_page_breaks_delete_horizontal_page_breaks**
> SaaSposeResponse cells_page_breaks_delete_horizontal_page_breaks(name => $name, sheet_name => $sheet_name, row => $row, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageBreaksApi;
my $api_instance = AsposeCellsCloud::CellsPageBreaksApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $row = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_breaks_delete_horizontal_page_breaks(name => $name, sheet_name => $sheet_name, row => $row, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageBreaksApi->cells_page_breaks_delete_horizontal_page_breaks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **row** | **int**|  | [optional] 
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

# **cells_page_breaks_delete_vertical_page_break**
> SaaSposeResponse cells_page_breaks_delete_vertical_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageBreaksApi;
my $api_instance = AsposeCellsCloud::CellsPageBreaksApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_breaks_delete_vertical_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageBreaksApi->cells_page_breaks_delete_vertical_page_break: $@\n";
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

# **cells_page_breaks_delete_vertical_page_breaks**
> SaaSposeResponse cells_page_breaks_delete_vertical_page_breaks(name => $name, sheet_name => $sheet_name, column => $column, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageBreaksApi;
my $api_instance = AsposeCellsCloud::CellsPageBreaksApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $column = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_breaks_delete_vertical_page_breaks(name => $name, sheet_name => $sheet_name, column => $column, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageBreaksApi->cells_page_breaks_delete_vertical_page_breaks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **column** | **int**|  | [optional] 
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

# **cells_page_breaks_get_horizontal_page_break**
> HorizontalPageBreakResponse cells_page_breaks_get_horizontal_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageBreaksApi;
my $api_instance = AsposeCellsCloud::CellsPageBreaksApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_breaks_get_horizontal_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageBreaksApi->cells_page_breaks_get_horizontal_page_break: $@\n";
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

[**HorizontalPageBreakResponse**](HorizontalPageBreakResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_page_breaks_get_horizontal_page_breaks**
> HorizontalPageBreaksResponse cells_page_breaks_get_horizontal_page_breaks(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageBreaksApi;
my $api_instance = AsposeCellsCloud::CellsPageBreaksApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_breaks_get_horizontal_page_breaks(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageBreaksApi->cells_page_breaks_get_horizontal_page_breaks: $@\n";
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

[**HorizontalPageBreaksResponse**](HorizontalPageBreaksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_page_breaks_get_vertical_page_break**
> VerticalPageBreakResponse cells_page_breaks_get_vertical_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageBreaksApi;
my $api_instance = AsposeCellsCloud::CellsPageBreaksApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_breaks_get_vertical_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageBreaksApi->cells_page_breaks_get_vertical_page_break: $@\n";
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

[**VerticalPageBreakResponse**](VerticalPageBreakResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_page_breaks_get_vertical_page_breaks**
> VerticalPageBreaksResponse cells_page_breaks_get_vertical_page_breaks(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageBreaksApi;
my $api_instance = AsposeCellsCloud::CellsPageBreaksApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_breaks_get_vertical_page_breaks(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageBreaksApi->cells_page_breaks_get_vertical_page_breaks: $@\n";
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

[**VerticalPageBreaksResponse**](VerticalPageBreaksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_page_breaks_put_horizontal_page_break**
> SaaSposeResponse cells_page_breaks_put_horizontal_page_break(name => $name, sheet_name => $sheet_name, cellname => $cellname, row => $row, column => $column, start_column => $start_column, end_column => $end_column, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageBreaksApi;
my $api_instance = AsposeCellsCloud::CellsPageBreaksApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $cellname = 'cellname_example'; # string | 
my $row = 56; # int | 
my $column = 56; # int | 
my $start_column = 56; # int | 
my $end_column = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_breaks_put_horizontal_page_break(name => $name, sheet_name => $sheet_name, cellname => $cellname, row => $row, column => $column, start_column => $start_column, end_column => $end_column, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageBreaksApi->cells_page_breaks_put_horizontal_page_break: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **cellname** | **string**|  | [optional] 
 **row** | **int**|  | [optional] 
 **column** | **int**|  | [optional] 
 **start_column** | **int**|  | [optional] 
 **end_column** | **int**|  | [optional] 
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

# **cells_page_breaks_put_vertical_page_break**
> SaaSposeResponse cells_page_breaks_put_vertical_page_break(name => $name, sheet_name => $sheet_name, cellname => $cellname, column => $column, row => $row, start_row => $start_row, end_row => $end_row, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageBreaksApi;
my $api_instance = AsposeCellsCloud::CellsPageBreaksApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $cellname = 'cellname_example'; # string | 
my $column = 56; # int | 
my $row = 56; # int | 
my $start_row = 56; # int | 
my $end_row = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_breaks_put_vertical_page_break(name => $name, sheet_name => $sheet_name, cellname => $cellname, column => $column, row => $row, start_row => $start_row, end_row => $end_row, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageBreaksApi->cells_page_breaks_put_vertical_page_break: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **cellname** | **string**|  | [optional] 
 **column** | **int**|  | [optional] 
 **row** | **int**|  | [optional] 
 **start_row** | **int**|  | [optional] 
 **end_row** | **int**|  | [optional] 
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

