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
use Test::More tests => 10; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;
use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::CellsApi;
use AsposeCellsCloud::Object::ColumnsResponse;
use AsposeCellsCloud::Object::ListObject;
use AsposeCellsCloud::Object::DataSorter;
use AsposeCellsCloud::Object::CreatePivotTableRequest;

require './t/CellsTestBase.pl';


my $result =undef;
my $BOOK1 = 'Book1.xlsx';
my $MYDOC = 'myDocument.xlsx';
my $PVTESTFILE = 'TestCase.xlsx';
my $TEMPFOLDER = 'PerlTest';
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

my $api = get_client();

#
# cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $list_object_index = 0; # replace NULL with a proper value
    my $destsheet_name = $SHEET2 ; # replace NULL with a proper value
    my @pivot_field_columns =[qw(2)];
    my @pivot_field_data = [qw(1)];
    my @pivot_field_rows = [qw(0)];
    my $dest_cell_name = 'C1';
    my $request =  AsposeCellsCloud::Object::CreatePivotTableRequest->new(
        DestCellName => $dest_cell_name ,
        Name => 'testp' , 
        SourceData => '=Sheet2!A1:E8' , 
        UseSameSource => 'true' , 
        PivotFieldColumns => @pivot_field_columns, 
        PivotFieldData => @pivot_field_data ,
        PivotFieldRows =>@pivot_field_rows   ) ; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, destsheet_name => $destsheet_name, request => $request, folder => $folder);
    ok($result->status eq 'OK' ,'cells_postcells_list_objects_post_worksheet_list_object_summarize_with_pivot_table_cell_calculate OK');
}

#
# cells_list_objects_put_worksheet_list_object test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $start_row = 1; # replace NULL with a proper value
    my $start_column = 1; # replace NULL with a proper value
    my $end_row = 10; # replace NULL with a proper value
    my $end_column = 10; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $has_headers = 'true'; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_put_worksheet_list_object(name => $name, sheet_name => $sheet_name, start_row => $start_row, start_column => $start_column, end_row => $end_row, end_column => $end_column, folder => $folder, has_headers => $has_headers);
    ok($result->status eq 'OK' ,'cells_list_objects_put_worksheet_list_object OK');
}
#
# cells_list_objects_get_worksheet_list_object test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $listobjectindex = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $format = 'pdf';
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_get_worksheet_list_object(name => $name, sheet_name => $sheet_name, listobjectindex => $listobjectindex, format => $format, folder => $folder);
    
}

#
# cells_list_objects_get_worksheet_list_objects test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_get_worksheet_list_objects(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_list_objects_get_worksheet_list_objects OK');
}

#
# cells_list_objects_post_worksheet_list_object test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $list_object_index = 0; # replace NULL with a proper value
    my $list_object =  AsposeCellsCloud::Object::ListObject->new(display_name => 'display_name' ) ; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_post_worksheet_list_object(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, list_object => $list_object, folder => $folder);
    ok($result->status eq 'OK' ,'cells_list_objects_post_worksheet_list_object OK');
}

#
# cells_list_objects_post_worksheet_list_object_convert_to_range test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $list_object_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_post_worksheet_list_object_convert_to_range(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_list_objects_post_worksheet_list_object_convert_to_range OK');
}

#
# cells_list_objects_post_worksheet_list_object_sort_table test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $list_object_index = 0; # replace NULL with a proper value
    my $data_sorter = AsposeCellsCloud::Object::DataSorter->new(case_sensitive => 'true' ) ;; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_post_worksheet_list_object_sort_table(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, data_sorter => $data_sorter, folder => $folder);
    ok($result->status eq 'OK' ,'cells_list_objects_post_worksheet_list_object_sort_table OK');
}


#
# cells_list_objects_delete_worksheet_list_object test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $list_object_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_delete_worksheet_list_object(name => $name, sheet_name => $sheet_name, list_object_index => $list_object_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_list_objects_delete_worksheet_list_object OK');
}

#
# cells_list_objects_delete_worksheet_list_objects test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_delete_worksheet_list_objects(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_list_objects_delete_worksheet_list_objects OK');
}

#
# cells_list_objects_post_worksheet_list_column test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $list_object_index  = 0;
    my $list_column_index = 1;
    my $list_column = "{\"Name\":\"test\" , \"TotalsCalculation\":\"Average\"}";
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_post_worksheet_list_column(name => $name, sheet_name => $sheet_name, list_object_index=> $list_object_index,column_index => $list_column_index, list_column =>$list_column ,folder => $folder);
    ok($result->status eq 'OK' ,'cells_list_objects_post_worksheet_list_column OK');
}


#
# cells_list_objects_post_worksheet_list_columns_total test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET7; # replace NULL with a proper value
    my $list_object_index  = 0;
    my $table_total_requests =  "[{\"ListColumnIndex\":\"1\" , \"TotalsCalculation\":\"Average\"}]";
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_list_objects_post_worksheet_list_columns_total(name => $name, sheet_name => $sheet_name, list_object_index=> $list_object_index,table_total_requests => $table_total_requests, folder => $folder);
    ok($result->status eq 'OK' ,'cells_list_objects_post_worksheet_list_columns_totalw   OK');
}
1;
