=begin comment

Web API Swagger specification

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('AsposeCellsCloud::Configuration');
use_ok('AsposeCellsCloud::ApiClient');
use_ok('AsposeCellsCloud::CellsApi');
use_ok('AsposeCellsCloud::Object::ProtectSheetParameter');
use_ok('AsposeCellsCloud::Object::CopyOptions');
use_ok('AsposeCellsCloud::Object::WorksheetMovingRequest');
use_ok('AsposeCellsCloud::Object::DataSorter');
use_ok('AsposeCellsCloud::Object::Worksheet');
use_ok('AsposeCellsCloud::Object::Comment');

require 't\CellsTestBase.pl';
my $new_client = get_client();
my $result =undef;

my $BOOK1 = 'Book1.xlsx';
my $MYDOC = 'myDocument.xlsx';
my $PVTESTFILE = 'TestCase.xlsx';
my $TEMPFOLDER = 'Temp';
my $SHEET1 = 'Sheet1';
my $SHEET2 = 'Sheet2';
my $SHEET3 = 'Sheet3';
my $SHEET4 = 'Sheet4';
my $SHEET5 = 'Sheet5';
my $SHEET6 = 'Sheet6';
my $SHEET7 = 'Sheet7';
my $SHEET8 = 'Sheet8';
my $CELLNAME = 'A1';
my $RANGE = 'A1:C10';
my $CELLAREA = 'A1:C10';

use_ok('AsposeCellsCloud::CellsApi');

my $api = AsposeCellsCloud::CellsApi->new($new_client);
isa_ok($api, 'AsposeCellsCloud::CellsApi');

#
# cells_worksheets_delete_unprotect_worksheet test 
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $protect_parameter = AsposeCellsCloud::Object::ProtectSheetParameter->new(Password=>undef, ProtectionType=>'All');  # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_delete_unprotect_worksheet(name => $name,
     sheet_name => $sheet_name, 
     protect_parameter => $protect_parameter, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_delete_decrypt_document OK');
}

#
# cells_worksheets_put_worksheet_comment test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $cell_name = 'C1'; # replace NULL with a proper value
    my $comment = AsposeCellsCloud::Object::Comment->new(Author=>'Roy'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_put_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, comment => $comment, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_put_worksheet_comment OK');
}

#
# cells_worksheets_put_worksheet_freeze_panes test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $row = 1; # replace NULL with a proper value
    my $column = 1; # replace NULL with a proper value
    my $freezed_rows = 2; # replace NULL with a proper value
    my $freezed_columns = 3; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_put_worksheet_freeze_panes(name => $name, sheet_name => $sheet_name, row => $row, column => $column, freezed_rows => $freezed_rows, freezed_columns => $freezed_columns, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_put_worksheet_freeze_panes OK');
}
#
# cells_worksheets_delete_worksheet_background test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_delete_worksheet_background(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_decells_worksheets_delete_worksheet_backgroundlete_worksheet OK');
}
#
# cells_worksheets_get_worksheet test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $format = 'png'; # replace NULL with a proper value
    my $vertical_resolution = 90; # replace NULL with a proper value
    my $horizontal_resolution = 120; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_get_worksheet(name => $name,
    sheet_name => $sheet_name,
    format => $format,
    vertical_resolution => $vertical_resolution,
    horizontal_resolution => $horizontal_resolution,
    folder => $folder);
}



# 
# cells_worksheets_get_worksheet_comment test 
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $cell_name = 'B3'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_get_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_get_worksheet_comment OK');
}

#
# cells_worksheets_get_worksheet_comments test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_get_worksheet_comments(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_get_worksheet_comments OK');
}

#
# cells_worksheets_get_worksheet_merged_cell test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $merged_cell_index = 1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_get_worksheet_merged_cell(name => $name, sheet_name => $sheet_name, merged_cell_index => $merged_cell_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_get_worksheet_merged_cell OK');
}

#
# cells_worksheets_get_worksheet_merged_cells test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_get_worksheet_merged_cells(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_get_worksheet_merged_cells OK');
}

#
# cells_worksheets_get_worksheet_text_items test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_get_worksheet_text_items(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_get_worksheet_text_items OK');
}

#
# cells_worksheets_get_worksheets test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    $result = $api->cells_worksheets_get_worksheets(name => $name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workscells_worksheets_get_worksheetsheets_get_worksheet_merged_cells OK');
}

#
# cells_worksheets_get_named_ranges test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_get_named_ranges(name => $name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_get_named_ranges OK');
}
#
# cells_worksheets_get_worksheet_calculate_formula test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $formula = '=NOW()'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_get_worksheet_calculate_formula(name => $name, sheet_name => $sheet_name, formula => $formula, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_get_worksheet_calculate_formula OK');
}

#
# cells_worksheets_post_autofit_worksheet_columns test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $first_column = 10; # replace NULL with a proper value
    my $last_column = 10; # replace NULL with a proper value
    my $auto_fitter_options = undef; # replace NULL with a proper value
    my $first_row = 1; # replace NULL with a proper value
    my $last_row = 1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_autofit_worksheet_columns(name => $name, sheet_name => $sheet_name, first_column => $first_column, last_column => $last_column, auto_fitter_options => $auto_fitter_options, first_row => $first_row, last_row => $last_row, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_autofit_worksheet_columns OK');
}

#
# cells_worksheets_post_autofit_worksheet_row test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $row_index = 1; # replace NULL with a proper value
    my $first_column = 1; # replace NULL with a proper value
    my $last_column = 10; # replace NULL with a proper value
    my $auto_fitter_options = undef; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_autofit_worksheet_row(name => $name, sheet_name => $sheet_name, row_index => $row_index, first_column => $first_column, last_column => $last_column, auto_fitter_options => $auto_fitter_options, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_autofit_worksheet_row OK');
}

#
# cells_worksheets_post_autofit_worksheet_rows test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $auto_fitter_options = undef; # replace NULL with a proper value
    my $start_row = 1; # replace NULL with a proper value
    my $end_row = 10; # replace NULL with a proper value
    my $only_auto = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_autofit_worksheet_rows(name => $name, sheet_name => $sheet_name, auto_fitter_options => $auto_fitter_options, start_row => $start_row, end_row => $end_row, only_auto => $only_auto, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_autofit_worksheet_rows OK');
}

#
# cells_worksheets_post_copy_worksheet test
#
{

    my $name = "NewCopy.xlsx"; # replace NULL with a proper value
    my $sheet_name = $SHEET5; # replace NULL with a proper value
    my $source_sheet = $SHEET6; # replace NULL with a proper value
    my $options = AsposeCellsCloud::Object::CopyOptions->new(ColumnCharacterWidth =>'true'); # replace NULL with a proper value
    my $source_workbook = $BOOK1; # replace NULL with a proper value
    my $source_folder = $TEMPFOLDER; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_copy_worksheet(name => $name,
         sheet_name => $sheet_name, 
         source_sheet => $source_sheet, 
         options => $options, 
         source_workbook => $source_workbook, 
         source_folder => $source_folder, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_copy_worksheet OK');
}

#
# cells_worksheets_post_move_worksheet test
#
{
   
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $moving = AsposeCellsCloud::Object::WorksheetMovingRequest->new (DestinationWorksheet => $SHEET3 , Position => 'after'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_move_worksheet(name => $name, sheet_name => $sheet_name, moving => $moving, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_move_worksheet OK');
}

#
# cells_worksheets_post_rename_worksheet test
#
{

    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $newname = 'renametest'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_rename_worksheet(name => $name, sheet_name => $sheet_name, newname => $newname, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_rename_worksheet OK');
}

#
# cells_worksheets_post_update_worksheet_property test
#
{
    
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $sheet = AsposeCellsCloud::Object::Worksheet->new (IsGridlinesVisible=>'true'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_update_worksheet_property(name => $name, sheet_name => $sheet_name, sheet => $sheet, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_update_worksheet_property OK');
}

#
# cells_worksheets_post_update_worksheet_zoom test
#
{
   
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $value = 1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_update_worksheet_zoom(name => $name, sheet_name => $sheet_name, value => $value, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_update_worksheet_zoom OK');
}

#
# cells_worksheets_post_worksheet_comment test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $cell_name = 'B3'; # replace NULL with a proper value
    my $comment = AsposeCellsCloud::Object::Comment->new(Author=>'Roy'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, comment => $comment, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_worksheet_comment OK');
}

#
# cells_worksheets_post_worksheet_range_sort test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $cell_area = $CELLAREA; # replace NULL with a proper value
    my $data_sorter = AsposeCellsCloud::Object::DataSorter->new(CaseSensitive => 'true'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_worksheet_range_sort(name => $name, sheet_name => $sheet_name, cell_area => $cell_area, data_sorter => $data_sorter, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_worksheet_range_sort OK');
}

#
# cells_worksheets_post_worksheet_text_search test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $text = 'undef'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_worksheet_text_search(name => $name, sheet_name => $sheet_name, text => $text, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_worksheet_text_search OK');
}

#
# cells_worksheets_post_worsheet_text_replace test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $old_value = '123'; # replace NULL with a proper value
    my $new_value = 'undef'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_post_worsheet_text_replace(name => $name, sheet_name => $sheet_name, old_value => $old_value, new_value => $new_value, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_post_worsheet_text_replace OK');
}

#
# cells_worksheets_put_add_new_worksheet test
#
{
    
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $position = 1; # replace NULL with a proper value
    my $sheettype = 'VB'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_put_add_new_worksheet(name => $name, sheet_name => $sheet_name, position => $position, sheettype => $sheettype, folder => $folder);
    ok($result->status eq 'Created' ,'cells_worksheets_put_add_new_worksheet OK');
}

#
# cells_worksheets_put_change_visibility_worksheet test
#
{
    
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $is_visible = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_put_change_visibility_worksheet(name => $name, 
        sheet_name => $sheet_name,
        is_visible => $is_visible, 
        folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_put_change_visibility_worksheet OK');
}

#
# cells_worksheets_put_protect_worksheet test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $protect_parameter = AsposeCellsCloud::Object::ProtectSheetParameter->new(ProtectionType=>'All' , Password=>'123'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_worksheets_put_protect_worksheet(name => $name, sheet_name => $sheet_name, protect_parameter => $protect_parameter, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_put_protect_worksheet OK');
}

#
# cells_worksheets_put_worksheet_background test ?
#
{
    
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $png = undef; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    open(DATA, "<D:\\Projects\\Aspose\\Aspose.Cloud\\Aspose.Cells.Cloud.SDK\\src\\TestData\\WaterMark.png") or die "file.txt 文件无法打开, $!";
    binmode(DATA);
    read (DATA, $png, 8);
    close (DATA);
    $result = $api->cells_worksheets_put_worksheet_background(name => $name, sheet_name => $sheet_name, png => $png, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_put_worksheet_background OK');
}




#
# cells_worksheets_delete_worksheet_comment test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $cell_name = 'C1'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    $result = $api->cells_worksheets_delete_worksheet_comment(name => $name, sheet_name => $sheet_name, cell_name => $cell_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_delete_worksheet_comment OK');
}

#
# cells_worksheets_delete_worksheet_comments test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    $result = $api->cells_worksheets_delete_worksheet_comments(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_delete_worksheet_comments OK');
}

#
# cells_worksheets_delete_worksheet_freeze_panes test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $row = 1; # replace NULL with a proper value
    my $column = 1; # replace NULL with a proper value
    my $freezed_rows = 2; # replace NULL with a proper value
    my $freezed_columns = 2; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    $result = $api->cells_worksheets_delete_worksheet_freeze_panes(name => $name, sheet_name => $sheet_name, row => $row, column => $column, freezed_rows => $freezed_rows, freezed_columns => $freezed_columns, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_delete_worksheet_freeze_panes OK');
}
#
# cells_worksheets_delete_worksheet test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    $result = $api->cells_worksheets_delete_worksheet(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_delete_worksheet OK');
}

1;
