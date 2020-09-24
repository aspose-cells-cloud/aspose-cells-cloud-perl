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
use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::CellsApi;
use AsposeCellsCloud::Object::RangeSetStyleRequest;
use AsposeCellsCloud::Object::Range;
use AsposeCellsCloud::Object::RangeSetOutlineBorderRequest;
use AsposeCellsCloud::Object::PasteOptions;
use AsposeCellsCloud::Object::RangeCopyRequest;
use AsposeCellsCloud::Object::Color;
require '/home/roy/aspose/cells/cloud/sdk/perl/t/CellsTestBase.pl';


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
# cells_ranges_get_worksheet_cells_range_value test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $namerange = undef; # replace NULL with a proper value
    my $first_row = 0; # replace NULL with a proper value
    my $first_column = 0; # replace NULL with a proper value
    my $row_count = 3; # replace NULL with a proper value
    my $column_count = 2; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_ranges_get_worksheet_cells_range_value(name => $name, sheet_name => $sheet_name, namerange => $namerange, first_row => $first_row, first_column => $first_column, row_count => $row_count, column_count => $column_count, folder => $folder);
    ok($result->status eq 'OK' ,'cells_ranges_get_worksheet_cells_range_value OK');
}

#
# cells_ranges_post_worksheet_cells_range_column_width test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $value = 10.01;  # replace NULL with a proper value
    my $range = AsposeCellsCloud::Object::Range->new(FirstColumn => 1 , FirstRow => 1 , ColumnCount => 3 , RowCount => 2,  ColumnWidth=>10.01  ); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_ranges_post_worksheet_cells_range_column_width(name => $name, sheet_name => $sheet_name, value => $value, range => $range, folder => $folder);
    ok($result->status eq 'OK' ,'cells_ranges_post_worksheet_cells_range_column_width OK');
}

#
# cells_ranges_post_worksheet_cells_range_merge test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $range =  AsposeCellsCloud::Object::Range->new(FirstColumn => 1 , FirstRow => 1 , ColumnCount => 3 , RowCount => 2,  ColumnWidth=>10.01 ); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_ranges_post_worksheet_cells_range_merge(name => $name, sheet_name => $sheet_name, range => $range, folder => $folder);
    ok($result->status eq 'OK' ,'cells_ranges_post_worksheet_cells_range_merge OK');
}

#
# cells_ranges_post_worksheet_cells_range_move_to test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $dest_row = 1; # replace NULL with a proper value
    my $dest_column = 1; # replace NULL with a proper value
    my $range =  AsposeCellsCloud::Object::Range->new(FirstColumn => 1 , FirstRow => 1 , ColumnCount => 3 , RowCount => 2,  ColumnWidth=>10.01 ); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_ranges_post_worksheet_cells_range_move_to(name => $name, sheet_name => $sheet_name, dest_row => $dest_row, dest_column => $dest_column, range => $range, folder => $folder);
    ok($result->status eq 'OK' ,'cells_ranges_post_worksheet_cells_range_move_to OK');
}

#
# cells_ranges_post_worksheet_cells_range_outline_border test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $coloer = AsposeCellsCloud::Object::Color->new(r=>255);
    my $range =  AsposeCellsCloud::Object::Range->new(FirstColumn => 1 , FirstRow => 1 , ColumnCount => 3 , RowCount => 2,  ColumnWidth=>10.01 );
    my $range_operate = AsposeCellsCloud::Object::RangeSetOutlineBorderRequest->new ( borderColor=>$coloer,
        borderEdge =>'LeftBorder', borderStyle => 'Dotted', Range=>$range); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_ranges_post_worksheet_cells_range_outline_border(name => $name, sheet_name => $sheet_name, range_operate => $range_operate, folder => $folder);
    ok($result->status eq 'OK' ,'cells_ranges_post_worksheet_cells_range_outline_border OK');
}

#
# cells_ranges_post_worksheet_cells_range_row_height test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $value =  10.99; # replace NULL with a proper value
    my $range = AsposeCellsCloud::Object::Range->new(FirstColumn => 1 , FirstRow => 1 , ColumnCount => 3 , RowCount => 2,  ColumnWidth=>10.01 ); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_ranges_post_worksheet_cells_range_row_height(name => $name, sheet_name => $sheet_name, value => $value, range => $range, folder => $folder);
    ok($result->status eq 'OK' ,'cells_ranges_post_worksheet_cells_range_row_height OK');
}

#
# cells_ranges_post_worksheet_cells_range_style test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $range = AsposeCellsCloud::Object::Range->new(FirstColumn => 1 , FirstRow => 1 , ColumnCount => 3 , RowCount => 2,  ColumnWidth=>10.01 );
    my $style = AsposeCellsCloud::Object::Style->new(Custom =>'##.#');
    my $range_operate = AsposeCellsCloud::Object::RangeSetStyleRequest->new(Range=> $range , Style=>$style); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_ranges_post_worksheet_cells_range_style(name => $name, sheet_name => $sheet_name, range_operate => $range_operate, folder => $folder);
    ok($result->status eq 'OK' ,'cells_ranges_post_worksheet_cells_range_style OK');
}

#
# cells_ranges_post_worksheet_cells_range_unmerge test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $range = AsposeCellsCloud::Object::Range->new(FirstColumn => 1 , FirstRow => 1 , ColumnCount => 3 , RowCount => 2,  ColumnWidth=>10.01 ); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_ranges_post_worksheet_cells_range_unmerge(name => $name, sheet_name => $sheet_name, range => $range, folder => $folder);
    ok($result->status eq 'OK' ,'cells_ranges_post_worksheet_cells_range_unmerge OK');
}

#
# cells_ranges_post_worksheet_cells_range_value test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $value = 10; # replace NULL with a proper value
    my $range = AsposeCellsCloud::Object::Range->new(FirstColumn => 1 , FirstRow => 1 , ColumnCount => 3 , RowCount => 2,  ColumnWidth=>10.01 ); # replace NULL with a proper value
    my $is_converted = 'true'; # replace NULL with a proper value
    my $set_style = 'false'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_ranges_post_worksheet_cells_range_value(name => $name, sheet_name => $sheet_name, value => $value, range => $range, is_converted => $is_converted, set_style => $set_style, folder => $folder);
    ok($result->status eq 'OK' ,'cells_ranges_post_worksheet_cells_range_value OK');
}

#
# cells_ranges_post_worksheet_cells_ranges test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $paste_options = AsposeCellsCloud::Object::PasteOptions->new (OnlyVisibleCells => 'true');
    my $source =   AsposeCellsCloud::Object::Range->new(FirstColumn => 1 , FirstRow => 1 , ColumnCount => 3 , RowCount => 2,  ColumnWidth=>10.01 ); # replace NULL with a proper value
    my $target =   AsposeCellsCloud::Object::Range->new(FirstColumn => 10 , FirstRow => 1 , ColumnCount => 3 , RowCount => 2,  ColumnWidth=>10.01 ); # replace NULL with a proper value    
    my $range_operate = AsposeCellsCloud::Object::RangeCopyRequest->new( Operate =>'copydata', PasteOptions =>$paste_options, Source => $source ,Target=>$target ); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_ranges_post_worksheet_cells_ranges(name => $name, sheet_name => $sheet_name, range_operate => $range_operate, folder => $folder);
    ok($result->status eq 'OK' ,'cells_ranges_post_worksheet_cells_ranges OK');
}


1;
