use Test::More tests => 13; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::RangeCopyRequest;
use AsposeCellsCloud::Object::Range;
use AsposeCellsCloud::Object::RangeSetStyleRequest;
use AsposeCellsCloud::Object::Style;
use AsposeCellsCloud::Object::Font;
use AsposeCellsCloud::Object::RangeSetOutlineBorderRequest;
use AsposeCellsCloud::Object::Color;
use AsposeCellsCloud::Object::RangeSortRequest;
use AsposeCellsCloud::Object::DataSorter;
use AsposeCellsCloud::Request::PostWorksheetCellsRangesCopyRequest;
use AsposeCellsCloud::Request::PostWorksheetCellsRangeMergeRequest;
use AsposeCellsCloud::Request::PostWorksheetCellsRangeUnMergeRequest;
use AsposeCellsCloud::Request::PostWorksheetCellsRangeStyleRequest;
use AsposeCellsCloud::Request::GetWorksheetCellsRangeValueRequest;
use AsposeCellsCloud::Request::PostWorksheetCellsRangeValueRequest;
use AsposeCellsCloud::Request::PostWorksheetCellsRangeMoveToRequest;
use AsposeCellsCloud::Request::PostWorksheetCellsRangeOutlineBorderRequest;
use AsposeCellsCloud::Request::PostWorksheetCellsRangeColumnWidthRequest;
use AsposeCellsCloud::Request::PostWorksheetCellsRangeRowHeightRequest;
use AsposeCellsCloud::Request::PutWorksheetCellsRangeRequest;
use AsposeCellsCloud::Request::DeleteWorksheetCellsRangeRequest;
use AsposeCellsCloud::Request::PostWorksheetCellsRangeSortRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # RangesController->post_worksheet_cells_ranges_copy  test
    #
    subtest 'Testing RangesController->post_worksheet_cells_ranges_copy' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $range_operate_source = AsposeCellsCloud::Object::Range->new();
         $range_operate_source->{column_count} = 3  ;
         $range_operate_source->{first_column} = 8  ;
         $range_operate_source->{first_row} = 3  ;
         $range_operate_source->{row_count} = 2  ;
        my $range_operate_target = AsposeCellsCloud::Object::Range->new();
         $range_operate_target->{column_count} = 3  ;
         $range_operate_target->{first_column} = 8  ;
         $range_operate_target->{first_row} = 13  ;
         $range_operate_target->{row_count} = 2  ;
        my $range_operate = AsposeCellsCloud::Object::RangeCopyRequest->new();
         $range_operate->{operate} = 'copydata'  ;
         $range_operate->{source} = $range_operate_source  ;
         $range_operate->{target} = $range_operate_target  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangesCopyRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range_operate} =  $range_operate;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cells_ranges_copy(request=> $request);
        ok($result,'post_worksheet_cells_ranges_copy test OK');
    };

    #
    # RangesController->post_worksheet_cells_range_merge  test
    #
    subtest 'Testing RangesController->post_worksheet_cells_range_merge' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $range = AsposeCellsCloud::Object::Range->new();
         $range->{column_count} = 1  ;
         $range->{column_width} = 10.0  ;
         $range->{first_row} = 1  ;
         $range->{row_count} = 10  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeMergeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  $range;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cells_range_merge(request=> $request);
        ok($result,'post_worksheet_cells_range_merge test OK');
    };

    #
    # RangesController->post_worksheet_cells_range_un_merge  test
    #
    subtest 'Testing RangesController->post_worksheet_cells_range_un_merge' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $range = AsposeCellsCloud::Object::Range->new();
         $range->{column_count} = 1  ;
         $range->{column_width} = 10.0  ;
         $range->{first_row} = 1  ;
         $range->{row_count} = 10  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeUnMergeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  $range;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cells_range_un_merge(request=> $request);
        ok($result,'post_worksheet_cells_range_un_merge test OK');
    };

    #
    # RangesController->post_worksheet_cells_range_style  test
    #
    subtest 'Testing RangesController->post_worksheet_cells_range_style' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $range_operate_style_font = AsposeCellsCloud::Object::Font->new();
         $range_operate_style_font->{size} = 16  ;
        my $range_operate_style = AsposeCellsCloud::Object::Style->new();
         $range_operate_style->{font} = $range_operate_style_font  ;
        my $range_operate_range = AsposeCellsCloud::Object::Range->new();
         $range_operate_range->{column_count} = 1  ;
         $range_operate_range->{column_width} = 10.0  ;
         $range_operate_range->{first_row} = 1  ;
         $range_operate_range->{row_count} = 10  ;
        my $range_operate = AsposeCellsCloud::Object::RangeSetStyleRequest->new();
         $range_operate->{style} = $range_operate_style  ;
         $range_operate->{range} = $range_operate_range  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeStyleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range_operate} =  $range_operate;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cells_range_style(request=> $request);
        ok($result,'post_worksheet_cells_range_style test OK');
    };

    #
    # RangesController->get_worksheet_cells_range_value  test
    #
    subtest 'Testing RangesController->get_worksheet_cells_range_value' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetCellsRangeValueRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{namerange} =  'Name_2';
        $request->{first_row} =  0;
        $request->{first_column} =  0;
        $request->{row_count} =  3;
        $request->{column_count} =  2;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_cells_range_value(request=> $request);
        ok($result,'get_worksheet_cells_range_value test OK');
    };

    #
    # RangesController->post_worksheet_cells_range_value  test
    #
    subtest 'Testing RangesController->post_worksheet_cells_range_value' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $range = AsposeCellsCloud::Object::Range->new();
         $range->{column_count} = 1  ;
         $range->{column_width} = 10.0  ;
         $range->{first_row} = 1  ;
         $range->{row_count} = 10  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeValueRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  $range;
        $request->{value} =  '100';
        $request->{is_converted} =  'true';
        $request->{set_style} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cells_range_value(request=> $request);
        ok($result,'post_worksheet_cells_range_value test OK');
    };

    #
    # RangesController->post_worksheet_cells_range_move_to  test
    #
    subtest 'Testing RangesController->post_worksheet_cells_range_move_to' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $range = AsposeCellsCloud::Object::Range->new();
         $range->{column_count} = 1  ;
         $range->{column_width} = 10.0  ;
         $range->{first_row} = 1  ;
         $range->{row_count} = 10  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeMoveToRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  $range;
        $request->{dest_row} =  10;
        $request->{dest_column} =  10;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cells_range_move_to(request=> $request);
        ok($result,'post_worksheet_cells_range_move_to test OK');
    };

    #
    # RangesController->post_worksheet_cells_range_outline_border  test
    #
    subtest 'Testing RangesController->post_worksheet_cells_range_outline_border' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $range_operateborder_color = AsposeCellsCloud::Object::Color->new();
         $range_operateborder_color->{r} = 48  ;
         $range_operateborder_color->{g} = 48  ;
         $range_operateborder_color->{b} = 48  ;
        my $range_operate_range = AsposeCellsCloud::Object::Range->new();
         $range_operate_range->{column_count} = 1  ;
         $range_operate_range->{column_width} = 10.0  ;
         $range_operate_range->{first_row} = 1  ;
         $range_operate_range->{row_count} = 10  ;
        my $range_operate = AsposeCellsCloud::Object::RangeSetOutlineBorderRequest->new();
         $range_operate->{border_edge} = 'LeftBorder'  ;
         $range_operate->{border_style} = 'Dotted'  ;
         $range_operate->{border_color} = $range_operateborder_color  ;
         $range_operate->{range} = $range_operate_range  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeOutlineBorderRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range_operate} =  $range_operate;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cells_range_outline_border(request=> $request);
        ok($result,'post_worksheet_cells_range_outline_border test OK');
    };

    #
    # RangesController->post_worksheet_cells_range_column_width  test
    #
    subtest 'Testing RangesController->post_worksheet_cells_range_column_width' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $range = AsposeCellsCloud::Object::Range->new();
         $range->{column_count} = 1  ;
         $range->{column_width} = 10.0  ;
         $range->{first_row} = 1  ;
         $range->{row_count} = 10  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeColumnWidthRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  $range;
        $request->{value} =  10.7;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cells_range_column_width(request=> $request);
        ok($result,'post_worksheet_cells_range_column_width test OK');
    };

    #
    # RangesController->post_worksheet_cells_range_row_height  test
    #
    subtest 'Testing RangesController->post_worksheet_cells_range_row_height' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $range = AsposeCellsCloud::Object::Range->new();
         $range->{column_count} = 1  ;
         $range->{column_width} = 10.0  ;
         $range->{first_row} = 1  ;
         $range->{row_count} = 10  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeRowHeightRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  $range;
        $request->{value} =  10.9;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cells_range_row_height(request=> $request);
        ok($result,'post_worksheet_cells_range_row_height test OK');
    };

    #
    # RangesController->put_worksheet_cells_range  test
    #
    subtest 'Testing RangesController->put_worksheet_cells_range' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetCellsRangeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:C6';
        $request->{shift} =  'Down';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_cells_range(request=> $request);
        ok($result,'put_worksheet_cells_range test OK');
    };

    #
    # RangesController->delete_worksheet_cells_range  test
    #
    subtest 'Testing RangesController->delete_worksheet_cells_range' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetCellsRangeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:C6';
        $request->{shift} =  'Up';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_cells_range(request=> $request);
        ok($result,'delete_worksheet_cells_range test OK');
    };

    #
    # RangesController->post_worksheet_cells_range_sort  test
    #
    subtest 'Testing RangesController->post_worksheet_cells_range_sort' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Group.xlsx';
        my $remoteName = 'Group.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $range_sort_request_data_sorter = AsposeCellsCloud::Object::DataSorter->new();
         $range_sort_request_data_sorter->{case_sensitive} = 'true'  ;
        my $range_sort_request_cell_area = AsposeCellsCloud::Object::Range->new();
         $range_sort_request_cell_area->{column_count} = 3  ;
         $range_sort_request_cell_area->{first_column} = 0  ;
         $range_sort_request_cell_area->{first_row} = 0  ;
         $range_sort_request_cell_area->{row_count} = 15  ;
        my $range_sort_request = AsposeCellsCloud::Object::RangeSortRequest->new();
         $range_sort_request->{data_sorter} = $range_sort_request_data_sorter  ;
         $range_sort_request->{cell_area} = $range_sort_request_cell_area  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeSortRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'book1';
        $request->{range_sort_request} =  $range_sort_request;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cells_range_sort(request=> $request);
        ok($result,'post_worksheet_cells_range_sort test OK');
    };


1;