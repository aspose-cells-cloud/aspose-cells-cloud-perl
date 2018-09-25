# AsposeCellsCloud::CellsChartAreaApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsChartAreaApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_chart_area_get_chart_area**](CellsChartAreaApi.md#cells_chart_area_get_chart_area) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea | Get chart area info.
[**cells_chart_area_get_chart_area_border**](CellsChartAreaApi.md#cells_chart_area_get_chart_area_border) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/border | Get chart area border info.
[**cells_chart_area_get_chart_area_fill_format**](CellsChartAreaApi.md#cells_chart_area_get_chart_area_fill_format) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/fillFormat | Get chart area fill format info.


# **cells_chart_area_get_chart_area**
> ChartAreaResponse cells_chart_area_get_chart_area(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage)

Get chart area info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartAreaApi;
my $api_instance = AsposeCellsCloud::CellsChartAreaApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_chart_area_get_chart_area(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartAreaApi->cells_chart_area_get_chart_area: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ChartAreaResponse**](ChartAreaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_chart_area_get_chart_area_border**
> LineResponse cells_chart_area_get_chart_area_border(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage)

Get chart area border info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartAreaApi;
my $api_instance = AsposeCellsCloud::CellsChartAreaApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_chart_area_get_chart_area_border(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartAreaApi->cells_chart_area_get_chart_area_border: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**LineResponse**](LineResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_chart_area_get_chart_area_fill_format**
> FillFormatResponse cells_chart_area_get_chart_area_fill_format(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage)

Get chart area fill format info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartAreaApi;
my $api_instance = AsposeCellsCloud::CellsChartAreaApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $folder = 'folder_example'; # string | Workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_chart_area_get_chart_area_fill_format(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartAreaApi->cells_chart_area_get_chart_area_fill_format: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
 **folder** | **string**| Workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**FillFormatResponse**](FillFormatResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

