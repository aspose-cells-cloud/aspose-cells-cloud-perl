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

use_ok('AsposeCellsCloud::OAuthApi');
use_ok('AsposeCellsCloud::Configuration');
use_ok('AsposeCellsCloud::ApiClient');
use_ok('AsposeCellsCloud::CellsApi');
use_ok('AsposeCellsCloud::Object::ColumnsResponse');
use_ok('AsposeCellsCloud::Object::FontSetting');
use_ok('AsposeCellsCloud::Object::Style');
use_ok('AsposeCellsCloud::Object::SaaSposeResponse');

require 't\CellsTestBase.pl';
my $new_client = get_client();
copy_to_temp_1();

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

use_ok('AsposeCellsCloud::CellsPageBreaksApi');

my $api = AsposeCellsCloud::CellsPageBreaksApi->new($new_client);
isa_ok($api, 'AsposeCellsCloud::CellsPageBreaksApi');


#
# cells_page_breaks_put_horizontal_page_break test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $cellname = $CELLNAME; # replace NULL with a proper value
    my $row = 1; # replace NULL with a proper value
    my $column = 1; # replace NULL with a proper value
    my $start_column = 1; # replace NULL with a proper value
    my $end_column = 1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $result = $api->cells_page_breaks_put_horizontal_page_break(name => $name, sheet_name => $sheet_name, cellname => $cellname, row => $row, column => $column, start_column => $start_column, end_column => $end_column, folder => $folder);
    ok($result->status eq 'OK' ,'cells_page_breaks_put_horizontal_page_break OK');
}

#
# cells_page_breaks_put_vertical_page_break test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $cellname = $CELLNAME; # replace NULL with a proper value
    my $column = 1; # replace NULL with a proper value
    my $row = 1; # replace NULL with a proper value
    my $start_row = 1; # replace NULL with a proper value
    my $end_row = 1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $result = $api->cells_page_breaks_put_vertical_page_break(name => $name, sheet_name => $sheet_name, cellname => $cellname, column => $column, row => $row, start_row => $start_row, end_row => $end_row, folder => $folder);
    ok($result->status eq 'OK' ,'cells_page_breaks_put_vertical_page_break OK');
}
#
# cells_page_breaks_get_horizontal_page_break test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $result = $api->cells_page_breaks_get_horizontal_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_page_breaks_get_horizontal_page_break OK');
}

#
# cells_page_breaks_get_horizontal_page_breaks test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $result = $api->cells_page_breaks_get_horizontal_page_breaks(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_page_breaks_get_horizontal_page_breaks OK');
}

#
# cells_page_breaks_get_vertical_page_break test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $result = $api->cells_page_breaks_get_vertical_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_page_breaks_get_vertical_page_break OK');
}

#
# cells_page_breaks_get_vertical_page_breaks test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $result = $api->cells_page_breaks_get_vertical_page_breaks(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_page_breaks_get_vertical_page_breaks OK');
}

#
# cells_page_breaks_delete_horizontal_page_break test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $result = $api->cells_page_breaks_delete_horizontal_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_page_breaks_delete_horizontal_page_break OK');
}

#
# cells_page_breaks_delete_horizontal_page_breaks test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $row = 1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $result = $api->cells_page_breaks_delete_horizontal_page_breaks(name => $name, sheet_name => $sheet_name, row => $row, folder => $folder);
    ok($result->status eq 'OK' ,'cells_page_breaks_delete_horizontal_page_breaks OK');
}

#
# cells_page_breaks_delete_vertical_page_break test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $result = $api->cells_page_breaks_delete_vertical_page_break(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_page_breaks_delete_vertical_page_break OK');
}

#
# cells_page_breaks_delete_vertical_page_breaks test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $column = 1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $result = $api->cells_page_breaks_delete_vertical_page_breaks(name => $name, sheet_name => $sheet_name, column => $column, folder => $folder);
    ok($result->status eq 'OK' ,'cells_page_breaks_delete_vertical_page_breaks OK');
}


1;
