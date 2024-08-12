use Test::More tests => 13; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::ListObject;
use AsposeCellsCloud::Object::CreatePivotTableRequest;
use AsposeCellsCloud::Object::DataSorter;
use AsposeCellsCloud::Object::ListColumn;
use AsposeCellsCloud::Object::TableTotalRequest;
use AsposeCellsCloud::Request::GetWorksheetListObjectsRequest;
use AsposeCellsCloud::Request::GetWorksheetListObjectRequest;
use AsposeCellsCloud::Request::PutWorksheetListObjectRequest;
use AsposeCellsCloud::Request::DeleteWorksheetListObjectsRequest;
use AsposeCellsCloud::Request::DeleteWorksheetListObjectRequest;
use AsposeCellsCloud::Request::PostWorksheetListObjectRequest;
use AsposeCellsCloud::Request::PostWorksheetListObjectConvertToRangeRequest;
use AsposeCellsCloud::Request::PostWorksheetListObjectSummarizeWithPivotTableRequest;
use AsposeCellsCloud::Request::PostWorksheetListObjectSortTableRequest;
use AsposeCellsCloud::Request::PostWorksheetListColumnRequest;
use AsposeCellsCloud::Request::PostWorksheetListColumnsTotalRequest;
use AsposeCellsCloud::Request::PostWorksheetListObjectRemoveDuplicatesRequest;
use AsposeCellsCloud::Request::PostWorksheetListObjectInsertSlicerRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # ListObjectsController->get_worksheet_list_objects  test
    #
    subtest 'Testing ListObjectsController->get_worksheet_list_objects' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetListObjectsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_list_objects(request=> $request);
        ok($result,'get_worksheet_list_objects test OK');
    };

    #
    # ListObjectsController->get_worksheet_list_object  test
    #
    subtest 'Testing ListObjectsController->get_worksheet_list_object' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetListObjectRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{listobjectindex} =  0;
        $request->{format} =  'pdf';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_list_object(request=> $request);
        ok($result,'get_worksheet_list_object test OK');
    };

    #
    # ListObjectsController->put_worksheet_list_object  test
    #
    subtest 'Testing ListObjectsController->put_worksheet_list_object' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetListObjectRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{start_row} =  1;
        $request->{start_column} =  1;
        $request->{end_row} =  6;
        $request->{end_column} =  6;
        $request->{folder} =  $remoteFolder;
        $request->{has_headers} =  'true';
        $request->{display_name} =  'true';
        $request->{show_totals} =  'false';
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_list_object(request=> $request);
        ok($result,'put_worksheet_list_object test OK');
    };

    #
    # ListObjectsController->delete_worksheet_list_objects  test
    #
    subtest 'Testing ListObjectsController->delete_worksheet_list_objects' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetListObjectsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_list_objects(request=> $request);
        ok($result,'delete_worksheet_list_objects test OK');
    };

    #
    # ListObjectsController->delete_worksheet_list_object  test
    #
    subtest 'Testing ListObjectsController->delete_worksheet_list_object' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetListObjectRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{list_object_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_list_object(request=> $request);
        ok($result,'delete_worksheet_list_object test OK');
    };

    #
    # ListObjectsController->post_worksheet_list_object  test
    #
    subtest 'Testing ListObjectsController->post_worksheet_list_object' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $list_object = AsposeCellsCloud::Object::ListObject->new();
         $list_object->{show_header_row} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetListObjectRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{list_object_index} =  0;
        $request->{list_object} =  $list_object;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_list_object(request=> $request);
        ok($result,'post_worksheet_list_object test OK');
    };

    #
    # ListObjectsController->post_worksheet_list_object_convert_to_range  test
    #
    subtest 'Testing ListObjectsController->post_worksheet_list_object_convert_to_range' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetListObjectConvertToRangeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{list_object_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_list_object_convert_to_range(request=> $request);
        ok($result,'post_worksheet_list_object_convert_to_range test OK');
    };

    #
    # ListObjectsController->post_worksheet_list_object_summarize_with_pivot_table  test
    #
    subtest 'Testing ListObjectsController->post_worksheet_list_object_summarize_with_pivot_table' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my @create_pivot_table_request_pivot_field_columns = [];push (@create_pivot_table_request_pivot_field_columns ,2 );
        my @create_pivot_table_request_pivot_field_data = [];push (@create_pivot_table_request_pivot_field_data ,1 );
        my @create_pivot_table_request_pivot_field_rows = [];push (@create_pivot_table_request_pivot_field_rows ,0 );
        my $create_pivot_table_request = AsposeCellsCloud::Object::CreatePivotTableRequest->new();
         $create_pivot_table_request->{dest_cell_name} = 'C1'  ;
         $create_pivot_table_request->{name} = 'testp'  ;
         $create_pivot_table_request->{source_data} = '=Sheet2!A1:E8'  ;
         $create_pivot_table_request->{use_same_source} = 'true'  ;
         $create_pivot_table_request->{pivot_field_columns} = []; push ( @{$create_pivot_table_request->{pivot_field_columns}}, 2  );  ;
         $create_pivot_table_request->{pivot_field_data} = []; push ( @{$create_pivot_table_request->{pivot_field_data}}, 1  );  ;
         $create_pivot_table_request->{pivot_field_rows} = []; push ( @{$create_pivot_table_request->{pivot_field_rows}}, 0  );  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetListObjectSummarizeWithPivotTableRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{list_object_index} =  0;
        $request->{destsheet_name} =  'Sheet2';
        $request->{create_pivot_table_request} =  $create_pivot_table_request;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_list_object_summarize_with_pivot_table(request=> $request);
        ok($result,'post_worksheet_list_object_summarize_with_pivot_table test OK');
    };

    #
    # ListObjectsController->post_worksheet_list_object_sort_table  test
    #
    subtest 'Testing ListObjectsController->post_worksheet_list_object_sort_table' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $data_sorter = AsposeCellsCloud::Object::DataSorter->new();
         $data_sorter->{case_sensitive} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetListObjectSortTableRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{list_object_index} =  0;
        $request->{data_sorter} =  $data_sorter;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_list_object_sort_table(request=> $request);
        ok($result,'post_worksheet_list_object_sort_table test OK');
    };

    #
    # ListObjectsController->post_worksheet_list_column  test
    #
    subtest 'Testing ListObjectsController->post_worksheet_list_column' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $list_column = AsposeCellsCloud::Object::ListColumn->new();
         $list_column->{name} = 'test cloumn'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetListColumnRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{list_object_index} =  0;
        $request->{column_index} =  0;
        $request->{list_column} =  $list_column;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_list_column(request=> $request);
        ok($result,'post_worksheet_list_column test OK');
    };

    #
    # ListObjectsController->post_worksheet_list_columns_total  test
    #
    subtest 'Testing ListObjectsController->post_worksheet_list_columns_total' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $table_total_requeststable_total_request0 = AsposeCellsCloud::Object::TableTotalRequest->new();
         $table_total_requeststable_total_request0->{list_column_index} = 1  ;
         $table_total_requeststable_total_request0->{totals_calculation} = 'Average'  ;
        my @table_total_requests = [];push (@table_total_requests ,$table_total_requeststable_total_request0 );

        my $request = AsposeCellsCloud::Request::PostWorksheetListColumnsTotalRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet7';
        $request->{list_object_index} =  0;
        $request->{table_total_requests} =  []; push ( @{$request->{table_total_requests}}, $table_total_requeststable_total_request0  );;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_list_columns_total(request=> $request);
        ok($result,'post_worksheet_list_columns_total test OK');
    };

    #
    # ListObjectsController->post_worksheet_list_object_remove_duplicates  test
    #
    subtest 'Testing ListObjectsController->post_worksheet_list_object_remove_duplicates' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestTables.xlsx';
        my $remoteName = 'TestTables.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetListObjectRemoveDuplicatesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet2';
        $request->{list_object_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_list_object_remove_duplicates(request=> $request);
        ok($result,'post_worksheet_list_object_remove_duplicates test OK');
    };

    #
    # ListObjectsController->post_worksheet_list_object_insert_slicer  test
    #
    subtest 'Testing ListObjectsController->post_worksheet_list_object_insert_slicer' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestTables.xlsx';
        my $remoteName = 'TestTables.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetListObjectInsertSlicerRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{list_object_index} =  0;
        $request->{column_index} =  2;
        $request->{dest_cell_name} =  'j9';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_list_object_insert_slicer(request=> $request);
        ok($result,'post_worksheet_list_object_insert_slicer test OK');
    };


1;