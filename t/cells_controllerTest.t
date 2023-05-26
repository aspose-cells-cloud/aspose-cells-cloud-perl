use Test::More tests => 40; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::Style;
use AsposeCellsCloud::Object::Font;
use AsposeCellsCloud::Object::CalculationOptions;
use AsposeCellsCloud::Object::FontSetting;
use AsposeCellsCloud::Request::PostClearContentsRequest;
use AsposeCellsCloud::Request::PostClearFormatsRequest;
use AsposeCellsCloud::Request::PostUpdateWorksheetRangeStyleRequest;
use AsposeCellsCloud::Request::PostWorksheetMergeRequest;
use AsposeCellsCloud::Request::PostWorksheetUnmergeRequest;
use AsposeCellsCloud::Request::GetWorksheetCellsRequest;
use AsposeCellsCloud::Request::GetWorksheetCellRequest;
use AsposeCellsCloud::Request::GetWorksheetCellStyleRequest;
use AsposeCellsCloud::Request::PostWorksheetCellSetValueRequest;
use AsposeCellsCloud::Request::PostUpdateWorksheetCellStyleRequest;
use AsposeCellsCloud::Request::PostSetCellRangeValueRequest;
use AsposeCellsCloud::Request::PostCopyCellIntoCellRequest;
use AsposeCellsCloud::Request::GetCellHtmlStringRequest;
use AsposeCellsCloud::Request::PostSetCellHtmlStringRequest;
use AsposeCellsCloud::Request::PostCellCalculateRequest;
use AsposeCellsCloud::Request::PostCellCharactersRequest;
use AsposeCellsCloud::Request::GetWorksheetColumnsRequest;
use AsposeCellsCloud::Request::PostSetWorksheetColumnWidthRequest;
use AsposeCellsCloud::Request::GetWorksheetColumnRequest;
use AsposeCellsCloud::Request::PutInsertWorksheetColumnsRequest;
use AsposeCellsCloud::Request::DeleteWorksheetColumnsRequest;
use AsposeCellsCloud::Request::PostHideWorksheetColumnsRequest;
use AsposeCellsCloud::Request::PostUnhideWorksheetColumnsRequest;
use AsposeCellsCloud::Request::PostGroupWorksheetColumnsRequest;
use AsposeCellsCloud::Request::PostUngroupWorksheetColumnsRequest;
use AsposeCellsCloud::Request::PostCopyWorksheetColumnsRequest;
use AsposeCellsCloud::Request::PostColumnStyleRequest;
use AsposeCellsCloud::Request::GetWorksheetRowsRequest;
use AsposeCellsCloud::Request::GetWorksheetRowRequest;
use AsposeCellsCloud::Request::DeleteWorksheetRowRequest;
use AsposeCellsCloud::Request::DeleteWorksheetRowsRequest;
use AsposeCellsCloud::Request::PutInsertWorksheetRowsRequest;
use AsposeCellsCloud::Request::PutInsertWorksheetRowRequest;
use AsposeCellsCloud::Request::PostUpdateWorksheetRowRequest;
use AsposeCellsCloud::Request::PostHideWorksheetRowsRequest;
use AsposeCellsCloud::Request::PostUnhideWorksheetRowsRequest;
use AsposeCellsCloud::Request::PostGroupWorksheetRowsRequest;
use AsposeCellsCloud::Request::PostUngroupWorksheetRowsRequest;
use AsposeCellsCloud::Request::PostCopyWorksheetRowsRequest;
use AsposeCellsCloud::Request::PostRowStyleRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # CellsController->post_clear_contents  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostClearContentsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:C10';
        $request->{start_row} =  1;
        $request->{start_column} =  1;
        $request->{end_row} =  3;
        $request->{end_column} =  3;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_clear_contents(request=> $request);
        ok($result,'post_clear_contents test OK');
    }

    #
    # CellsController->post_clear_formats  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostClearFormatsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:C10';
        $request->{start_row} =  1;
        $request->{start_column} =  1;
        $request->{end_row} =  3;
        $request->{end_column} =  3;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_clear_formats(request=> $request);
        ok($result,'post_clear_formats test OK');
    }

    #
    # CellsController->post_update_worksheet_range_style  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $style_font = AsposeCellsCloud::Object::Font->new();
         $style_font->{size} = 16  ;
        my $style = AsposeCellsCloud::Object::Style->new();
         $style->{font} = $style_font  ;

        my $request = AsposeCellsCloud::Request::PostUpdateWorksheetRangeStyleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:C10';
        $request->{style} =  $style;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_update_worksheet_range_style(request=> $request);
        ok($result,'post_update_worksheet_range_style test OK');
    }

    #
    # CellsController->post_worksheet_merge  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetMergeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{start_row} =  1;
        $request->{start_column} =  1;
        $request->{total_rows} =  4;
        $request->{total_columns} =  4;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_merge(request=> $request);
        ok($result,'post_worksheet_merge test OK');
    }

    #
    # CellsController->post_worksheet_unmerge  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetUnmergeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{start_row} =  1;
        $request->{start_column} =  1;
        $request->{total_rows} =  4;
        $request->{total_columns} =  4;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_unmerge(request=> $request);
        ok($result,'post_worksheet_unmerge test OK');
    }

    #
    # CellsController->get_worksheet_cells  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetCellsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{offest} =  1;
        $request->{count} =  10;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_cells(request=> $request);
        ok($result,'get_worksheet_cells test OK');
    }

    #
    # CellsController->get_worksheet_cell  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetCellRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_or_method_name} =  'A1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_cell(request=> $request);
        ok($result,'get_worksheet_cell test OK');
    }

    #
    # CellsController->get_worksheet_cell_style  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetCellStyleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'A1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_cell_style(request=> $request);
        ok($result,'get_worksheet_cell_style test OK');
    }

    #
    # CellsController->post_worksheet_cell_set_value  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetCellSetValueRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'A1';
        $request->{value} =  '1';
        $request->{type} =  'int';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_cell_set_value(request=> $request);
        ok($result,'post_worksheet_cell_set_value test OK');
    }

    #
    # CellsController->post_update_worksheet_cell_style  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $style_font = AsposeCellsCloud::Object::Font->new();
         $style_font->{size} = 16  ;
        my $style = AsposeCellsCloud::Object::Style->new();
         $style->{font} = $style_font  ;

        my $request = AsposeCellsCloud::Request::PostUpdateWorksheetCellStyleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'A1';
        $request->{style} =  $style;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_update_worksheet_cell_style(request=> $request);
        ok($result,'post_update_worksheet_cell_style test OK');
    }

    #
    # CellsController->post_set_cell_range_value  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostSetCellRangeValueRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cellarea} =  'A1:C10';
        $request->{value} =  'Test';
        $request->{type} =  'string';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_set_cell_range_value(request=> $request);
        ok($result,'post_set_cell_range_value test OK');
    }

    #
    # CellsController->post_copy_cell_into_cell  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostCopyCellIntoCellRequest->new();
        $request->{name} =  $remoteName;
        $request->{dest_cell_name} =  'C1';
        $request->{sheet_name} =  'Sheet1';
        $request->{worksheet} =  'Sheet2';
        $request->{cellname} =  'A1';
        $request->{row} =  1;
        $request->{column} =  1;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_copy_cell_into_cell(request=> $request);
        ok($result,'post_copy_cell_into_cell test OK');
    }

    #
    # CellsController->get_cell_html_string  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetCellHtmlStringRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'A1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_cell_html_string(request=> $request);
        ok($result,'get_cell_html_string test OK');
    }

    #
    # CellsController->post_set_cell_html_string  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostSetCellHtmlStringRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'A1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_set_cell_html_string(request=> $request);
        ok($result,'post_set_cell_html_string test OK');
    }

    #
    # CellsController->post_cell_calculate  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $options = AsposeCellsCloud::Object::CalculationOptions->new();
         $options->{recursive} = 'true'  ;
         $options->{ignore_error} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostCellCalculateRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'A1';
        $request->{options} =  $options;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_cell_calculate(request=> $request);
        ok($result,'post_cell_calculate test OK');
    }

    #
    # CellsController->post_cell_characters  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $optionsvalue0_font = AsposeCellsCloud::Object::Font->new();
         $optionsvalue0_font->{is_bold} = 'true'  ;
         $optionsvalue0_font->{size} = 16  ;
        my $optionsvalue0 = AsposeCellsCloud::Object::FontSetting->new();
         $optionsvalue0->{length} = 5  ;
         $optionsvalue0->{start_index} = 0  ;
         $optionsvalue0->{font} = $optionsvalue0_font  ;
        my @options = [];push (@options ,$optionsvalue0 );

        my $request = AsposeCellsCloud::Request::PostCellCharactersRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'E36';
        $request->{options} =  []; push ( @{$request->{options}}, $optionsvalue0  );;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_cell_characters(request=> $request);
        ok($result,'post_cell_characters test OK');
    }

    #
    # CellsController->get_worksheet_columns  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetColumnsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{offset} =  1;
        $request->{count} =  10;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_columns(request=> $request);
        ok($result,'get_worksheet_columns test OK');
    }

    #
    # CellsController->post_set_worksheet_column_width  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostSetWorksheetColumnWidthRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{column_index} =  1;
        $request->{width} =  10.9;
        $request->{count} =  10;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_set_worksheet_column_width(request=> $request);
        ok($result,'post_set_worksheet_column_width test OK');
    }

    #
    # CellsController->get_worksheet_column  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetColumnRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{column_index} =  1;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_column(request=> $request);
        ok($result,'get_worksheet_column test OK');
    }

    #
    # CellsController->put_insert_worksheet_columns  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutInsertWorksheetColumnsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{column_index} =  1;
        $request->{columns} =  10;
        $request->{update_reference} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_insert_worksheet_columns(request=> $request);
        ok($result,'put_insert_worksheet_columns test OK');
    }

    #
    # CellsController->delete_worksheet_columns  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetColumnsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{column_index} =  1;
        $request->{columns} =  10;
        $request->{update_reference} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_columns(request=> $request);
        ok($result,'delete_worksheet_columns test OK');
    }

    #
    # CellsController->post_hide_worksheet_columns  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostHideWorksheetColumnsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{start_column} =  1;
        $request->{total_columns} =  10;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_hide_worksheet_columns(request=> $request);
        ok($result,'post_hide_worksheet_columns test OK');
    }

    #
    # CellsController->post_unhide_worksheet_columns  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostUnhideWorksheetColumnsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{start_column} =  1;
        $request->{total_columns} =  10;
        $request->{width} =  10.9;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_unhide_worksheet_columns(request=> $request);
        ok($result,'post_unhide_worksheet_columns test OK');
    }

    #
    # CellsController->post_group_worksheet_columns  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostGroupWorksheetColumnsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{first_index} =  1;
        $request->{last_index} =  9;
        $request->{hide} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_group_worksheet_columns(request=> $request);
        ok($result,'post_group_worksheet_columns test OK');
    }

    #
    # CellsController->post_ungroup_worksheet_columns  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostUngroupWorksheetColumnsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{first_index} =  1;
        $request->{last_index} =  9;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_ungroup_worksheet_columns(request=> $request);
        ok($result,'post_ungroup_worksheet_columns test OK');
    }

    #
    # CellsController->post_copy_worksheet_columns  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostCopyWorksheetColumnsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{source_column_index} =  1;
        $request->{destination_column_index} =  19;
        $request->{column_number} =  8;
        $request->{worksheet} =  'Sheet2';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_copy_worksheet_columns(request=> $request);
        ok($result,'post_copy_worksheet_columns test OK');
    }

    #
    # CellsController->post_column_style  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $style_font = AsposeCellsCloud::Object::Font->new();
         $style_font->{size} = 16  ;
        my $style = AsposeCellsCloud::Object::Style->new();
         $style->{font} = $style_font  ;

        my $request = AsposeCellsCloud::Request::PostColumnStyleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{column_index} =  1;
        $request->{style} =  $style;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_column_style(request=> $request);
        ok($result,'post_column_style test OK');
    }

    #
    # CellsController->get_worksheet_rows  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetRowsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{offset} =  1;
        $request->{count} =  10;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_rows(request=> $request);
        ok($result,'get_worksheet_rows test OK');
    }

    #
    # CellsController->get_worksheet_row  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetRowRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{row_index} =  1;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_row(request=> $request);
        ok($result,'get_worksheet_row test OK');
    }

    #
    # CellsController->delete_worksheet_row  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetRowRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{row_index} =  1;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_row(request=> $request);
        ok($result,'delete_worksheet_row test OK');
    }

    #
    # CellsController->delete_worksheet_rows  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetRowsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{startrow} =  1;
        $request->{total_rows} =  10;
        $request->{update_reference} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_rows(request=> $request);
        ok($result,'delete_worksheet_rows test OK');
    }

    #
    # CellsController->put_insert_worksheet_rows  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutInsertWorksheetRowsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{startrow} =  1;
        $request->{total_rows} =  10;
        $request->{update_reference} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_insert_worksheet_rows(request=> $request);
        ok($result,'put_insert_worksheet_rows test OK');
    }

    #
    # CellsController->put_insert_worksheet_row  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutInsertWorksheetRowRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{row_index} =  1;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_insert_worksheet_row(request=> $request);
        ok($result,'put_insert_worksheet_row test OK');
    }

    #
    # CellsController->post_update_worksheet_row  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostUpdateWorksheetRowRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{row_index} =  1;
        $request->{height} =  10.8;
        $request->{count} =  9;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_update_worksheet_row(request=> $request);
        ok($result,'post_update_worksheet_row test OK');
    }

    #
    # CellsController->post_hide_worksheet_rows  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostHideWorksheetRowsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{startrow} =  1;
        $request->{total_rows} =  6;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_hide_worksheet_rows(request=> $request);
        ok($result,'post_hide_worksheet_rows test OK');
    }

    #
    # CellsController->post_unhide_worksheet_rows  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostUnhideWorksheetRowsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{startrow} =  1;
        $request->{total_rows} =  8;
        $request->{height} =  10.9;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_unhide_worksheet_rows(request=> $request);
        ok($result,'post_unhide_worksheet_rows test OK');
    }

    #
    # CellsController->post_group_worksheet_rows  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostGroupWorksheetRowsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{first_index} =  1;
        $request->{last_index} =  9;
        $request->{hide} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_group_worksheet_rows(request=> $request);
        ok($result,'post_group_worksheet_rows test OK');
    }

    #
    # CellsController->post_ungroup_worksheet_rows  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostUngroupWorksheetRowsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{first_index} =  1;
        $request->{last_index} =  9;
        $request->{is_all} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_ungroup_worksheet_rows(request=> $request);
        ok($result,'post_ungroup_worksheet_rows test OK');
    }

    #
    # CellsController->post_copy_worksheet_rows  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostCopyWorksheetRowsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{source_row_index} =  1;
        $request->{destination_row_index} =  12;
        $request->{row_number} =  5;
        $request->{worksheet} =  'Sheet2';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_copy_worksheet_rows(request=> $request);
        ok($result,'post_copy_worksheet_rows test OK');
    }

    #
    # CellsController->post_row_style  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $style_font = AsposeCellsCloud::Object::Font->new();
         $style_font->{size} = 16  ;
        my $style = AsposeCellsCloud::Object::Style->new();
         $style->{font} = $style_font  ;

        my $request = AsposeCellsCloud::Request::PostRowStyleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{row_index} =  1;
        $request->{style} =  $style;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_row_style(request=> $request);
        ok($result,'post_row_style test OK');
    }


1;