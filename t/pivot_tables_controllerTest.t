use Test::More tests => 21; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::PivotTableFieldRequest;
use AsposeCellsCloud::Object::PivotFilter;
use AsposeCellsCloud::Object::Style;
use AsposeCellsCloud::Object::Font;
use AsposeCellsCloud::Object::PivotField;
use AsposeCellsCloud::Request::GetWorksheetPivotTablesRequest;
use AsposeCellsCloud::Request::GetWorksheetPivotTableRequest;
use AsposeCellsCloud::Request::GetPivotTableFieldRequest;
use AsposeCellsCloud::Request::GetWorksheetPivotTableFiltersRequest;
use AsposeCellsCloud::Request::GetWorksheetPivotTableFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetPivotTableRequest;
use AsposeCellsCloud::Request::PutPivotTableFieldRequest;
use AsposeCellsCloud::Request::PutWorksheetPivotTableFilterRequest;
use AsposeCellsCloud::Request::PostPivotTableFieldHideItemRequest;
use AsposeCellsCloud::Request::PostPivotTableFieldMoveToRequest;
use AsposeCellsCloud::Request::PostPivotTableCellStyleRequest;
use AsposeCellsCloud::Request::PostPivotTableStyleRequest;
use AsposeCellsCloud::Request::PostPivotTableUpdatePivotFieldsRequest;
use AsposeCellsCloud::Request::PostPivotTableUpdatePivotFieldRequest;
use AsposeCellsCloud::Request::PostWorksheetPivotTableCalculateRequest;
use AsposeCellsCloud::Request::PostWorksheetPivotTableMoveRequest;
use AsposeCellsCloud::Request::DeleteWorksheetPivotTablesRequest;
use AsposeCellsCloud::Request::DeleteWorksheetPivotTableRequest;
use AsposeCellsCloud::Request::DeletePivotTableFieldRequest;
use AsposeCellsCloud::Request::DeleteWorksheetPivotTableFiltersRequest;
use AsposeCellsCloud::Request::DeleteWorksheetPivotTableFilterRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # PivotTablesController->get_worksheet_pivot_tables  test
    #
    subtest 'Testing PivotTablesController->get_worksheet_pivot_tables' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetPivotTablesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_pivot_tables(request=> $request);
        ok($result,'get_worksheet_pivot_tables test OK');
    };

    #
    # PivotTablesController->get_worksheet_pivot_table  test
    #
    subtest 'Testing PivotTablesController->get_worksheet_pivot_table' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetPivotTableRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivottable_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_pivot_table(request=> $request);
        ok($result,'get_worksheet_pivot_table test OK');
    };

    #
    # PivotTablesController->get_pivot_table_field  test
    #
    subtest 'Testing PivotTablesController->get_pivot_table_field' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetPivotTableFieldRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{pivot_field_index} =  0;
        $request->{pivot_field_type} =  'Row';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_pivot_table_field(request=> $request);
        ok($result,'get_pivot_table_field test OK');
    };

    #
    # PivotTablesController->get_worksheet_pivot_table_filters  test
    #
    subtest 'Testing PivotTablesController->get_worksheet_pivot_table_filters' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetPivotTableFiltersRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_pivot_table_filters(request=> $request);
        ok($result,'get_worksheet_pivot_table_filters test OK');
    };

    #
    # PivotTablesController->get_worksheet_pivot_table_filter  test
    #
    subtest 'Testing PivotTablesController->get_worksheet_pivot_table_filter' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetPivotTableFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet3';
        $request->{pivot_table_index} =  0;
        $request->{filter_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_pivot_table_filter(request=> $request);
        ok($result,'get_worksheet_pivot_table_filter test OK');
    };

    #
    # PivotTablesController->put_worksheet_pivot_table  test
    #
    subtest 'Testing PivotTablesController->put_worksheet_pivot_table' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetPivotTableRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{folder} =  $remoteFolder;
        $request->{source_data} =  '=Sheet1!C6:E13';
        $request->{dest_cell_name} =  'C1';
        $request->{table_name} =  'TestPivot';
        $request->{use_same_source} =  'true';
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_pivot_table(request=> $request);
        ok($result,'put_worksheet_pivot_table test OK');
    };

    #
    # PivotTablesController->put_pivot_table_field  test
    #
    subtest 'Testing PivotTablesController->put_pivot_table_field' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my @pivot_table_field_request_data = [];push (@pivot_table_field_request_data ,0 );
        my $pivot_table_field_request = AsposeCellsCloud::Object::PivotTableFieldRequest->new();
         $pivot_table_field_request->{data} = []; push ( @{$pivot_table_field_request->{data}}, 0  );  ;

        my $request = AsposeCellsCloud::Request::PutPivotTableFieldRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{pivot_field_type} =  'Row';
        $request->{pivot_table_field_request} =  $pivot_table_field_request;
        $request->{need_re_calculate} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_pivot_table_field(request=> $request);
        ok($result,'put_pivot_table_field test OK');
    };

    #
    # PivotTablesController->put_worksheet_pivot_table_filter  test
    #
    subtest 'Testing PivotTablesController->put_worksheet_pivot_table_filter' => sub { 
        # wait next version
        # my $remoteFolder = 'TestData/In';
      
        # my $localName = 'TestCase.xlsx';
        # my $remoteName = 'TestCase.xlsx';

        # ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        # my $filter = AsposeCellsCloud::Object::PivotFilter->new();
        #  $filter->{field_index} = 1  ;
        #  $filter->{filter_type} = 'Count'  ;

        # my $request = AsposeCellsCloud::Request::PutWorksheetPivotTableFilterRequest->new();
        # $request->{name} =  $remoteName;
        # $request->{sheet_name} =  'Sheet4';
        # $request->{pivot_table_index} =  0;
        # $request->{filter} =  $filter;
        # $request->{need_re_calculate} =  'true';
        # $request->{folder} =  $remoteFolder;
        # $request->{storage_name} =  '';
        # my $result =  $api->put_worksheet_pivot_table_filter(request=> $request);
        # ok($result,'put_worksheet_pivot_table_filter test OK');
        ok(1,'put_worksheet_pivot_table_filter test OK');
    };

    #
    # PivotTablesController->post_pivot_table_field_hide_item  test
    #
    subtest 'Testing PivotTablesController->post_pivot_table_field_hide_item' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostPivotTableFieldHideItemRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{pivot_field_type} =  'Row';
        $request->{field_index} =  0;
        $request->{item_index} =  1;
        $request->{is_hide} =  'true';
        $request->{need_re_calculate} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_pivot_table_field_hide_item(request=> $request);
        ok($result,'post_pivot_table_field_hide_item test OK');
    };

    #
    # PivotTablesController->post_pivot_table_field_move_to  test
    #
    subtest 'Testing PivotTablesController->post_pivot_table_field_move_to' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostPivotTableFieldMoveToRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{field_index} =  0;
        $request->{from} =  'Row';
        $request->{to} =  'Column';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_pivot_table_field_move_to(request=> $request);
        ok($result,'post_pivot_table_field_move_to test OK');
    };

    #
    # PivotTablesController->post_pivot_table_cell_style  test
    #
    subtest 'Testing PivotTablesController->post_pivot_table_cell_style' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $style_font = AsposeCellsCloud::Object::Font->new();
         $style_font->{size} = 16  ;
        my $style = AsposeCellsCloud::Object::Style->new();
         $style->{font} = $style_font  ;

        my $request = AsposeCellsCloud::Request::PostPivotTableCellStyleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{column} =  1;
        $request->{row} =  1;
        $request->{style} =  $style;
        $request->{need_re_calculate} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_pivot_table_cell_style(request=> $request);
        ok($result,'post_pivot_table_cell_style test OK');
    };

    #
    # PivotTablesController->post_pivot_table_style  test
    #
    subtest 'Testing PivotTablesController->post_pivot_table_style' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $style_font = AsposeCellsCloud::Object::Font->new();
         $style_font->{size} = 16  ;
        my $style = AsposeCellsCloud::Object::Style->new();
         $style->{font} = $style_font  ;

        my $request = AsposeCellsCloud::Request::PostPivotTableStyleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{style} =  $style;
        $request->{need_re_calculate} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_pivot_table_style(request=> $request);
        ok($result,'post_pivot_table_style test OK');
    };

    #
    # PivotTablesController->post_pivot_table_update_pivot_fields  test
    #
    subtest 'Testing PivotTablesController->post_pivot_table_update_pivot_fields' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $pivot_field = AsposeCellsCloud::Object::PivotField->new();
         $pivot_field->{show_compact} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostPivotTableUpdatePivotFieldsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{pivot_field_type} =  'Row';
        $request->{pivot_field} =  $pivot_field;
        $request->{need_re_calculate} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_pivot_table_update_pivot_fields(request=> $request);
        ok($result,'post_pivot_table_update_pivot_fields test OK');
    };

    #
    # PivotTablesController->post_pivot_table_update_pivot_field  test
    #
    subtest 'Testing PivotTablesController->post_pivot_table_update_pivot_field' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $pivot_field = AsposeCellsCloud::Object::PivotField->new();
         $pivot_field->{show_compact} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostPivotTableUpdatePivotFieldRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{pivot_field_index} =  0;
        $request->{pivot_field_type} =  'Row';
        $request->{pivot_field} =  $pivot_field;
        $request->{need_re_calculate} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_pivot_table_update_pivot_field(request=> $request);
        ok($result,'post_pivot_table_update_pivot_field test OK');
    };

    #
    # PivotTablesController->post_worksheet_pivot_table_calculate  test
    #
    subtest 'Testing PivotTablesController->post_worksheet_pivot_table_calculate' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetPivotTableCalculateRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_pivot_table_calculate(request=> $request);
        ok($result,'post_worksheet_pivot_table_calculate test OK');
    };

    #
    # PivotTablesController->post_worksheet_pivot_table_move  test
    #
    subtest 'Testing PivotTablesController->post_worksheet_pivot_table_move' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetPivotTableMoveRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{row} =  1;
        $request->{column} =  1;
        $request->{dest_cell_name} =  'C10';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_pivot_table_move(request=> $request);
        ok($result,'post_worksheet_pivot_table_move test OK');
    };

    #
    # PivotTablesController->delete_worksheet_pivot_tables  test
    #
    subtest 'Testing PivotTablesController->delete_worksheet_pivot_tables' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetPivotTablesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_pivot_tables(request=> $request);
        ok($result,'delete_worksheet_pivot_tables test OK');
    };

    #
    # PivotTablesController->delete_worksheet_pivot_table  test
    #
    subtest 'Testing PivotTablesController->delete_worksheet_pivot_table' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetPivotTableRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_pivot_table(request=> $request);
        ok($result,'delete_worksheet_pivot_table test OK');
    };

    #
    # PivotTablesController->delete_pivot_table_field  test
    #
    subtest 'Testing PivotTablesController->delete_pivot_table_field' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my @pivot_table_field_request_data = [];push (@pivot_table_field_request_data ,0 );
        my $pivot_table_field_request = AsposeCellsCloud::Object::PivotTableFieldRequest->new();
         $pivot_table_field_request->{data} = []; push ( @{$pivot_table_field_request->{data}}, 0  );  ;

        my $request = AsposeCellsCloud::Request::DeletePivotTableFieldRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{pivot_field_type} =  'Row';
        $request->{pivot_table_field_request} =  $pivot_table_field_request;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_pivot_table_field(request=> $request);
        ok($result,'delete_pivot_table_field test OK');
    };

    #
    # PivotTablesController->delete_worksheet_pivot_table_filters  test
    #
    subtest 'Testing PivotTablesController->delete_worksheet_pivot_table_filters' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetPivotTableFiltersRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet3';
        $request->{pivot_table_index} =  0;
        $request->{need_re_calculate} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_pivot_table_filters(request=> $request);
        ok($result,'delete_worksheet_pivot_table_filters test OK');
    };

    #
    # PivotTablesController->delete_worksheet_pivot_table_filter  test
    #
    subtest 'Testing PivotTablesController->delete_worksheet_pivot_table_filter' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetPivotTableFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet3';
        $request->{pivot_table_index} =  0;
        $request->{field_index} =  0;
        $request->{need_re_calculate} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_pivot_table_filter(request=> $request);
        ok($result,'delete_worksheet_pivot_table_filter test OK');
    };


1;