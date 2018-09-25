# AsposeCellsCloud::CellsWorkbookApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsWorkbookApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_workbook_delete_decrypt_document**](CellsWorkbookApi.md#cells_workbook_delete_decrypt_document) | **DELETE** /cells/{name}/encryption | Decrypt document.
[**cells_workbook_delete_document_unprotect_from_changes**](CellsWorkbookApi.md#cells_workbook_delete_document_unprotect_from_changes) | **DELETE** /cells/{name}/writeProtection | Unprotect document from changes.
[**cells_workbook_delete_unprotect_document**](CellsWorkbookApi.md#cells_workbook_delete_unprotect_document) | **DELETE** /cells/{name}/protection | Unprotect document.
[**cells_workbook_delete_workbook_name**](CellsWorkbookApi.md#cells_workbook_delete_workbook_name) | **DELETE** /cells/{name}/names/{nameName} | Clean workbook&#39;s names.
[**cells_workbook_delete_workbook_names**](CellsWorkbookApi.md#cells_workbook_delete_workbook_names) | **DELETE** /cells/{name}/names | Clean workbook&#39;s names.
[**cells_workbook_get_workbook**](CellsWorkbookApi.md#cells_workbook_get_workbook) | **GET** /cells/{name} | Read workbook info or export.
[**cells_workbook_get_workbook_default_style**](CellsWorkbookApi.md#cells_workbook_get_workbook_default_style) | **GET** /cells/{name}/defaultstyle | Read workbook default style info.
[**cells_workbook_get_workbook_name**](CellsWorkbookApi.md#cells_workbook_get_workbook_name) | **GET** /cells/{name}/names/{nameName} | Read workbook&#39;s name.
[**cells_workbook_get_workbook_name_value**](CellsWorkbookApi.md#cells_workbook_get_workbook_name_value) | **GET** /cells/{name}/names/{nameName}/value | Get workbook&#39;s name value.
[**cells_workbook_get_workbook_names**](CellsWorkbookApi.md#cells_workbook_get_workbook_names) | **GET** /cells/{name}/names | Read workbook&#39;s names.
[**cells_workbook_get_workbook_settings**](CellsWorkbookApi.md#cells_workbook_get_workbook_settings) | **GET** /cells/{name}/settings | Get Workbook Settings DTO
[**cells_workbook_get_workbook_text_items**](CellsWorkbookApi.md#cells_workbook_get_workbook_text_items) | **GET** /cells/{name}/textItems | Read workbook&#39;s text items.
[**cells_workbook_post_autofit_workbook_rows**](CellsWorkbookApi.md#cells_workbook_post_autofit_workbook_rows) | **POST** /cells/{name}/autofitrows | Autofit workbook rows.
[**cells_workbook_post_encrypt_document**](CellsWorkbookApi.md#cells_workbook_post_encrypt_document) | **POST** /cells/{name}/encryption | Encript document.
[**cells_workbook_post_import_data**](CellsWorkbookApi.md#cells_workbook_post_import_data) | **POST** /cells/{name}/importdata | 
[**cells_workbook_post_protect_document**](CellsWorkbookApi.md#cells_workbook_post_protect_document) | **POST** /cells/{name}/protection | Protect document.
[**cells_workbook_post_workbook_calculate_formula**](CellsWorkbookApi.md#cells_workbook_post_workbook_calculate_formula) | **POST** /cells/{name}/calculateformula | Calculate all formulas in workbook.
[**cells_workbook_post_workbook_get_smart_marker_result**](CellsWorkbookApi.md#cells_workbook_post_workbook_get_smart_marker_result) | **POST** /cells/{name}/smartmarker | Smart marker processing result.
[**cells_workbook_post_workbook_settings**](CellsWorkbookApi.md#cells_workbook_post_workbook_settings) | **POST** /cells/{name}/settings | Update Workbook setting 
[**cells_workbook_post_workbook_split**](CellsWorkbookApi.md#cells_workbook_post_workbook_split) | **POST** /cells/{name}/split | Split workbook.
[**cells_workbook_post_workbooks_merge**](CellsWorkbookApi.md#cells_workbook_post_workbooks_merge) | **POST** /cells/{name}/merge | Merge workbooks.
[**cells_workbook_post_workbooks_text_replace**](CellsWorkbookApi.md#cells_workbook_post_workbooks_text_replace) | **POST** /cells/{name}/replaceText | Replace text.
[**cells_workbook_post_workbooks_text_search**](CellsWorkbookApi.md#cells_workbook_post_workbooks_text_search) | **POST** /cells/{name}/findText | Search text.
[**cells_workbook_put_convert_workbook**](CellsWorkbookApi.md#cells_workbook_put_convert_workbook) | **PUT** /cells/convert | Convert workbook from request content to some format.
[**cells_workbook_put_document_protect_from_changes**](CellsWorkbookApi.md#cells_workbook_put_document_protect_from_changes) | **PUT** /cells/{name}/writeProtection | Protect document from changes.
[**cells_workbook_put_workbook_create**](CellsWorkbookApi.md#cells_workbook_put_workbook_create) | **PUT** /cells/{name} | Create new workbook using deferent methods.


# **cells_workbook_delete_decrypt_document**
> SaaSposeResponse cells_workbook_delete_decrypt_document(name => $name, encryption => $encryption, folder => $folder, storage => $storage)

Decrypt document.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The document name.
my $encryption = AsposeCellsCloud::Object::WorkbookEncryptionRequest->new(); # WorkbookEncryptionRequest | Encryption settings, only password can be specified.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_delete_decrypt_document(name => $name, encryption => $encryption, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_delete_decrypt_document: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **encryption** | [**WorkbookEncryptionRequest**](WorkbookEncryptionRequest.md)| Encryption settings, only password can be specified. | [optional] 
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

# **cells_workbook_delete_document_unprotect_from_changes**
> SaaSposeResponse cells_workbook_delete_document_unprotect_from_changes(name => $name, folder => $folder, storage => $storage)

Unprotect document from changes.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The document name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_delete_document_unprotect_from_changes(name => $name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_delete_document_unprotect_from_changes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
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

# **cells_workbook_delete_unprotect_document**
> SaaSposeResponse cells_workbook_delete_unprotect_document(name => $name, protection => $protection, folder => $folder, storage => $storage)

Unprotect document.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The document name.
my $protection = AsposeCellsCloud::Object::WorkbookProtectionRequest->new(); # WorkbookProtectionRequest | Protection settings, only password can be specified.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_delete_unprotect_document(name => $name, protection => $protection, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_delete_unprotect_document: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **protection** | [**WorkbookProtectionRequest**](WorkbookProtectionRequest.md)| Protection settings, only password can be specified. | [optional] 
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

# **cells_workbook_delete_workbook_name**
> SaaSposeResponse cells_workbook_delete_workbook_name(name => $name, name_name => $name_name, folder => $folder, storage => $storage)

Clean workbook's names.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $name_name = 'name_name_example'; # string | The name.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_delete_workbook_name(name => $name, name_name => $name_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_delete_workbook_name: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **name_name** | **string**| The name. | 
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

# **cells_workbook_delete_workbook_names**
> SaaSposeResponse cells_workbook_delete_workbook_names(name => $name, folder => $folder, storage => $storage)

Clean workbook's names.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_delete_workbook_names(name => $name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_delete_workbook_names: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
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

# **cells_workbook_get_workbook**
> string cells_workbook_get_workbook(name => $name, password => $password, format => $format, is_auto_fit => $is_auto_fit, only_save_table => $only_save_table, folder => $folder, storage => $storage, out_path => $out_path)

Read workbook info or export.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The document name.
my $password = 'password_example'; # string | The document password.
my $format = 'format_example'; # string | The exported file format.
my $is_auto_fit = 1; # boolean | Set document rows to be autofit.
my $only_save_table = 1; # boolean | Only save table data.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.
my $out_path = 'out_path_example'; # string | The document output folder.

eval { 
    my $result = $api_instance->cells_workbook_get_workbook(name => $name, password => $password, format => $format, is_auto_fit => $is_auto_fit, only_save_table => $only_save_table, folder => $folder, storage => $storage, out_path => $out_path);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **password** | **string**| The document password. | [optional] 
 **format** | **string**| The exported file format. | [optional] 
 **is_auto_fit** | **boolean**| Set document rows to be autofit. | [optional] [default to false]
 **only_save_table** | **boolean**| Only save table data. | [optional] [default to false]
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 
 **out_path** | **string**| The document output folder. | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_get_workbook_default_style**
> StyleResponse cells_workbook_get_workbook_default_style(name => $name, folder => $folder, storage => $storage)

Read workbook default style info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $folder = 'folder_example'; # string | The document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_get_workbook_default_style(name => $name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_default_style: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **folder** | **string**| The document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**StyleResponse**](StyleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_get_workbook_name**
> NameResponse cells_workbook_get_workbook_name(name => $name, name_name => $name_name, folder => $folder, storage => $storage)

Read workbook's name.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $name_name = 'name_name_example'; # string | The name.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_get_workbook_name(name => $name, name_name => $name_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_name: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **name_name** | **string**| The name. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**NameResponse**](NameResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_get_workbook_name_value**
> RangeValueResponse cells_workbook_get_workbook_name_value(name => $name, name_name => $name_name, folder => $folder, storage => $storage)

Get workbook's name value.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $name_name = 'name_name_example'; # string | The name.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_get_workbook_name_value(name => $name, name_name => $name_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_name_value: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **name_name** | **string**| The name. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**RangeValueResponse**](RangeValueResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_get_workbook_names**
> NamesResponse cells_workbook_get_workbook_names(name => $name, folder => $folder, storage => $storage)

Read workbook's names.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_get_workbook_names(name => $name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_names: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**NamesResponse**](NamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_get_workbook_settings**
> WorkbookSettingsResponse cells_workbook_get_workbook_settings(name => $name, folder => $folder, storage => $storage)

Get Workbook Settings DTO

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | Document name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_get_workbook_settings(name => $name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorkbookSettingsResponse**](WorkbookSettingsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_get_workbook_text_items**
> TextItemsResponse cells_workbook_get_workbook_text_items(name => $name, folder => $folder, storage => $storage)

Read workbook's text items.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_get_workbook_text_items(name => $name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_text_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**TextItemsResponse**](TextItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_post_autofit_workbook_rows**
> SaaSposeResponse cells_workbook_post_autofit_workbook_rows(name => $name, auto_fitter_options => $auto_fitter_options, start_row => $start_row, end_row => $end_row, only_auto => $only_auto, folder => $folder, storage => $storage)

Autofit workbook rows.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | Document name.
my $auto_fitter_options = AsposeCellsCloud::Object::AutoFitterOptions->new(); # AutoFitterOptions | Auto Fitter Options.
my $start_row = 56; # int | Start row.
my $end_row = 56; # int | End row.
my $only_auto = 1; # boolean | Only auto.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_post_autofit_workbook_rows(name => $name, auto_fitter_options => $auto_fitter_options, start_row => $start_row, end_row => $end_row, only_auto => $only_auto, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_autofit_workbook_rows: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
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

# **cells_workbook_post_encrypt_document**
> SaaSposeResponse cells_workbook_post_encrypt_document(name => $name, encryption => $encryption, folder => $folder, storage => $storage)

Encript document.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The document name.
my $encryption = AsposeCellsCloud::Object::WorkbookEncryptionRequest->new(); # WorkbookEncryptionRequest | Encryption parameters.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_post_encrypt_document(name => $name, encryption => $encryption, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_encrypt_document: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **encryption** | [**WorkbookEncryptionRequest**](WorkbookEncryptionRequest.md)| Encryption parameters. | [optional] 
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

# **cells_workbook_post_import_data**
> SaaSposeResponse cells_workbook_post_import_data(name => $name, importdata => $importdata, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | 
my $importdata = AsposeCellsCloud::Object::String->new(); # String | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_post_import_data(name => $name, importdata => $importdata, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_import_data: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **importdata** | [**String**](String.md)|  | 
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

# **cells_workbook_post_protect_document**
> SaaSposeResponse cells_workbook_post_protect_document(name => $name, protection => $protection, folder => $folder, storage => $storage)

Protect document.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The document name.
my $protection = AsposeCellsCloud::Object::WorkbookProtectionRequest->new(); # WorkbookProtectionRequest | The protection settings.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_post_protect_document(name => $name, protection => $protection, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_protect_document: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **protection** | [**WorkbookProtectionRequest**](WorkbookProtectionRequest.md)| The protection settings. | [optional] 
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

# **cells_workbook_post_workbook_calculate_formula**
> SaaSposeResponse cells_workbook_post_workbook_calculate_formula(name => $name, options => $options, ignore_error => $ignore_error, folder => $folder, storage => $storage)

Calculate all formulas in workbook.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | Document name.
my $options = AsposeCellsCloud::Object::CalculationOptions->new(); # CalculationOptions | Calculation Options.
my $ignore_error = 1; # boolean | ignore Error.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_post_workbook_calculate_formula(name => $name, options => $options, ignore_error => $ignore_error, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_workbook_calculate_formula: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **options** | [**CalculationOptions**](CalculationOptions.md)| Calculation Options. | [optional] 
 **ignore_error** | **boolean**| ignore Error. | [optional] 
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

# **cells_workbook_post_workbook_get_smart_marker_result**
> string cells_workbook_post_workbook_get_smart_marker_result(name => $name, xml_file => $xml_file, folder => $folder, storage => $storage, out_path => $out_path)

Smart marker processing result.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $xml_file = 'xml_file_example'; # string | The xml file full path, if empty the data is read from request body.
my $folder = 'folder_example'; # string | The workbook folder full path.
my $storage = 'storage_example'; # string | storage name.
my $out_path = 'out_path_example'; # string | Path to save result

eval { 
    my $result = $api_instance->cells_workbook_post_workbook_get_smart_marker_result(name => $name, xml_file => $xml_file, folder => $folder, storage => $storage, out_path => $out_path);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_workbook_get_smart_marker_result: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **xml_file** | **string**| The xml file full path, if empty the data is read from request body. | [optional] 
 **folder** | **string**| The workbook folder full path. | [optional] 
 **storage** | **string**| storage name. | [optional] 
 **out_path** | **string**| Path to save result | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_post_workbook_settings**
> SaaSposeResponse cells_workbook_post_workbook_settings(name => $name, settings => $settings, folder => $folder, storage => $storage)

Update Workbook setting 

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | Document name.
my $settings = AsposeCellsCloud::Object::WorkbookSettings->new(); # WorkbookSettings | Workbook Setting DTO
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_post_workbook_settings(name => $name, settings => $settings, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_workbook_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **settings** | [**WorkbookSettings**](WorkbookSettings.md)| Workbook Setting DTO | [optional] 
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

# **cells_workbook_post_workbook_split**
> SplitResultResponse cells_workbook_post_workbook_split(name => $name, format => $format, from => $from, to => $to, horizontal_resolution => $horizontal_resolution, vertical_resolution => $vertical_resolution, folder => $folder, storage => $storage)

Split workbook.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The workbook name.
my $format = 'format_example'; # string | Split format.
my $from = 56; # int | Start worksheet index.
my $to = 56; # int | End worksheet index.
my $horizontal_resolution = 56; # int | Image horizontal resolution.
my $vertical_resolution = 56; # int | Image vertical resolution.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_post_workbook_split(name => $name, format => $format, from => $from, to => $to, horizontal_resolution => $horizontal_resolution, vertical_resolution => $vertical_resolution, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_workbook_split: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The workbook name. | 
 **format** | **string**| Split format. | [optional] 
 **from** | **int**| Start worksheet index. | [optional] [default to 0]
 **to** | **int**| End worksheet index. | [optional] [default to 0]
 **horizontal_resolution** | **int**| Image horizontal resolution. | [optional] [default to 0]
 **vertical_resolution** | **int**| Image vertical resolution. | [optional] [default to 0]
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SplitResultResponse**](SplitResultResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_post_workbooks_merge**
> WorkbookResponse cells_workbook_post_workbooks_merge(name => $name, merge_with => $merge_with, folder => $folder, storage => $storage)

Merge workbooks.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $merge_with = 'merge_with_example'; # string | The workbook to merge with.
my $folder = 'folder_example'; # string | Source workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_post_workbooks_merge(name => $name, merge_with => $merge_with, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_workbooks_merge: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **merge_with** | **string**| The workbook to merge with. | 
 **folder** | **string**| Source workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorkbookResponse**](WorkbookResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_post_workbooks_text_replace**
> WorkbookReplaceResponse cells_workbook_post_workbooks_text_replace(name => $name, old_value => $old_value, new_value => $new_value, folder => $folder, storage => $storage)

Replace text.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | Document name.
my $old_value = 'old_value_example'; # string | The old value.
my $new_value = 'new_value_example'; # string | The new value.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_post_workbooks_text_replace(name => $name, old_value => $old_value, new_value => $new_value, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_workbooks_text_replace: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **old_value** | **string**| The old value. | 
 **new_value** | **string**| The new value. | 
 **folder** | **string**| Document&#39;s folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorkbookReplaceResponse**](WorkbookReplaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_post_workbooks_text_search**
> TextItemsResponse cells_workbook_post_workbooks_text_search(name => $name, text => $text, folder => $folder, storage => $storage)

Search text.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | Document name.
my $text = 'text_example'; # string | Text sample.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_post_workbooks_text_search(name => $name, text => $text, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_post_workbooks_text_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **text** | **string**| Text sample. | 
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

# **cells_workbook_put_convert_workbook**
> string cells_workbook_put_convert_workbook(format => $format, password => $password, out_path => $out_path)

Convert workbook from request content to some format.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $format = 'format_example'; # string | The format to convert.
my $password = 'password_example'; # string | The workbook password.
my $out_path = 'out_path_example'; # string | Path to save result

eval { 
    my $result = $api_instance->cells_workbook_put_convert_workbook(format => $format, password => $password, out_path => $out_path);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_put_convert_workbook: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **string**| The format to convert. | [optional] 
 **password** | **string**| The workbook password. | [optional] 
 **out_path** | **string**| Path to save result | [optional] 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_workbook_put_document_protect_from_changes**
> SaaSposeResponse cells_workbook_put_document_protect_from_changes(name => $name, password => $password, folder => $folder, storage => $storage)

Protect document from changes.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | Document name.
my $password = AsposeCellsCloud::Object::PasswordRequest->new(); # PasswordRequest | Modification password.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_put_document_protect_from_changes(name => $name, password => $password, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_put_document_protect_from_changes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **password** | [**PasswordRequest**](PasswordRequest.md)| Modification password. | [optional] 
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

# **cells_workbook_put_workbook_create**
> WorkbookResponse cells_workbook_put_workbook_create(name => $name, template_file => $template_file, data_file => $data_file, folder => $folder, storage => $storage)

Create new workbook using deferent methods.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsWorkbookApi;
my $api_instance = AsposeCellsCloud::CellsWorkbookApi->new(
);

my $name = 'name_example'; # string | The new document name.
my $template_file = 'template_file_example'; # string | The template file, if the data not provided default workbook is created.
my $data_file = 'data_file_example'; # string | Smart marker data file, if the data not provided the request content is checked for the data.
my $folder = 'folder_example'; # string | The new document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_workbook_put_workbook_create(name => $name, template_file => $template_file, data_file => $data_file, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsWorkbookApi->cells_workbook_put_workbook_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The new document name. | 
 **template_file** | **string**| The template file, if the data not provided default workbook is created. | [optional] 
 **data_file** | **string**| Smart marker data file, if the data not provided the request content is checked for the data. | [optional] 
 **folder** | **string**| The new document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**WorkbookResponse**](WorkbookResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

