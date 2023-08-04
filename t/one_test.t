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

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # AutoFilterController->get_worksheet_auto_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetAutoFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_auto_filter(request=> $request);
        ok($result,'get_worksheet_auto_filter test OK');
    }

    
1;