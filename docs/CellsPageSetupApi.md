# AsposeCellsCloud::CellsPageSetupApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsPageSetupApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_page_setup_delete_header_footer**](CellsPageSetupApi.md#cells_page_setup_delete_header_footer) | **DELETE** /cells/{name}/worksheets/{sheetName}/pagesetup/clearheaderfooter | clear header footer
[**cells_page_setup_get_footer**](CellsPageSetupApi.md#cells_page_setup_get_footer) | **GET** /cells/{name}/worksheets/{sheetName}/pagesetup/footer | get page footer information
[**cells_page_setup_get_header**](CellsPageSetupApi.md#cells_page_setup_get_header) | **GET** /cells/{name}/worksheets/{sheetName}/pagesetup/header | get page header information
[**cells_page_setup_get_page_setup**](CellsPageSetupApi.md#cells_page_setup_get_page_setup) | **GET** /cells/{name}/worksheets/{sheetName}/pagesetup | Get Page Setup information.             
[**cells_page_setup_post_footer**](CellsPageSetupApi.md#cells_page_setup_post_footer) | **POST** /cells/{name}/worksheets/{sheetName}/pagesetup/footer | update  page footer information 
[**cells_page_setup_post_header**](CellsPageSetupApi.md#cells_page_setup_post_header) | **POST** /cells/{name}/worksheets/{sheetName}/pagesetup/header | update  page header information 
[**cells_page_setup_post_page_setup**](CellsPageSetupApi.md#cells_page_setup_post_page_setup) | **POST** /cells/{name}/worksheets/{sheetName}/pagesetup | Update Page Setup information.


# **cells_page_setup_delete_header_footer**
> SaaSposeResponse cells_page_setup_delete_header_footer(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

clear header footer

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageSetupApi;
my $api_instance = AsposeCellsCloud::CellsPageSetupApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_setup_delete_header_footer(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageSetupApi->cells_page_setup_delete_header_footer: $@\n";
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

# **cells_page_setup_get_footer**
> PageSectionsResponse cells_page_setup_get_footer(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

get page footer information

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageSetupApi;
my $api_instance = AsposeCellsCloud::CellsPageSetupApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_setup_get_footer(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageSetupApi->cells_page_setup_get_footer: $@\n";
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

[**PageSectionsResponse**](PageSectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_page_setup_get_header**
> PageSectionsResponse cells_page_setup_get_header(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

get page header information

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageSetupApi;
my $api_instance = AsposeCellsCloud::CellsPageSetupApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_setup_get_header(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageSetupApi->cells_page_setup_get_header: $@\n";
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

[**PageSectionsResponse**](PageSectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_page_setup_get_page_setup**
> PageSetupResponse cells_page_setup_get_page_setup(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get Page Setup information.             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageSetupApi;
my $api_instance = AsposeCellsCloud::CellsPageSetupApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_setup_get_page_setup(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageSetupApi->cells_page_setup_get_page_setup: $@\n";
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

[**PageSetupResponse**](PageSetupResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_page_setup_post_footer**
> SaaSposeResponse cells_page_setup_post_footer(name => $name, sheet_name => $sheet_name, section => $section, script => $script, is_first_page => $is_first_page, folder => $folder, storage => $storage)

update  page footer information 

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageSetupApi;
my $api_instance = AsposeCellsCloud::CellsPageSetupApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $section = 56; # int | 
my $script = 'script_example'; # string | 
my $is_first_page = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_setup_post_footer(name => $name, sheet_name => $sheet_name, section => $section, script => $script, is_first_page => $is_first_page, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageSetupApi->cells_page_setup_post_footer: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **section** | **int**|  | 
 **script** | **string**|  | 
 **is_first_page** | **boolean**|  | 
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

# **cells_page_setup_post_header**
> SaaSposeResponse cells_page_setup_post_header(name => $name, sheet_name => $sheet_name, section => $section, script => $script, is_first_page => $is_first_page, folder => $folder, storage => $storage)

update  page header information 

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageSetupApi;
my $api_instance = AsposeCellsCloud::CellsPageSetupApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $section = 56; # int | 
my $script = 'script_example'; # string | 
my $is_first_page = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_setup_post_header(name => $name, sheet_name => $sheet_name, section => $section, script => $script, is_first_page => $is_first_page, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageSetupApi->cells_page_setup_post_header: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **section** | **int**|  | 
 **script** | **string**|  | 
 **is_first_page** | **boolean**|  | 
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

# **cells_page_setup_post_page_setup**
> SaaSposeResponse cells_page_setup_post_page_setup(name => $name, sheet_name => $sheet_name, page_setup => $page_setup, folder => $folder, storage => $storage)

Update Page Setup information.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsPageSetupApi;
my $api_instance = AsposeCellsCloud::CellsPageSetupApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $page_setup = AsposeCellsCloud::Object::PageSetup->new(); # PageSetup | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_page_setup_post_page_setup(name => $name, sheet_name => $sheet_name, page_setup => $page_setup, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsPageSetupApi->cells_page_setup_post_page_setup: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **page_setup** | [**PageSetup**](PageSetup.md)|  | [optional] 
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

