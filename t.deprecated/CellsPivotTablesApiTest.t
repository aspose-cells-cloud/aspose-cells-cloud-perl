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
use Test::More tests => 23; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;
use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::CellsApi;
use AsposeCellsCloud::Object::CreatePivotTableRequest;
use AsposeCellsCloud::Object::PivotTableFieldRequest;
use AsposeCellsCloud::Object::AutoFilter;
use AsposeCellsCloud::Object::Top10Filter;
use AsposeCellsCloud::Object::PivotFilter;
use AsposeCellsCloud::Object::Style;
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
# cells_pivot_tables_put_pivot_table_field  test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $pivot_field_type = 'Row'; # replace NULL with a proper value
    my @data = [qw(1)];
    my $request = AsposeCellsCloud::Object::PivotTableFieldRequest->new( Data => @data ); # replace NULL with a proper value
    my $need_re_calculate = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_put_pivot_table_field(name => $name,
        sheet_name => $sheet_name,
        pivot_table_index => $pivot_table_index,
        pivot_field_type => $pivot_field_type,
        request => $request,
        need_re_calculate => $need_re_calculate,
        folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_put_pivot_table_field OK');
}

#
# cells_pivot_tables_put_worksheet_pivot_table test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    
     my $request = AsposeCellsCloud::Object::CreatePivotTableRequest->new (
        name=>'TestPivot',
        dest_cell_name => 'C1',
        source_data => 'Sheet1!C6:E13',
        use_same_source => 'true'
    ); # replace NULL with a proper value
    $request = undef;
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $source_data = 'Sheet1!C6:E13'; # replace NULL with a proper value
    my $dest_cell_name = 'C1'; # replace NULL with a proper value
    my $table_name = 'TestPivot'; # replace NULL with a proper value
    my $use_same_source = 'true'; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_put_worksheet_pivot_table(name => $name, sheet_name => $sheet_name, request => $request, folder => $folder, source_data => $source_data, dest_cell_name => $dest_cell_name, table_name => $table_name, use_same_source => $use_same_source);
    ok($result->status eq 'OK' ,'cells_pivot_tables_put_worksheet_pivot_table OK');
}


#
# cells_pivot_tables_get_worksheet_pivot_tables test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_get_worksheet_pivot_tables(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_get_worksheet_pivot_tables OK');
}

#
# cells_pivot_tables_post_pivot_table_cell_style test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $column = 1; # replace NULL with a proper value
    my $row = 1; # replace NULL with a proper value
    my $style = AsposeCellsCloud::Object::Style->new(custom => '##.#'); # replace NULL with a proper value
    my $need_re_calculate = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_post_pivot_table_cell_style(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, column => $column, row => $row, style => $style, need_re_calculate => $need_re_calculate, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_post_pivot_table_cell_style OK');
}

#
# cells_pivot_tables_post_pivot_table_field_hide_item test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $pivot_field_type = 'Row'; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $item_index = 1; # replace NULL with a proper value
    my $is_hide = 'true'; # replace NULL with a proper value
    my $need_re_calculate = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_post_pivot_table_field_hide_item(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, pivot_field_type => $pivot_field_type, field_index => $field_index, item_index => $item_index, is_hide => $is_hide, need_re_calculate => $need_re_calculate, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_post_pivot_table_field_hide_item OK');
}

#
# cells_pivot_tables_post_pivot_table_field_move_to test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $from = 'Row'; # replace NULL with a proper value
    my $to = 'Column'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_post_pivot_table_field_move_to(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, field_index => $field_index, from => $from, to => $to, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_post_pivot_table_field_move_to OK');
}

#
# cells_pivot_tables_post_pivot_table_style test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $style =  AsposeCellsCloud::Object::Style->new(custom => '##.#'); # replace NULL with a proper value
    my $need_re_calculate = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_post_pivot_table_style(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, style => $style, need_re_calculate => $need_re_calculate, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_post_pivot_table_style OK');
}

#
# cells_pivot_tables_post_worksheet_pivot_table_calculate test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_post_worksheet_pivot_table_calculate(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_post_worksheet_pivot_table_calculate OK');
}

#
# cells_pivot_tables_post_worksheet_pivot_table_move test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $row = 1; # replace NULL with a proper value
    my $column = 1; # replace NULL with a proper value
    my $dest_cell_name = 'C10'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_post_worksheet_pivot_table_move(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, row => $row, column => $column, dest_cell_name => $dest_cell_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_post_worksheet_pivot_table_move OK');
}


#
# cells_pivot_tables_delete_pivot_table_field test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $pivot_field_type = 'Row'; # replace NULL with a proper value
    my @data = [qw(1)];
    my $request = AsposeCellsCloud::Object::PivotTableFieldRequest->new( Data => @data ); # replace NULL with a proper value
    my $need_re_calculate = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_put_pivot_table_field(name => $name,
        sheet_name => $sheet_name,
        pivot_table_index => $pivot_table_index,
        pivot_field_type => $pivot_field_type,
        request => $request,
        need_re_calculate => $need_re_calculate,
        folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_put_pivot_table_field OK');
    
    $result = $api->cells_pivot_tables_delete_pivot_table_field(name => $name,
    sheet_name => $sheet_name,
    pivot_table_index => $pivot_table_index,
    pivot_field_type => $pivot_field_type,
    request => $request,
    folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_delete_pivot_table_field OK');
}

#
# cells_pivot_tables_put_worksheet_pivot_table_filter test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $top_10_filter= AsposeCellsCloud::Object::Top10Filter->new(
        Items => 1 ,
        IsTop=>'true',
        IsPercent=>'true');
    my $filter_column = AsposeCellsCloud::Object::FilterColumn->new(
        FilterType => 'Top10',
        FieldIndex => 0,
        Top10Filter =>$top_10_filter);
    my @filter_columns = [$filter_column];
    my $auto_filter = AsposeCellsCloud::Object::AutoFilter->new(FilterColumns=>@filter_columns);
    my $filter = AsposeCellsCloud::Object::PivotFilter->new(
        FieldIndex =>1,
        FilterType =>'Count',
        AutoFilter =>$auto_filter); # replace NULL with a proper value
    my $need_re_calculate = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_put_worksheet_pivot_table_filter(name => $name,
        sheet_name => $sheet_name,
        pivot_table_index => $pivot_table_index,
        filter => $filter,
        need_re_calculate => $need_re_calculate,
        folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_put_worksheet_pivot_table_filter OK');    
}
#
# cells_pivot_tables_get_worksheet_pivot_table_filter test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $filter_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    $result = $api->cells_pivot_tables_get_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, filter_index => $filter_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_get_worksheet_pivot_table_filter OK');
}
#
# cells_pivot_tables_get_worksheet_pivot_table_filters test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_get_worksheet_pivot_table_filters(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_get_worksheet_pivot_table_filters OK');
}

#
# cells_pivot_tables_delete_worksheet_pivot_table_filter test
#
# {
#     my $name = $PVTESTFILE; # replace NULL with a proper value
#     my $sheet_name = $SHEET4; # replace NULL with a proper value
#     my $pivot_table_index = 0; # replace NULL with a proper value
#     my $field_index = 0; # replace NULL with a proper value
#     my $need_re_calculate = 'true'; # replace NULL with a proper value
#     my $folder = $TEMPFOLDER; # replace NULL with a proper value
#     $result = $api->cells_pivot_tables_delete_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, field_index => $field_index, need_re_calculate => $need_re_calculate, folder => $folder);
#     ok($result->status eq 'OK' ,'cells_pivot_tables_delete_worksheet_pivot_table_filter OK');
# }


#
# cells_pivot_tables_delete_worksheet_pivot_table_filters test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $need_re_calculate = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    # ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_delete_worksheet_pivot_table_filters(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, need_re_calculate => $need_re_calculate, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_delete_worksheet_pivot_table_filters OK');
}

#
# cells_pivot_tables_delete_worksheet_pivot_table test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
     $result = $api->cells_pivot_tables_delete_worksheet_pivot_table(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_delete_worksheet_pivot_table OK');
}


#
# cells_pivot_tables_delete_worksheet_pivot_tables test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_delete_worksheet_pivot_tables(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_delete_worksheet_pivot_tables OK');
}
#
# cells_pivot_tables_put_worksheet_pivot_table_filter test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $top_10_filter= AsposeCellsCloud::Object::Top10Filter->new(
        Items => 1 ,
        IsTop=>'true',
        IsPercent=>'true');
    my $filter_column = AsposeCellsCloud::Object::FilterColumn->new(
        FilterType => 'Top10',
        FieldIndex => 0,
        Top10Filter =>$top_10_filter);
    my $auto_filter = AsposeCellsCloud::Object::AutoFilter->new(FilterColumns=>[$filter_column]);
    my $filter = AsposeCellsCloud::Object::PivotFilter->new(
        FieldIndex =>1,
        FilterType =>'Count',
        AutoFilter =>$auto_filter); # replace NULL with a proper value
    my $need_re_calculate = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_put_worksheet_pivot_table_filter(name => $name,
        sheet_name => $sheet_name,
        pivot_table_index => $pivot_table_index,
        filter => $filter,
        need_re_calculate => $need_re_calculate,
        folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_put_worksheet_pivot_table_filter OK');

    my $field_index = 0; # replace NULL with a proper value
    my $filter_index = 0;

    my $result1 = $api->cells_pivot_tables_get_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, filter_index => $filter_index, folder => $folder);

    ok($result1->status eq 'OK' ,'cells_pivot_tables_get_worksheet_pivot_table_filter OK');

    $result = $api->cells_pivot_tables_delete_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, field_index => $field_index, need_re_calculate => $need_re_calculate, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_delete_worksheet_pivot_table_filter OK');
}
#
# cells_pivot_tables_get_worksheet_pivot_table_filter test
#
# {
#     my $name = $PVTESTFILE; # replace NULL with a proper value
#     my $sheet_name = $SHEET4; # replace NULL with a proper value
#     my $pivot_table_index = 0; # replace NULL with a proper value
#     my $filter_index = 0; # replace NULL with a proper value
#     my $folder = $TEMPFOLDER; # replace NULL with a proper value
#     ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;
#     $result = $api->cells_pivot_tables_get_worksheet_pivot_table_filter(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, filter_index => $filter_index, folder => $folder);
#     ok($result->status eq 'OK' ,'cells_pivot_tables_get_worksheet_pivot_table_filter OK');
# }
#
# cells_pivot_tables_get_worksheet_pivot_table_filters test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_get_worksheet_pivot_table_filters(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_get_worksheet_pivot_table_filters OK');
}

#
# cells_pivot_tables_get_pivot_table_field test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivot_table_index = 0; # replace NULL with a proper value
    my $pivot_field_index = 0; # replace NULL with a proper value
    my $pivot_field_type = 'Row'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_get_pivot_table_field(name => $name, sheet_name => $sheet_name, pivot_table_index => $pivot_table_index, pivot_field_index => $pivot_field_index, pivot_field_type => $pivot_field_type, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_get_pivot_table_field OK');
}


#
# cells_pivot_tables_get_worksheet_pivot_table test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $pivottable_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pivot_tables_get_worksheet_pivot_table(name => $name, sheet_name => $sheet_name, pivottable_index => $pivottable_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pivot_tables_get_worksheet_pivot_table OK');
}
1;