use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::ColorFilterRequest;
use AsposeCellsCloud::Object::CellsColor;
use AsposeCellsCloud::Object::Color;
use AsposeCellsCloud::Request::GetWorksheetAutoFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetDateFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetIconFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetCustomFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetDynamicFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetFilterTop10Request;
use AsposeCellsCloud::Request::PutWorksheetColorFilterRequest;
use AsposeCellsCloud::Request::PostWorksheetMatchBlanksRequest;
use AsposeCellsCloud::Request::PostWorksheetMatchNonBlanksRequest;
use AsposeCellsCloud::Request::PostWorksheetAutoFilterRefreshRequest;
use AsposeCellsCloud::Request::DeleteWorksheetDateFilterRequest;
use AsposeCellsCloud::Request::DeleteWorksheetFilterRequest;
use AsposeCellsCloud::Request::PutConvertWorkbookRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # AutoFilterController->get_worksheet_auto_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        # ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'csv';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);

        ok(!$result,'put_convert_workbook test OK');
    }

    
1;