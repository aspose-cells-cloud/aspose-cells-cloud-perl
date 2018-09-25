# AsposeCellsCloud::CellsAutoshapesApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsAutoshapesApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_autoshapes_get_worksheet_autoshape**](CellsAutoshapesApi.md#cells_autoshapes_get_worksheet_autoshape) | **GET** /cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber} | Get autoshape info.
[**cells_autoshapes_get_worksheet_autoshapes**](CellsAutoshapesApi.md#cells_autoshapes_get_worksheet_autoshapes) | **GET** /cells/{name}/worksheets/{sheetName}/autoshapes | Get worksheet autoshapes info.


# **cells_autoshapes_get_worksheet_autoshape**
> string cells_autoshapes_get_worksheet_autoshape(name => $name, sheet_name => $sheet_name, autoshape_number => $autoshape_number, format => $format, folder => $folder, storage => $storage)

Get autoshape info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoshapesApi;
my $api_instance = AsposeCellsCloud::CellsAutoshapesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $autoshape_number = 56; # int | The autoshape number.
my $format = 'format_example'; # string | Exported format.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_autoshapes_get_worksheet_autoshape(name => $name, sheet_name => $sheet_name, autoshape_number => $autoshape_number, format => $format, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoshapesApi->cells_autoshapes_get_worksheet_autoshape: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **autoshape_number** | **int**| The autoshape number. | 
 **format** | **string**| Exported format. | [optional] 
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

# **cells_autoshapes_get_worksheet_autoshapes**
> AutoShapesResponse cells_autoshapes_get_worksheet_autoshapes(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet autoshapes info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoshapesApi;
my $api_instance = AsposeCellsCloud::CellsAutoshapesApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_autoshapes_get_worksheet_autoshapes(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoshapesApi->cells_autoshapes_get_worksheet_autoshapes: $@\n";
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

[**AutoShapesResponse**](AutoShapesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

