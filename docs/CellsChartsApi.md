# AsposeCellsCloud::CellsChartsApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsChartsApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_charts_delete_worksheet_chart_legend**](CellsChartsApi.md#cells_charts_delete_worksheet_chart_legend) | **DELETE** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend | Hide legend in chart
[**cells_charts_delete_worksheet_chart_title**](CellsChartsApi.md#cells_charts_delete_worksheet_chart_title) | **DELETE** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title | Hide title in chart
[**cells_charts_delete_worksheet_clear_charts**](CellsChartsApi.md#cells_charts_delete_worksheet_clear_charts) | **DELETE** /cells/{name}/worksheets/{sheetName}/charts | Clear the charts.
[**cells_charts_delete_worksheet_delete_chart**](CellsChartsApi.md#cells_charts_delete_worksheet_delete_chart) | **DELETE** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex} | Delete worksheet chart by index.
[**cells_charts_get_worksheet_chart**](CellsChartsApi.md#cells_charts_get_worksheet_chart) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartNumber} | Get chart info.
[**cells_charts_get_worksheet_chart_legend**](CellsChartsApi.md#cells_charts_get_worksheet_chart_legend) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend | Get chart legend
[**cells_charts_get_worksheet_chart_title**](CellsChartsApi.md#cells_charts_get_worksheet_chart_title) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title | Get chart title
[**cells_charts_get_worksheet_charts**](CellsChartsApi.md#cells_charts_get_worksheet_charts) | **GET** /cells/{name}/worksheets/{sheetName}/charts | Get worksheet charts info.
[**cells_charts_post_worksheet_chart**](CellsChartsApi.md#cells_charts_post_worksheet_chart) | **POST** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex} | Update chart propreties
[**cells_charts_post_worksheet_chart_legend**](CellsChartsApi.md#cells_charts_post_worksheet_chart_legend) | **POST** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend | Update chart legend
[**cells_charts_post_worksheet_chart_title**](CellsChartsApi.md#cells_charts_post_worksheet_chart_title) | **POST** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title | Update chart title
[**cells_charts_put_worksheet_add_chart**](CellsChartsApi.md#cells_charts_put_worksheet_add_chart) | **PUT** /cells/{name}/worksheets/{sheetName}/charts | Add new chart to worksheet.
[**cells_charts_put_worksheet_chart_legend**](CellsChartsApi.md#cells_charts_put_worksheet_chart_legend) | **PUT** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend | Show legend in chart
[**cells_charts_put_worksheet_chart_title**](CellsChartsApi.md#cells_charts_put_worksheet_chart_title) | **PUT** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title | Add chart title / Set chart title visible


# **cells_charts_delete_worksheet_chart_legend**
> SaaSposeResponse cells_charts_delete_worksheet_chart_legend(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage)

Hide legend in chart

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_delete_worksheet_chart_legend(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_delete_worksheet_chart_legend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
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

# **cells_charts_delete_worksheet_chart_title**
> SaaSposeResponse cells_charts_delete_worksheet_chart_title(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage)

Hide title in chart

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_delete_worksheet_chart_title(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_delete_worksheet_chart_title: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
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

# **cells_charts_delete_worksheet_clear_charts**
> SaaSposeResponse cells_charts_delete_worksheet_clear_charts(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Clear the charts.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_delete_worksheet_clear_charts(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_delete_worksheet_clear_charts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
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

# **cells_charts_delete_worksheet_delete_chart**
> ChartsResponse cells_charts_delete_worksheet_delete_chart(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage)

Delete worksheet chart by index.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_delete_worksheet_delete_chart(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_delete_worksheet_delete_chart: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ChartsResponse**](ChartsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_charts_get_worksheet_chart**
> string cells_charts_get_worksheet_chart(name => $name, sheet_name => $sheet_name, chart_number => $chart_number, format => $format, folder => $folder, storage => $storage)

Get chart info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_number = 56; # int | The chart number.
my $format = 'format_example'; # string | The exported file format.
my $folder = 'folder_example'; # string | The document folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_get_worksheet_chart(name => $name, sheet_name => $sheet_name, chart_number => $chart_number, format => $format, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_get_worksheet_chart: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Document name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_number** | **int**| The chart number. | 
 **format** | **string**| The exported file format. | [optional] 
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

# **cells_charts_get_worksheet_chart_legend**
> LegendResponse cells_charts_get_worksheet_chart_legend(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage)

Get chart legend

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_get_worksheet_chart_legend(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_get_worksheet_chart_legend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**LegendResponse**](LegendResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_charts_get_worksheet_chart_title**
> TitleResponse cells_charts_get_worksheet_chart_title(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage)

Get chart title

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_get_worksheet_chart_title(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_get_worksheet_chart_title: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**TitleResponse**](TitleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_charts_get_worksheet_charts**
> ChartsResponse cells_charts_get_worksheet_charts(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get worksheet charts info.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Document name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $folder = 'folder_example'; # string | Document's folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_get_worksheet_charts(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_get_worksheet_charts: $@\n";
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

[**ChartsResponse**](ChartsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_charts_post_worksheet_chart**
> SaaSposeResponse cells_charts_post_worksheet_chart(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, chart => $chart, folder => $folder, storage => $storage)

Update chart propreties

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $chart_index = 56; # int | 
my $chart = AsposeCellsCloud::Object::Chart->new(); # Chart | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_post_worksheet_chart(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, chart => $chart, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_post_worksheet_chart: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **chart_index** | **int**|  | 
 **chart** | [**Chart**](Chart.md)|  | [optional] 
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

# **cells_charts_post_worksheet_chart_legend**
> LegendResponse cells_charts_post_worksheet_chart_legend(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, legend => $legend, folder => $folder, storage => $storage)

Update chart legend

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $legend = AsposeCellsCloud::Object::Legend->new(); # Legend | 
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_post_worksheet_chart_legend(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, legend => $legend, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_post_worksheet_chart_legend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
 **legend** | [**Legend**](Legend.md)|  | [optional] 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**LegendResponse**](LegendResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_charts_post_worksheet_chart_title**
> TitleResponse cells_charts_post_worksheet_chart_title(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, title => $title, folder => $folder, storage => $storage)

Update chart title

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $title = AsposeCellsCloud::Object::Title->new(); # Title | Chart title
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_post_worksheet_chart_title(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, title => $title, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_post_worksheet_chart_title: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
 **title** | [**Title**](Title.md)| Chart title | [optional] 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**TitleResponse**](TitleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_charts_put_worksheet_add_chart**
> ChartsResponse cells_charts_put_worksheet_add_chart(name => $name, sheet_name => $sheet_name, chart_type => $chart_type, upper_left_row => $upper_left_row, upper_left_column => $upper_left_column, lower_right_row => $lower_right_row, lower_right_column => $lower_right_column, area => $area, is_vertical => $is_vertical, category_data => $category_data, is_auto_get_serial_name => $is_auto_get_serial_name, title => $title, folder => $folder, storage => $storage)

Add new chart to worksheet.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | The worksheet name.
my $chart_type = 'chart_type_example'; # string | Chart type, please refer property Type in chart resource.
my $upper_left_row = 56; # int | New chart upper left row.
my $upper_left_column = 56; # int | New chart upperleft column.
my $lower_right_row = 56; # int | New chart lower right row.
my $lower_right_column = 56; # int | New chart lower right column.
my $area = 'area_example'; # string | Specifies values from which to plot the data series. 
my $is_vertical = 1; # boolean | Specifies whether to plot the series from a range of cell values by row or by column. 
my $category_data = 'category_data_example'; # string | Gets or sets the range of category Axis values. It can be a range of cells (such as, \"d1:e10\"). 
my $is_auto_get_serial_name = 1; # boolean | Specifies whether auto update serial name. 
my $title = 'title_example'; # string | Specifies chart title name.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_put_worksheet_add_chart(name => $name, sheet_name => $sheet_name, chart_type => $chart_type, upper_left_row => $upper_left_row, upper_left_column => $upper_left_column, lower_right_row => $lower_right_row, lower_right_column => $lower_right_column, area => $area, is_vertical => $is_vertical, category_data => $category_data, is_auto_get_serial_name => $is_auto_get_serial_name, title => $title, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_put_worksheet_add_chart: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| The worksheet name. | 
 **chart_type** | **string**| Chart type, please refer property Type in chart resource. | 
 **upper_left_row** | **int**| New chart upper left row. | [optional] [default to 0]
 **upper_left_column** | **int**| New chart upperleft column. | [optional] [default to 0]
 **lower_right_row** | **int**| New chart lower right row. | [optional] [default to 0]
 **lower_right_column** | **int**| New chart lower right column. | [optional] [default to 0]
 **area** | **string**| Specifies values from which to plot the data series.  | [optional] 
 **is_vertical** | **boolean**| Specifies whether to plot the series from a range of cell values by row or by column.  | [optional] [default to true]
 **category_data** | **string**| Gets or sets the range of category Axis values. It can be a range of cells (such as, \&quot;d1:e10\&quot;).  | [optional] 
 **is_auto_get_serial_name** | **boolean**| Specifies whether auto update serial name.  | [optional] [default to true]
 **title** | **string**| Specifies chart title name. | [optional] 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**ChartsResponse**](ChartsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_charts_put_worksheet_chart_legend**
> SaaSposeResponse cells_charts_put_worksheet_chart_legend(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage)

Show legend in chart

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_put_worksheet_chart_legend(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_put_worksheet_chart_legend: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
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

# **cells_charts_put_worksheet_chart_title**
> TitleResponse cells_charts_put_worksheet_chart_title(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, title => $title, folder => $folder, storage => $storage)

Add chart title / Set chart title visible

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsChartsApi;
my $api_instance = AsposeCellsCloud::CellsChartsApi->new(
);

my $name = 'name_example'; # string | Workbook name.
my $sheet_name = 'sheet_name_example'; # string | Worksheet name.
my $chart_index = 56; # int | The chart index.
my $title = AsposeCellsCloud::Object::Title->new(); # Title | Chart title.
my $folder = 'folder_example'; # string | The workbook folder.
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_charts_put_worksheet_chart_title(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, title => $title, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsChartsApi->cells_charts_put_worksheet_chart_title: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Workbook name. | 
 **sheet_name** | **string**| Worksheet name. | 
 **chart_index** | **int**| The chart index. | 
 **title** | [**Title**](Title.md)| Chart title. | [optional] 
 **folder** | **string**| The workbook folder. | [optional] 
 **storage** | **string**| storage name. | [optional] 

### Return type

[**TitleResponse**](TitleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

