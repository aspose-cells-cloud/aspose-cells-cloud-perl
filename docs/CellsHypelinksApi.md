# AsposeCellsCloud::CellsHypelinksApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsHypelinksApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_hypelinks_delete_worksheet_hyperlink**](CellsHypelinksApi.md#cells_hypelinks_delete_worksheet_hyperlink) | **DELETE** /cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex} | Delete worksheet hyperlink by index.
[**cells_hypelinks_delete_worksheet_hyperlinks**](CellsHypelinksApi.md#cells_hypelinks_delete_worksheet_hyperlinks) | **DELETE** /cells/{name}/worksheets/{sheetName}/hyperlinks | Delete all hyperlinks in worksheet.
[**cells_hypelinks_get_worksheet_hyperlink**](CellsHypelinksApi.md#cells_hypelinks_get_worksheet_hyperlink) | **GET** /cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex} | Get worksheet hyperlink by index.
[**cells_hypelinks_get_worksheet_hyperlinks**](CellsHypelinksApi.md#cells_hypelinks_get_worksheet_hyperlinks) | **GET** /cells/{name}/worksheets/{sheetName}/hyperlinks | Get worksheet hyperlinks.
[**cells_hypelinks_post_worksheet_hyperlink**](CellsHypelinksApi.md#cells_hypelinks_post_worksheet_hyperlink) | **POST** /cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex} | Update worksheet hyperlink by index.
[**cells_hypelinks_put_worksheet_hyperlink**](CellsHypelinksApi.md#cells_hypelinks_put_worksheet_hyperlink) | **PUT** /cells/{name}/worksheets/{sheetName}/hyperlinks | Add worksheet hyperlink.


# **cells_hypelinks_delete_worksheet_hyperlink**
> SaaSposeResponse cells_hypelinks_delete_worksheet_hyperlink(name => $name, sheet_name => $sheet_name, hyperlink_index => $hyperlink_index, folder => $folder, storage => $storage)

Delete worksheet hyperlink by index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsHypelinksApi;
my $api_instance = AsposeCellsCloud::CellsHypelinksApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $hyperlink_index = 56; # int | The hyperlink's index.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_hypelinks_delete_worksheet_hyperlink(name => $name, sheet_name => $sheet_name, hyperlink_index => $hyperlink_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsHypelinksApi->cells_hypelinks_delete_worksheet_hyperlink: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **hyperlink_index** | **int**| The hyperlink&#39;s index. | 
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

# **cells_hypelinks_delete_worksheet_hyperlinks**
> SaaSposeResponse cells_hypelinks_delete_worksheet_hyperlinks(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Delete all hyperlinks in worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsHypelinksApi;
my $api_instance = AsposeCellsCloud::CellsHypelinksApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_hypelinks_delete_worksheet_hyperlinks(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsHypelinksApi->cells_hypelinks_delete_worksheet_hyperlinks: $@\n";
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

# **cells_hypelinks_get_worksheet_hyperlink**
> HyperlinkResponse cells_hypelinks_get_worksheet_hyperlink(name => $name, sheet_name => $sheet_name, hyperlink_index => $hyperlink_index, folder => $folder, storage => $storage)

Get worksheet hyperlink by index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsHypelinksApi;
my $api_instance = AsposeCellsCloud::CellsHypelinksApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $hyperlink_index = 56; # int | The hyperlink's index.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_hypelinks_get_worksheet_hyperlink(name => $name, sheet_name => $sheet_name, hyperlink_index => $hyperlink_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsHypelinksApi->cells_hypelinks_get_worksheet_hyperlink: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **hyperlink_index** | **int**| The hyperlink&#39;s index. | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**HyperlinkResponse**](HyperlinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_hypelinks_get_worksheet_hyperlinks**
> HyperlinksResponse cells_hypelinks_get_worksheet_hyperlinks(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet hyperlinks.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsHypelinksApi;
my $api_instance = AsposeCellsCloud::CellsHypelinksApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_hypelinks_get_worksheet_hyperlinks(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsHypelinksApi->cells_hypelinks_get_worksheet_hyperlinks: $@\n";
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

[**HyperlinksResponse**](HyperlinksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_hypelinks_post_worksheet_hyperlink**
> HyperlinkResponse cells_hypelinks_post_worksheet_hyperlink(name => $name, sheet_name => $sheet_name, hyperlink_index => $hyperlink_index, hyperlink => $hyperlink, folder => $folder, storage => $storage)

Update worksheet hyperlink by index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsHypelinksApi;
my $api_instance = AsposeCellsCloud::CellsHypelinksApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $hyperlink_index = 56; # int | The hyperlink's index.
my $hyperlink = AsposeCellsCloud::Object::Hyperlink->new(); # Hyperlink | Hyperlink object
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_hypelinks_post_worksheet_hyperlink(name => $name, sheet_name => $sheet_name, hyperlink_index => $hyperlink_index, hyperlink => $hyperlink, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsHypelinksApi->cells_hypelinks_post_worksheet_hyperlink: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **hyperlink_index** | **int**| The hyperlink&#39;s index. | 
 **hyperlink** | [**Hyperlink**](Hyperlink.md)| Hyperlink object | [optional] 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**HyperlinkResponse**](HyperlinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_hypelinks_put_worksheet_hyperlink**
> HyperlinkResponse cells_hypelinks_put_worksheet_hyperlink(name => $name, sheet_name => $sheet_name, first_row => $first_row, first_column => $first_column, total_rows => $total_rows, total_columns => $total_columns, address => $address, folder => $folder, storage => $storage)

Add worksheet hyperlink.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsHypelinksApi;
my $api_instance = AsposeCellsCloud::CellsHypelinksApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $first_row = 56; # int | 
my $first_column = 56; # int | 
my $total_rows = 56; # int | 
my $total_columns = 56; # int | 
my $address = 'address_example'; # string | 
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_hypelinks_put_worksheet_hyperlink(name => $name, sheet_name => $sheet_name, first_row => $first_row, first_column => $first_column, total_rows => $total_rows, total_columns => $total_columns, address => $address, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsHypelinksApi->cells_hypelinks_put_worksheet_hyperlink: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **first_row** | **int**|  | 
 **first_column** | **int**|  | 
 **total_rows** | **int**|  | 
 **total_columns** | **int**|  | 
 **address** | **string**|  | 
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**HyperlinkResponse**](HyperlinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

