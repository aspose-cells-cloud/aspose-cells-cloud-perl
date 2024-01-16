use Test::More tests => 39; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::MatchConditionRequest;
use AsposeCellsCloud::Object::WorksheetMovingRequest;
use AsposeCellsCloud::Object::ProtectSheetParameter;
use AsposeCellsCloud::Object::Comment;
use AsposeCellsCloud::Object::DataSorter;
use AsposeCellsCloud::Object::CopyOptions;
use AsposeCellsCloud::Object::Worksheet;
use AsposeCellsCloud::Request::GetWorksheetsRequest;
use AsposeCellsCloud::Request::GetWorksheetWithFormatRequest;
use AsposeCellsCloud::Request::PutChangeVisibilityWorksheetRequest;
use AsposeCellsCloud::Request::PutActiveWorksheetRequest;
use AsposeCellsCloud::Request::PutInsertNewWorksheetRequest;
use AsposeCellsCloud::Request::PutAddNewWorksheetRequest;
use AsposeCellsCloud::Request::DeleteWorksheetRequest;
use AsposeCellsCloud::Request::DeleteWorksheetsRequest;
use AsposeCellsCloud::Request::PostMoveWorksheetRequest;
use AsposeCellsCloud::Request::PutProtectWorksheetRequest;
use AsposeCellsCloud::Request::DeleteUnprotectWorksheetRequest;
use AsposeCellsCloud::Request::GetWorksheetTextItemsRequest;
use AsposeCellsCloud::Request::GetWorksheetCommentsRequest;
use AsposeCellsCloud::Request::GetWorksheetCommentRequest;
use AsposeCellsCloud::Request::PutWorksheetCommentRequest;
use AsposeCellsCloud::Request::PostWorksheetCommentRequest;
use AsposeCellsCloud::Request::DeleteWorksheetCommentRequest;
use AsposeCellsCloud::Request::DeleteWorksheetCommentsRequest;
use AsposeCellsCloud::Request::GetWorksheetMergedCellsRequest;
use AsposeCellsCloud::Request::GetWorksheetMergedCellRequest;
use AsposeCellsCloud::Request::GetWorksheetCalculateFormulaRequest;
use AsposeCellsCloud::Request::PostWorksheetCalculateFormulaRequest;
use AsposeCellsCloud::Request::PostWorksheetTextSearchRequest;
use AsposeCellsCloud::Request::PostWorksheetTextReplaceRequest;
use AsposeCellsCloud::Request::PostWorksheetRangeSortRequest;
use AsposeCellsCloud::Request::PostAutofitWorksheetRowRequest;
use AsposeCellsCloud::Request::PostAutofitWorksheetRowsRequest;
use AsposeCellsCloud::Request::PostAutofitWorksheetColumnsRequest;
use AsposeCellsCloud::Request::PutWorksheetBackgroundRequest;
use AsposeCellsCloud::Request::DeleteWorksheetBackgroundRequest;
use AsposeCellsCloud::Request::PutWorksheetFreezePanesRequest;
use AsposeCellsCloud::Request::DeleteWorksheetFreezePanesRequest;
use AsposeCellsCloud::Request::PostCopyWorksheetRequest;
use AsposeCellsCloud::Request::PostRenameWorksheetRequest;
use AsposeCellsCloud::Request::PostUpdateWorksheetPropertyRequest;
use AsposeCellsCloud::Request::GetNamedRangesRequest;
use AsposeCellsCloud::Request::GetNamedRangeValueRequest;
use AsposeCellsCloud::Request::PostUpdateWorksheetZoomRequest;
use AsposeCellsCloud::Request::GetWorksheetPageCountRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # WorksheetController->get_worksheets  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetsRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheets(request=> $request);
        ok($result,'get_worksheets test OK');
    }

    #
    # WorksheetController->get_worksheet_with_format  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetWithFormatRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{format} =  'png';
        $request->{page_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_with_format(request=> $request);
        ok($result,'get_worksheet_with_format test OK');
    }

    #
    # WorksheetController->put_change_visibility_worksheet  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutChangeVisibilityWorksheetRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{is_visible} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_change_visibility_worksheet(request=> $request);
        ok($result,'put_change_visibility_worksheet test OK');
    }

    #
    # WorksheetController->put_active_worksheet  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutActiveWorksheetRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_active_worksheet(request=> $request);
        ok($result,'put_active_worksheet test OK');
    }

    #
    # WorksheetController->put_insert_new_worksheet  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutInsertNewWorksheetRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{index} =  1;
        $request->{sheettype} =  'VB';
        $request->{newsheetname} =  'VBASheet';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_insert_new_worksheet(request=> $request);
        ok($result,'put_insert_new_worksheet test OK');
    }

    #
    # WorksheetController->put_add_new_worksheet  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutAddNewWorksheetRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{position} =  0;
        $request->{sheettype} =  'VB';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_add_new_worksheet(request=> $request);
        ok($result,'put_add_new_worksheet test OK');
    }

    #
    # WorksheetController->delete_worksheet  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet(request=> $request);
        ok($result,'delete_worksheet test OK');
    }

    #
    # WorksheetController->delete_worksheets  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $match_condition = AsposeCellsCloud::Object::MatchConditionRequest->new();
         $match_condition->{regex_pattern} = '{*}'  ;

        my $request = AsposeCellsCloud::Request::DeleteWorksheetsRequest->new();
        $request->{name} =  $remoteName;
        $request->{match_condition} =  $match_condition;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheets(request=> $request);
        ok($result,'delete_worksheets test OK');
    }

    #
    # WorksheetController->post_move_worksheet  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $moving = AsposeCellsCloud::Object::WorksheetMovingRequest->new();
         $moving->{destination_worksheet} = 'Sheet4'  ;
         $moving->{position} = 'After'  ;

        my $request = AsposeCellsCloud::Request::PostMoveWorksheetRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{moving} =  $moving;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_move_worksheet(request=> $request);
        ok($result,'post_move_worksheet test OK');
    }

    #
    # WorksheetController->put_protect_worksheet  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $protect_parameter = AsposeCellsCloud::Object::ProtectSheetParameter->new();
         $protect_parameter->{protection_type} = 'ALL'  ;
         $protect_parameter->{password} = '123'  ;

        my $request = AsposeCellsCloud::Request::PutProtectWorksheetRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{protect_parameter} =  $protect_parameter;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_protect_worksheet(request=> $request);
        ok($result,'put_protect_worksheet test OK');
    }

    #
    # WorksheetController->delete_unprotect_worksheet  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $protect_parameter = AsposeCellsCloud::Object::ProtectSheetParameter->new();
         $protect_parameter->{protection_type} = 'ALL'  ;
         $protect_parameter->{password} = '123'  ;

        my $request = AsposeCellsCloud::Request::DeleteUnprotectWorksheetRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{protect_parameter} =  $protect_parameter;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_unprotect_worksheet(request=> $request);
        ok($result,'delete_unprotect_worksheet test OK');
    }

    #
    # WorksheetController->get_worksheet_text_items  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetTextItemsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_text_items(request=> $request);
        ok($result,'get_worksheet_text_items test OK');
    }

    #
    # WorksheetController->get_worksheet_comments  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetCommentsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_comments(request=> $request);
        ok($result,'get_worksheet_comments test OK');
    }

    #
    # WorksheetController->get_worksheet_comment  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetCommentRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'B3';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_comment(request=> $request);
        ok($result,'get_worksheet_comment test OK');
    }

    #
    # WorksheetController->put_worksheet_comment  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $comment = AsposeCellsCloud::Object::Comment->new();
         $comment->{author} = 'aspose cells developer'  ;
         $comment->{note} = 'aspose cells cloud api add comment.'  ;

        my $request = AsposeCellsCloud::Request::PutWorksheetCommentRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'C1';
        $request->{comment} =  $comment;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_comment(request=> $request);
        ok($result,'put_worksheet_comment test OK');
    }

    #
    # WorksheetController->post_worksheet_comment  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $comment = AsposeCellsCloud::Object::Comment->new();
         $comment->{author} = 'aspose cells developer'  ;
         $comment->{note} = 'aspose cells cloud api update comment.'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetCommentRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'B3';
        $request->{comment} =  $comment;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_comment(request=> $request);
        ok($result,'post_worksheet_comment test OK');
    }

    #
    # WorksheetController->delete_worksheet_comment  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetCommentRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_name} =  'B3';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_comment(request=> $request);
        ok($result,'delete_worksheet_comment test OK');
    }

    #
    # WorksheetController->delete_worksheet_comments  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetCommentsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_comments(request=> $request);
        ok($result,'delete_worksheet_comments test OK');
    }

    #
    # WorksheetController->get_worksheet_merged_cells  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetMergedCellsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_merged_cells(request=> $request);
        ok($result,'get_worksheet_merged_cells test OK');
    }

    #
    # WorksheetController->get_worksheet_merged_cell  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetMergedCellRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{merged_cell_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_merged_cell(request=> $request);
        ok($result,'get_worksheet_merged_cell test OK');
    }

    #
    # WorksheetController->get_worksheet_calculate_formula  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetCalculateFormulaRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{formula} =  '=NOW()';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_calculate_formula(request=> $request);
        ok($result,'get_worksheet_calculate_formula test OK');
    }

    #
    # WorksheetController->post_worksheet_calculate_formula  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetCalculateFormulaRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{formula} =  '=NOW()';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_calculate_formula(request=> $request);
        ok($result,'post_worksheet_calculate_formula test OK');
    }

    #
    # WorksheetController->post_worksheet_text_search  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetTextSearchRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{text} =  '123';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_text_search(request=> $request);
        ok($result,'post_worksheet_text_search test OK');
    }

    #
    # WorksheetController->post_worksheet_text_replace  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetTextReplaceRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{old_value} =  '123';
        $request->{new_value} =  '456';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_text_replace(request=> $request);
        ok($result,'post_worksheet_text_replace test OK');
    }

    #
    # WorksheetController->post_worksheet_range_sort  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $data_sorter = AsposeCellsCloud::Object::DataSorter->new();
         $data_sorter->{case_sensitive} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetRangeSortRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cell_area} =  'A1:C10';
        $request->{data_sorter} =  $data_sorter;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_range_sort(request=> $request);
        ok($result,'post_worksheet_range_sort test OK');
    }

    #
    # WorksheetController->post_autofit_worksheet_row  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostAutofitWorksheetRowRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{row_index} =  1;
        $request->{first_column} =  1;
        $request->{last_column} =  8;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_autofit_worksheet_row(request=> $request);
        ok($result,'post_autofit_worksheet_row test OK');
    }

    #
    # WorksheetController->post_autofit_worksheet_rows  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostAutofitWorksheetRowsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{start_row} =  1;
        $request->{end_row} =  9;
        $request->{only_auto} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_autofit_worksheet_rows(request=> $request);
        ok($result,'post_autofit_worksheet_rows test OK');
    }

    #
    # WorksheetController->post_autofit_worksheet_columns  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostAutofitWorksheetColumnsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{start_column} =  1;
        $request->{end_column} =  9;
        $request->{only_auto} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_autofit_worksheet_columns(request=> $request);
        ok($result,'post_autofit_worksheet_columns test OK');
    }

    #
    # WorksheetController->put_worksheet_background  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $waterMarkPNG = 'WaterMark.png';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $waterMarkPNG ,'folder' =>$remoteFolder . '/WaterMark.png', 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetBackgroundRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{pic_path} =  $remoteFolder . '/WaterMark.png';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_background(request=> $request);
        ok($result,'put_worksheet_background test OK');
    }

    #
    # WorksheetController->delete_worksheet_background  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetBackgroundRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_background(request=> $request);
        ok($result,'delete_worksheet_background test OK');
    }

    #
    # WorksheetController->put_worksheet_freeze_panes  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetFreezePanesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{row} =  1;
        $request->{column} =  1;
        $request->{freezed_rows} =  4;
        $request->{freezed_columns} =  5;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_freeze_panes(request=> $request);
        ok($result,'put_worksheet_freeze_panes test OK');
    }

    #
    # WorksheetController->delete_worksheet_freeze_panes  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetFreezePanesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{row} =  1;
        $request->{column} =  1;
        $request->{freezed_rows} =  4;
        $request->{freezed_columns} =  5;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_freeze_panes(request=> $request);
        ok($result,'delete_worksheet_freeze_panes test OK');
    }

    #
    # WorksheetController->post_copy_worksheet  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $options = AsposeCellsCloud::Object::CopyOptions->new();
         $options->{column_character_width} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostCopyWorksheetRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet15';
        $request->{source_sheet} =  'Sheet6';
        $request->{options} =  $options;
        $request->{source_workbook} =  '';
        $request->{source_folder} =  '';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_copy_worksheet(request=> $request);
        ok($result,'post_copy_worksheet test OK');
    }

    #
    # WorksheetController->post_rename_worksheet  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostRenameWorksheetRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet5';
        $request->{newname} =  'Sheet55';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_rename_worksheet(request=> $request);
        ok($result,'post_rename_worksheet test OK');
    }

    #
    # WorksheetController->post_update_worksheet_property  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $sheet = AsposeCellsCloud::Object::Worksheet->new();
         $sheet->{name} = 'sheet65'  ;
         $sheet->{is_gridlines_visible} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostUpdateWorksheetPropertyRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet5';
        $request->{sheet} =  $sheet;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_update_worksheet_property(request=> $request);
        ok($result,'post_update_worksheet_property test OK');
    }

    #
    # WorksheetController->get_named_ranges  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetNamedRangesRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_named_ranges(request=> $request);
        ok($result,'get_named_ranges test OK');
    }

    #
    # WorksheetController->get_named_range_value  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetNamedRangeValueRequest->new();
        $request->{name} =  $remoteName;
        $request->{namerange} =  'Name_2';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_named_range_value(request=> $request);
        ok($result,'get_named_range_value test OK');
    }

    #
    # WorksheetController->post_update_worksheet_zoom  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostUpdateWorksheetZoomRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{value} =  90;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_update_worksheet_zoom(request=> $request);
        ok($result,'post_update_worksheet_zoom test OK');
    }

    #
    # WorksheetController->get_worksheet_page_count  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetPageCountRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_page_count(request=> $request);
        ok($result,'get_worksheet_page_count test OK');
    }


1;