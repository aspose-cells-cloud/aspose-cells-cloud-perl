use Test::More tests => 4; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::DataCleansing;
use AsposeCellsCloud::Object::DataFill;
use AsposeCellsCloud::Object::DataFillValue;
use AsposeCellsCloud::Object::DeduplicationRegion;
use AsposeCellsCloud::Object::DataTransformationRequest;
use AsposeCellsCloud::Object::LoadData;
use AsposeCellsCloud::Object::LoadTo;
use AsposeCellsCloud::Object::DataQuery;
use AsposeCellsCloud::Object::DataItem;
use AsposeCellsCloud::Object::DataSource;
use AsposeCellsCloud::Object::AppliedStep;
use AsposeCellsCloud::Object::UnpivotColumn;
use AsposeCellsCloud::Request::PostWorkbookDataCleansingRequest;
use AsposeCellsCloud::Request::PostWorkbookDataDeduplicationRequest;
use AsposeCellsCloud::Request::PostWorkbookDataFillRequest;
use AsposeCellsCloud::Request::PostDataTransformationRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # DataProcessingController->post_workbook_data_cleansing  test
    #
    subtest 'Testing DataProcessingController->post_workbook_data_cleansing' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'BookCsvDuplicateData.csv';
        my $remoteName = 'BookCsvDuplicateData.csv';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $data_cleansing_data_fill_data_fill_default_value = AsposeCellsCloud::Object::DataFillValue->new();
         $data_cleansing_data_fill_data_fill_default_value->{default_date} = '2024-01-01'  ;
         $data_cleansing_data_fill_data_fill_default_value->{default_number} = 0  ;
         $data_cleansing_data_fill_data_fill_default_value->{default_boolean} = 'false'  ;
        my $data_cleansing_data_fill = AsposeCellsCloud::Object::DataFill->new();
         $data_cleansing_data_fill->{data_fill_default_value} = $data_cleansing_data_fill_data_fill_default_value  ;
        my $data_cleansing = AsposeCellsCloud::Object::DataCleansing->new();
         $data_cleansing->{need_fill_data} = 'true'  ;
         $data_cleansing->{data_fill} = $data_cleansing_data_fill  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookDataCleansingRequest->new();
        $request->{name} =  $remoteName;
        $request->{data_cleansing} =  $data_cleansing;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_data_cleansing(request=> $request);
        ok($result,'post_workbook_data_cleansing test OK');
    };

    #
    # DataProcessingController->post_workbook_data_deduplication  test
    #
    subtest 'Testing DataProcessingController->post_workbook_data_deduplication' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'BookCsvDuplicateData.csv';
        my $remoteName = 'BookCsvDuplicateData.csv';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $deduplication_region = AsposeCellsCloud::Object::DeduplicationRegion->new();


        my $request = AsposeCellsCloud::Request::PostWorkbookDataDeduplicationRequest->new();
        $request->{name} =  $remoteName;
        $request->{deduplication_region} =  $deduplication_region;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_data_deduplication(request=> $request);
        ok($result,'post_workbook_data_deduplication test OK');
    };

    #
    # DataProcessingController->post_workbook_data_fill  test
    #
    subtest 'Testing DataProcessingController->post_workbook_data_fill' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'BookCsvDuplicateData.csv';
        my $remoteName = 'BookCsvDuplicateData.csv';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $data_fill_data_fill_default_value = AsposeCellsCloud::Object::DataFillValue->new();
         $data_fill_data_fill_default_value->{default_date} = '2024-01-01'  ;
         $data_fill_data_fill_default_value->{default_number} = 0  ;
         $data_fill_data_fill_default_value->{default_boolean} = 'false'  ;
        my $data_fill = AsposeCellsCloud::Object::DataFill->new();
         $data_fill->{data_fill_default_value} = $data_fill_data_fill_default_value  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookDataFillRequest->new();
        $request->{name} =  $remoteName;
        $request->{data_fill} =  $data_fill;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_data_fill(request=> $request);
        ok($result,'post_workbook_data_fill test OK');
    };

    #
    # DataProcessingController->post_data_transformation  test
    #
    subtest 'Testing DataProcessingController->post_data_transformation' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'BookTableL2W.xlsx';
        my $remoteName = 'BookTableL2W.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $data_transformation_request_load_data_load_to = AsposeCellsCloud::Object::LoadTo->new();
         $data_transformation_request_load_data_load_to->{begin_column_index} = 2  ;
         $data_transformation_request_load_data_load_to->{begin_row_index} = 3  ;
         $data_transformation_request_load_data_load_to->{worksheet} = 'L2W'  ;
        my $data_transformation_request_load_data_data_query_data_item = AsposeCellsCloud::Object::DataItem->new();
         $data_transformation_request_load_data_data_query_data_item->{data_item_type} = 'Table'  ;
         $data_transformation_request_load_data_data_query_data_item->{value} = 'Table1'  ;
        my $data_transformation_request_load_data_data_query_data_source = AsposeCellsCloud::Object::DataSource->new();
         $data_transformation_request_load_data_data_query_data_source->{data_source_type} = 'CloudFileSystem'  ;
         $data_transformation_request_load_data_data_query_data_source->{data_path} = 'BookTableL2W.xlsx'  ;
        my $data_transformation_request_load_data_data_query = AsposeCellsCloud::Object::DataQuery->new();
         $data_transformation_request_load_data_data_query->{name} = 'DataQuery'  ;
         $data_transformation_request_load_data_data_query->{data_item} = $data_transformation_request_load_data_data_query_data_item  ;
         $data_transformation_request_load_data_data_query->{data_source} = $data_transformation_request_load_data_data_query_data_source  ;
         $data_transformation_request_load_data_data_query->{data_source_data_type} = 'ListObject'  ;
        my $data_transformation_request_load_data = AsposeCellsCloud::Object::LoadData->new();
         $data_transformation_request_load_data->{load_to} = $data_transformation_request_load_data_load_to  ;
         $data_transformation_request_load_data->{data_query} = $data_transformation_request_load_data_data_query  ;
        my @data_transformation_request_applied_steps_applied_step0_applied_operate_unpivot_column_names = [];push (@data_transformation_request_applied_steps_applied_step0_applied_operate_unpivot_column_names ,'2017' );
        push (@data_transformation_request_applied_steps_applied_step0_applied_operate_unpivot_column_names ,'2018' );
        push (@data_transformation_request_applied_steps_applied_step0_applied_operate_unpivot_column_names ,'2019' );
        my $data_transformation_request_applied_steps_applied_step0_applied_operate = AsposeCellsCloud::Object::UnpivotColumn->new();
         $data_transformation_request_applied_steps_applied_step0_applied_operate->{applied_operate_type} = 'UnpivotColumn'  ;
         $data_transformation_request_applied_steps_applied_step0_applied_operate->{value_map_name} = 'Count'  ;
         $data_transformation_request_applied_steps_applied_step0_applied_operate->{column_map_name} = 'Date'  ;
         $data_transformation_request_applied_steps_applied_step0_applied_operate->{unpivot_column_names} = []; push ( @{$data_transformation_request_applied_steps_applied_step0_applied_operate->{unpivot_column_names}}, '2017'  );
         push ( @{$data_transformation_request_applied_steps_applied_step0_applied_operate->{unpivot_column_names}}, '2018'  );
         push ( @{$data_transformation_request_applied_steps_applied_step0_applied_operate->{unpivot_column_names}}, '2019'  );  ;
        my $data_transformation_request_applied_steps_applied_step0 = AsposeCellsCloud::Object::AppliedStep->new();
         $data_transformation_request_applied_steps_applied_step0->{step_name} = 'UnpivotColumn'  ;
         $data_transformation_request_applied_steps_applied_step0->{applied_operate} = $data_transformation_request_applied_steps_applied_step0_applied_operate  ;
        my @data_transformation_request_applied_steps = [];push (@data_transformation_request_applied_steps ,$data_transformation_request_applied_steps_applied_step0 );
        my $data_transformation_request = AsposeCellsCloud::Object::DataTransformationRequest->new();
         $data_transformation_request->{load_data} = $data_transformation_request_load_data  ;
         $data_transformation_request->{applied_steps} = []; push ( @{$data_transformation_request->{applied_steps}}, $data_transformation_request_applied_steps_applied_step0  );  ;

        my $request = AsposeCellsCloud::Request::PostDataTransformationRequest->new();
        $request->{data_transformation_request} =  $data_transformation_request;
        my $result =  $api->post_data_transformation(request=> $request);
        ok($result,'post_data_transformation test OK');
    };


1;