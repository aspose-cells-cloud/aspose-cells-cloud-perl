# AsposeCellsCloud::CellsTaskApi

## Load the API package
```perl
use AsposeCellsCloud::Object::CellsTaskApi;
```

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_task_post_run_task**](CellsTaskApi.md#cells_task_post_run_task) | **POST** /cells/task/runtask | Run tasks  


# **cells_task_post_run_task**
> object cells_task_post_run_task(task_data => $task_data)

Run tasks  

### Example 
```perl
use Data::Dumper;
use AsposeCellsCloud::CellsTaskApi;
my $api_instance = AsposeCellsCloud::CellsTaskApi->new(
);

my $task_data = AsposeCellsCloud::Object::String->new(); # String | 

eval { 
    my $result = $api_instance->cells_task_post_run_task(task_data => $task_data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CellsTaskApi->cells_task_post_run_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_data** | [**String**](String.md)|  | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

