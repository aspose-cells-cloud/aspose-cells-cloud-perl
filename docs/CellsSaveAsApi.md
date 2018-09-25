# AsposeCellsCloud::CellsSaveAsApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsSaveAsApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_save_as_post_document_save_as**](CellsSaveAsApi.md#cells_save_as_post_document_save_as) | **POST** /cells/{name}/SaveAs | Convert document and save result to storage.


# **cells_save_as_post_document_save_as**
> SaveResponse cells_save_as_post_document_save_as(name => $name, save_options => $save_options, newfilename => $newfilename, is_auto_fit_rows => $is_auto_fit_rows, is_auto_fit_columns => $is_auto_fit_columns, folder => $folder, storage => $storage)

Convert document and save result to storage.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsSaveAsApi;
my $api_instance = AsposeCellsCloud::CellsSaveAsApi->new(
);

my $name = 'name_example'; # string | The document name.
my $save_options = AsposeCellsCloud::Object::SaveOptions->new(); # SaveOptions | Save options.
my $newfilename = 'newfilename_example'; # string | The new file name.
my $is_auto_fit_rows = 1; # boolean | Autofit rows.
my $is_auto_fit_columns = 1; # boolean | Autofit columns.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_save_as_post_document_save_as(name => $name, save_options => $save_options, newfilename => $newfilename, is_auto_fit_rows => $is_auto_fit_rows, is_auto_fit_columns => $is_auto_fit_columns, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsSaveAsApi->cells_save_as_post_document_save_as: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The document name. | 
 **save_options** | [**SaveOptions**](SaveOptions.md)| Save options. | [optional] 
 **newfilename** | **string**| The new file name. | [optional] 
 **is_auto_fit_rows** | **boolean**| Autofit rows. | [optional] [default to false]
 **is_auto_fit_columns** | **boolean**| Autofit columns. | [optional] [default to false]
 **folder** | **string**| The document folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**SaveResponse**](SaveResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

