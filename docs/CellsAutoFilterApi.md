# AsposeCellsCloud::CellsAutoFilterApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsAutoFilterApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_auto_filter_delete_worksheet_date_filter**](CellsAutoFilterApi.md#cells_auto_filter_delete_worksheet_date_filter) | **DELETE** /cells/{name}/worksheets/{sheetName}/autoFilter/dateFilter | Removes a date filter.             
[**cells_auto_filter_delete_worksheet_filter**](CellsAutoFilterApi.md#cells_auto_filter_delete_worksheet_filter) | **DELETE** /cells/{name}/worksheets/{sheetName}/autoFilter/filter | Delete a filter for a filter column.             
[**cells_auto_filter_get_worksheet_auto_filter**](CellsAutoFilterApi.md#cells_auto_filter_get_worksheet_auto_filter) | **GET** /cells/{name}/worksheets/{sheetName}/autoFilter | Get Auto filter Description
[**cells_auto_filter_post_worksheet_auto_filter_refresh**](CellsAutoFilterApi.md#cells_auto_filter_post_worksheet_auto_filter_refresh) | **POST** /cells/{name}/worksheets/{sheetName}/autoFilter/refresh | 
[**cells_auto_filter_post_worksheet_match_blanks**](CellsAutoFilterApi.md#cells_auto_filter_post_worksheet_match_blanks) | **POST** /cells/{name}/worksheets/{sheetName}/autoFilter/matchBlanks | Match all blank cell in the list.
[**cells_auto_filter_post_worksheet_match_non_blanks**](CellsAutoFilterApi.md#cells_auto_filter_post_worksheet_match_non_blanks) | **POST** /cells/{name}/worksheets/{sheetName}/autoFilter/matchNonBlanks | Match all not blank cell in the list.             
[**cells_auto_filter_put_worksheet_color_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_color_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/colorFilter | 
[**cells_auto_filter_put_worksheet_custom_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_custom_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/custom | Filters a list with a custom criteria.             
[**cells_auto_filter_put_worksheet_date_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_date_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/dateFilter | add date filter in worksheet 
[**cells_auto_filter_put_worksheet_dynamic_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_dynamic_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/dynamicFilter | 
[**cells_auto_filter_put_worksheet_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/filter | Adds a filter for a filter column.             
[**cells_auto_filter_put_worksheet_filter_top10**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_filter_top10) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/filterTop10 | Filter the top 10 item in the list
[**cells_auto_filter_put_worksheet_icon_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_icon_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/iconFilter | Adds an icon filter.


# **cells_auto_filter_delete_worksheet_date_filter**
> SaaSposeResponse cells_auto_filter_delete_worksheet_date_filter(name => $name, sheet_name => $sheet_name, field_index => $field_index, date_time_grouping_type => $date_time_grouping_type, year => $year, month => $month, day => $day, hour => $hour, minute => $minute, second => $second, folder => $folder, storage => $storage)

Removes a date filter.             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $field_index = 56; # int | 
my $date_time_grouping_type = 'date_time_grouping_type_example'; # string | 
my $year = 56; # int | 
my $month = 56; # int | 
my $day = 56; # int | 
my $hour = 56; # int | 
my $minute = 56; # int | 
my $second = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_delete_worksheet_date_filter(name => $name, sheet_name => $sheet_name, field_index => $field_index, date_time_grouping_type => $date_time_grouping_type, year => $year, month => $month, day => $day, hour => $hour, minute => $minute, second => $second, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_delete_worksheet_date_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **field_index** | **int**|  | 
 **date_time_grouping_type** | **string**|  | 
 **year** | **int**|  | [optional] [default to 0]
 **month** | **int**|  | [optional] [default to 0]
 **day** | **int**|  | [optional] [default to 0]
 **hour** | **int**|  | [optional] [default to 0]
 **minute** | **int**|  | [optional] [default to 0]
 **second** | **int**|  | [optional] [default to 0]
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

# **cells_auto_filter_delete_worksheet_filter**
> SaaSposeResponse cells_auto_filter_delete_worksheet_filter(name => $name, sheet_name => $sheet_name, field_index => $field_index, criteria => $criteria, folder => $folder, storage => $storage)

Delete a filter for a filter column.             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $field_index = 56; # int | 
my $criteria = 'criteria_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_delete_worksheet_filter(name => $name, sheet_name => $sheet_name, field_index => $field_index, criteria => $criteria, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_delete_worksheet_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **field_index** | **int**|  | 
 **criteria** | **string**|  | [optional] 
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

# **cells_auto_filter_get_worksheet_auto_filter**
> AutoFilterResponse cells_auto_filter_get_worksheet_auto_filter(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)

Get Auto filter Description

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_get_worksheet_auto_filter(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_get_worksheet_auto_filter: $@\n";
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

[**AutoFilterResponse**](AutoFilterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cells_auto_filter_post_worksheet_auto_filter_refresh**
> SaaSposeResponse cells_auto_filter_post_worksheet_auto_filter_refresh(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_post_worksheet_auto_filter_refresh(name => $name, sheet_name => $sheet_name, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_post_worksheet_auto_filter_refresh: $@\n";
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

# **cells_auto_filter_post_worksheet_match_blanks**
> SaaSposeResponse cells_auto_filter_post_worksheet_match_blanks(name => $name, sheet_name => $sheet_name, field_index => $field_index, folder => $folder, storage => $storage)

Match all blank cell in the list.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $field_index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_post_worksheet_match_blanks(name => $name, sheet_name => $sheet_name, field_index => $field_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_post_worksheet_match_blanks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **field_index** | **int**|  | 
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

# **cells_auto_filter_post_worksheet_match_non_blanks**
> SaaSposeResponse cells_auto_filter_post_worksheet_match_non_blanks(name => $name, sheet_name => $sheet_name, field_index => $field_index, folder => $folder, storage => $storage)

Match all not blank cell in the list.             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $field_index = 56; # int | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_post_worksheet_match_non_blanks(name => $name, sheet_name => $sheet_name, field_index => $field_index, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_post_worksheet_match_non_blanks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **field_index** | **int**|  | 
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

# **cells_auto_filter_put_worksheet_color_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_color_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, color_filter => $color_filter, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $range = 'range_example'; # string | 
my $field_index = 56; # int | 
my $color_filter = AsposeCellsCloud::Object::ColorFilterRequest->new(); # ColorFilterRequest | 
my $match_blanks = 1; # boolean | 
my $refresh = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_put_worksheet_color_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, color_filter => $color_filter, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_color_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **range** | **string**|  | 
 **field_index** | **int**|  | 
 **color_filter** | [**ColorFilterRequest**](ColorFilterRequest.md)|  | [optional] 
 **match_blanks** | **boolean**|  | [optional] 
 **refresh** | **boolean**|  | [optional] 
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

# **cells_auto_filter_put_worksheet_custom_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_custom_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, operator_type1 => $operator_type1, criteria1 => $criteria1, is_and => $is_and, operator_type2 => $operator_type2, criteria2 => $criteria2, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage)

Filters a list with a custom criteria.             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $range = 'range_example'; # string | 
my $field_index = 56; # int | 
my $operator_type1 = 'operator_type1_example'; # string | 
my $criteria1 = 'criteria1_example'; # string | 
my $is_and = 1; # boolean | 
my $operator_type2 = 'operator_type2_example'; # string | 
my $criteria2 = 'criteria2_example'; # string | 
my $match_blanks = 1; # boolean | 
my $refresh = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_put_worksheet_custom_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, operator_type1 => $operator_type1, criteria1 => $criteria1, is_and => $is_and, operator_type2 => $operator_type2, criteria2 => $criteria2, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_custom_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **range** | **string**|  | 
 **field_index** | **int**|  | 
 **operator_type1** | **string**|  | 
 **criteria1** | **string**|  | 
 **is_and** | **boolean**|  | [optional] 
 **operator_type2** | **string**|  | [optional] 
 **criteria2** | **string**|  | [optional] 
 **match_blanks** | **boolean**|  | [optional] 
 **refresh** | **boolean**|  | [optional] 
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

# **cells_auto_filter_put_worksheet_date_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_date_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, date_time_grouping_type => $date_time_grouping_type, year => $year, month => $month, day => $day, hour => $hour, minute => $minute, second => $second, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage)

add date filter in worksheet 

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $range = 'range_example'; # string | 
my $field_index = 56; # int | 
my $date_time_grouping_type = 'date_time_grouping_type_example'; # string | 
my $year = 56; # int | 
my $month = 56; # int | 
my $day = 56; # int | 
my $hour = 56; # int | 
my $minute = 56; # int | 
my $second = 56; # int | 
my $match_blanks = 1; # boolean | 
my $refresh = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_put_worksheet_date_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, date_time_grouping_type => $date_time_grouping_type, year => $year, month => $month, day => $day, hour => $hour, minute => $minute, second => $second, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_date_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **range** | **string**|  | 
 **field_index** | **int**|  | 
 **date_time_grouping_type** | **string**|  | 
 **year** | **int**|  | [optional] [default to 0]
 **month** | **int**|  | [optional] [default to 0]
 **day** | **int**|  | [optional] [default to 0]
 **hour** | **int**|  | [optional] [default to 0]
 **minute** | **int**|  | [optional] [default to 0]
 **second** | **int**|  | [optional] [default to 0]
 **match_blanks** | **boolean**|  | [optional] 
 **refresh** | **boolean**|  | [optional] 
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

# **cells_auto_filter_put_worksheet_dynamic_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_dynamic_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, dynamic_filter_type => $dynamic_filter_type, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage)



### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $range = 'range_example'; # string | 
my $field_index = 56; # int | 
my $dynamic_filter_type = 'dynamic_filter_type_example'; # string | 
my $match_blanks = 1; # boolean | 
my $refresh = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_put_worksheet_dynamic_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, dynamic_filter_type => $dynamic_filter_type, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_dynamic_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **range** | **string**|  | 
 **field_index** | **int**|  | 
 **dynamic_filter_type** | **string**|  | 
 **match_blanks** | **boolean**|  | [optional] 
 **refresh** | **boolean**|  | [optional] 
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

# **cells_auto_filter_put_worksheet_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, criteria => $criteria, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage)

Adds a filter for a filter column.             

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $range = 'range_example'; # string | 
my $field_index = 56; # int | 
my $criteria = 'criteria_example'; # string | 
my $match_blanks = 1; # boolean | 
my $refresh = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_put_worksheet_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, criteria => $criteria, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **range** | **string**|  | 
 **field_index** | **int**|  | 
 **criteria** | **string**|  | 
 **match_blanks** | **boolean**|  | [optional] 
 **refresh** | **boolean**|  | [optional] 
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

# **cells_auto_filter_put_worksheet_filter_top10**
> SaaSposeResponse cells_auto_filter_put_worksheet_filter_top10(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, is_top => $is_top, is_percent => $is_percent, item_count => $item_count, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage)

Filter the top 10 item in the list

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $range = 'range_example'; # string | 
my $field_index = 56; # int | 
my $is_top = 1; # boolean | 
my $is_percent = 1; # boolean | 
my $item_count = 56; # int | 
my $match_blanks = 1; # boolean | 
my $refresh = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_put_worksheet_filter_top10(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, is_top => $is_top, is_percent => $is_percent, item_count => $item_count, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_filter_top10: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **range** | **string**|  | 
 **field_index** | **int**|  | 
 **is_top** | **boolean**|  | 
 **is_percent** | **boolean**|  | 
 **item_count** | **int**|  | 
 **match_blanks** | **boolean**|  | [optional] 
 **refresh** | **boolean**|  | [optional] 
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

# **cells_auto_filter_put_worksheet_icon_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_icon_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, icon_set_type => $icon_set_type, icon_id => $icon_id, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage)

Adds an icon filter.

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsAutoFilterApi;
my $api_instance = AsposeCellsCloud::CellsAutoFilterApi->new(
);

my $name = 'name_example'; # string | 
my $sheet_name = 'sheet_name_example'; # string | 
my $range = 'range_example'; # string | 
my $field_index = 56; # int | 
my $icon_set_type = 'icon_set_type_example'; # string | 
my $icon_id = 56; # int | 
my $match_blanks = 1; # boolean | 
my $refresh = 1; # boolean | 
my $folder = 'folder_example'; # string | 
my $storage = 'storage_example'; # string | storage name.

eval { 
    my $result = $api_instance->cells_auto_filter_put_worksheet_icon_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, icon_set_type => $icon_set_type, icon_id => $icon_id, match_blanks => $match_blanks, refresh => $refresh, folder => $folder, storage => $storage);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_icon_filter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**|  | 
 **sheet_name** | **string**|  | 
 **range** | **string**|  | 
 **field_index** | **int**|  | 
 **icon_set_type** | **string**|  | 
 **icon_id** | **int**|  | 
 **match_blanks** | **boolean**|  | [optional] 
 **refresh** | **boolean**|  | [optional] 
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

