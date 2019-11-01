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
use AsposeCellsCloud::Object::ColumnsResponse;
use AsposeCellsCloud::Object::FormatCondition;
use AsposeCellsCloud::Object::ConditionalFormattingValue;
use AsposeCellsCloud::Object::FontSetting;
use AsposeCellsCloud::Object::Style;

require 't\CellsTestBase.pl';

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


my $api = get_client();
isa_ok($api, 'AsposeCellsCloud::CellsApi');


# cells_conditional_formattings_get_worksheet_conditional_formatting test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_conditional_formattings_get_worksheet_conditional_formatting(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_conditional_formattings_get_worksheet_conditional_formatting OK');
}

#
# cells_conditional_formattings_get_worksheet_conditional_formattings test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_conditional_formattings_get_worksheet_conditional_formattings(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_conditional_formattings_get_worksheet_conditional_formattings OK');
}

#
# cells_conditional_formattings_put_worksheet_conditional_formatting test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $cell_area = $CELLAREA; # replace NULL with a proper value
    my $formatcondition =  AsposeCellsCloud::Object::FormatCondition->new( Type => 'EndsWith', 
    Text => 'EndsWith', Operator=>'Between',Formula1=>'v1',Formula2=>'v2'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_conditional_formattings_put_worksheet_conditional_formatting(name => $name, sheet_name => $sheet_name, cell_area => $cell_area, formatcondition => $formatcondition, folder => $folder);
    ok($result->status eq 'OK' ,'cells_conditional_formattings_put_worksheet_conditional_formatting OK');
}

#
# cells_conditional_formattings_put_worksheet_format_condition test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $index = 0; # replace NULL with a proper value
    my $cell_area = $CELLAREA; # replace NULL with a proper value
    my $type = 'CellValue'; # replace NULL with a proper value
    my $operator_type = 'Between'; # replace NULL with a proper value
    my $formula1 = 'v1'; # replace NULL with a proper value
    my $formula2 = 'v2'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_conditional_formattings_put_worksheet_format_condition(name => $name, sheet_name => $sheet_name, index => $index, cell_area => $cell_area, type => $type, operator_type => $operator_type, formula1 => $formula1, formula2 => $formula2, folder => $folder);
    ok($result->status eq 'OK' ,'cells_conditional_formattings_put_worksheet_format_condition OK');
}

#
# cells_conditional_formattings_put_worksheet_format_condition_area test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $index = 0; # replace NULL with a proper value
    my $cell_area = $CELLAREA; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_conditional_formattings_put_worksheet_format_condition_area(name => $name, sheet_name => $sheet_name, index => $index, cell_area => $cell_area, folder => $folder);
    ok($result->status eq 'OK' ,'cells_conditional_formattings_put_worksheet_format_condition_area OK');
}

#
# cells_conditional_formattings_put_worksheet_format_condition_condition test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $index = 0; # replace NULL with a proper value
    my $type = 'CellValue'; # replace NULL with a proper value
    my $operator_type = 'Between'; # replace NULL with a proper value
    my $formula1 = 'v1'; # replace NULL with a proper value
    my $formula2 = 'v2'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_conditional_formattings_put_worksheet_format_condition_condition(name => $name, sheet_name => $sheet_name, index => $index, type => $type, operator_type => $operator_type, formula1 => $formula1, formula2 => $formula2, folder => $folder);
    ok($result->status eq 'OK' ,'cells_conditional_formattings_put_worksheet_format_condition_condition OK');
}

#
# cells_conditional_formattings_delete_worksheet_conditional_formatting test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_conditional_formattings_delete_worksheet_conditional_formatting(name => $name, sheet_name => $sheet_name, index => $index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_conditional_formattings_delete_worksheet_conditional_formatting OK');
}

#
# cells_conditional_formattings_delete_worksheet_conditional_formatting_area test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $start_row = 1; # replace NULL with a proper value
    my $start_column = 1; # replace NULL with a proper value
    my $total_rows = 4; # replace NULL with a proper value
    my $total_columns = 6; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    $result = $api->cells_conditional_formattings_delete_worksheet_conditional_formatting_area(name => $name, sheet_name => $sheet_name, start_row => $start_row, start_column => $start_column, total_rows => $total_rows, total_columns => $total_columns, folder => $folder);
    ok($result->status eq 'OK' ,'cells_conditional_formattings_delete_worksheet_conditional_formatting_area OK');
}

#
# cells_conditional_formattings_delete_worksheet_conditional_formattings test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_conditional_formattings_delete_worksheet_conditional_formattings(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_conditional_formattings_delete_worksheet_conditional_formattings OK');
}

1;
