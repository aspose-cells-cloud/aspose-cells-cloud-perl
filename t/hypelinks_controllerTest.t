use Test::More tests => 6; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::Hyperlink;
use AsposeCellsCloud::Request::GetWorksheetHyperlinksRequest;
use AsposeCellsCloud::Request::GetWorksheetHyperlinkRequest;
use AsposeCellsCloud::Request::DeleteWorksheetHyperlinkRequest;
use AsposeCellsCloud::Request::PostWorksheetHyperlinkRequest;
use AsposeCellsCloud::Request::PutWorksheetHyperlinkRequest;
use AsposeCellsCloud::Request::DeleteWorksheetHyperlinksRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # HypelinksController->get_worksheet_hyperlinks  test
    #
    subtest 'Testing HypelinksController->get_worksheet_hyperlinks' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetHyperlinksRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_hyperlinks(request=> $request);
        ok($result,'get_worksheet_hyperlinks test OK');
    };

    #
    # HypelinksController->get_worksheet_hyperlink  test
    #
    subtest 'Testing HypelinksController->get_worksheet_hyperlink' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetHyperlinkRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{hyperlink_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_hyperlink(request=> $request);
        ok($result,'get_worksheet_hyperlink test OK');
    };

    #
    # HypelinksController->delete_worksheet_hyperlink  test
    #
    subtest 'Testing HypelinksController->delete_worksheet_hyperlink' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetHyperlinkRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{hyperlink_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_hyperlink(request=> $request);
        ok($result,'delete_worksheet_hyperlink test OK');
    };

    #
    # HypelinksController->post_worksheet_hyperlink  test
    #
    subtest 'Testing HypelinksController->post_worksheet_hyperlink' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $hyperlink = AsposeCellsCloud::Object::Hyperlink->new();
         $hyperlink->{address} = 'https://products.aspose.cloud/cells/'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetHyperlinkRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{hyperlink_index} =  0;
        $request->{hyperlink} =  $hyperlink;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_hyperlink(request=> $request);
        ok($result,'post_worksheet_hyperlink test OK');
    };

    #
    # HypelinksController->put_worksheet_hyperlink  test
    #
    subtest 'Testing HypelinksController->put_worksheet_hyperlink' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetHyperlinkRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{first_row} =  1;
        $request->{first_column} =  1;
        $request->{total_rows} =  2;
        $request->{total_columns} =  3;
        $request->{address} =  'https://products.aspose.cloud/cells/';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_hyperlink(request=> $request);
        ok($result,'put_worksheet_hyperlink test OK');
    };

    #
    # HypelinksController->delete_worksheet_hyperlinks  test
    #
    subtest 'Testing HypelinksController->delete_worksheet_hyperlinks' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetHyperlinksRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_hyperlinks(request=> $request);
        ok($result,'delete_worksheet_hyperlinks test OK');
    };


1;