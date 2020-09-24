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
use AsposeCellsCloud::Object::SparklineGroup;
use AsposeCellsCloud::CellsApi;

require '/home/roy/aspose/cells/cloud/sdk/perl/t/CellsTestBase.pl';

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
# cells_sparkline_groups_get_worksheet_sparkline_groups test
#
{
    my $name = $PVTESTFILE; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;
    $result = $api->cells_sparkline_groups_get_worksheet_sparkline_groups(name => $name, sheet_name => $sheet_name,  folder => $folder);
    ok($result->status eq 'OK' ,'cells_sparkline_groups_get_worksheet_sparkline_groups OK');

    my $putResult = $api->cells_sparkline_groups_put_worksheet_sparkline_group(name => $name, sheet_name => $sheet_name, type =>'Line', data_range => 'C6:E13',is_vertical=>'false' , location_range=>'G6:G13',folder => $folder);
    ok($putResult->status eq 'OK' ,'cells_sparkline_groups_get_worksheet_sparkline_groups OK');

    $result = $api->cells_sparkline_groups_get_worksheet_sparkline_group(name => $name, sheet_name => $sheet_name, sparkline_index=>0 ,folder => $folder);
    ok($result->status eq 'OK' ,'cells_sparkline_groups_get_worksheet_sparkline_group OK');

    my $sparklineGroup = AsposeCellsCloud::Object::SparklineGroup->new('display_hidden' => 'true');
    
    $result = $api->(name => $name, sheet_name => $sheet_name, sparkline_index=>0 ,sparkline_group => $sparklineGroup  ,folder => $folder);
    ok($result->status eq 'OK' ,'cells_sparkline_groups_post_worksheet_sparkline_group OK');

    $result = $api->cells_sparkline_groups_delete_worksheet_sparkline_group(name => $name, sheet_name => $sheet_name, sparkline_index=>0 ,folder => $folder);
    ok($result->status eq 'OK' ,'cells_sparkline_groups_delete_worksheet_sparkline_group OK');

    $result = $api->cells_sparkline_groups_delete_worksheet_sparkline_groups(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_sparkline_groups_delete_worksheet_sparkline_groups OK');
}