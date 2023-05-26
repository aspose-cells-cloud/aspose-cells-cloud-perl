use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Request::GetExtractBarcodesRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # CellsBarcodesController->get_extract_barcodes  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetExtractBarcodesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet8';
        $request->{picture_index} =  0;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_extract_barcodes(request=> $request);
        ok($result,'get_extract_barcodes test OK');
    }


1;