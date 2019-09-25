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
require 't\CellsTestBase.pl';
use_ok('AsposeCellsCloud::Configuration');
use_ok('AsposeCellsCloud::ApiClient');
use_ok('AsposeCellsCloud::CellsApi');
use_ok('AsposeCellsCloud::Object::SplitWorkbookTaskParameter');
use_ok('AsposeCellsCloud::Object::TaskData');
use_ok('AsposeCellsCloud::Object::TaskDescription');
use_ok('AsposeCellsCloud::Object::FileSource');

my $result ;
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
my $workbook_path ='Temp\\Book1.xlsx';

use_ok('AsposeCellsCloud::CellsApi');
my $api = AsposeCellsCloud::CellsApi->new(get_client());
isa_ok($api, 'AsposeCellsCloud::CellsApi');

#
# cells_task_post_run_task test
#
{
    my $task_data =  '{"Tasks":[{"TaskType":"Convert","TaskParameter":{"Workbook":{"FileSourceType":"CloudFileSystem","FilePath":"Temp/Book1.xlsx"},"DestinationFile":"ConvetedExcel.png","SaveOptions":{"ImageFormat":"Png","SaveFormat":"png"}}}]}';
    # $task_data ='{"Tasks":[{"TaskType":"SplitWorkbook","TaskParameter":{"Workbook":{"FileSourceType":"CloudFileSystem","FilePath":"Book1.xlsx"},"DestinationFilePosition":{"FileSourceType":"CloudFileSystem","FilePath":""},"DestinationFileFormat":"xlsx","SplitNameRule":"sheetname"}}]}';
    ready_file('api'=> $api, 'file'=>$BOOK1 ,'folder' =>$TEMPFOLDER) ;  
    $result = $api->cells_task_post_run_task(task_data => $task_data);
    ok('cells_task_post_run_task OK');
}


1;
