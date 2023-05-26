use Test::More tests => 6; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::OleObject;
use AsposeCellsCloud::Request::GetWorksheetOleObjectsRequest;
use AsposeCellsCloud::Request::GetWorksheetOleObjectRequest;
use AsposeCellsCloud::Request::DeleteWorksheetOleObjectsRequest;
use AsposeCellsCloud::Request::DeleteWorksheetOleObjectRequest;
use AsposeCellsCloud::Request::PostUpdateWorksheetOleObjectRequest;
use AsposeCellsCloud::Request::PutWorksheetOleObjectRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # OleObjectsController->get_worksheet_ole_objects  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetOleObjectsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_ole_objects(request=> $request);
        ok($result,'get_worksheet_ole_objects test OK');
    }

    #
    # OleObjectsController->get_worksheet_ole_object  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetOleObjectRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{object_number} =  0;
        $request->{format} =  'png';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_ole_object(request=> $request);
        ok($result,'get_worksheet_ole_object test OK');
    }

    #
    # OleObjectsController->delete_worksheet_ole_objects  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetOleObjectsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_ole_objects(request=> $request);
        ok($result,'delete_worksheet_ole_objects test OK');
    }

    #
    # OleObjectsController->delete_worksheet_ole_object  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetOleObjectRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{ole_object_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_ole_object(request=> $request);
        ok($result,'delete_worksheet_ole_object test OK');
    }

    #
    # OleObjectsController->post_update_worksheet_ole_object  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $ole = AsposeCellsCloud::Object::OleObject->new();
         $ole->{left} = 10  ;
         $ole->{right} = 10  ;
         $ole->{height} = 90  ;
         $ole->{width} = 78  ;

        my $request = AsposeCellsCloud::Request::PostUpdateWorksheetOleObjectRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{ole_object_index} =  0;
        $request->{ole} =  $ole;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_update_worksheet_ole_object(request=> $request);
        ok($result,'post_update_worksheet_ole_object test OK');
    }

    #
    # OleObjectsController->put_worksheet_ole_object  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $oLEDoc = 'OLEDoc.docx';
        my $wordJPG = 'word.jpg';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $oLEDoc ,'folder' =>'OLEDoc.docx', 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $wordJPG ,'folder' =>'word.jpg', 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetOleObjectRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{upper_left_row} =  1;
        $request->{upper_left_column} =  1;
        $request->{height} =  100;
        $request->{width} =  80;
        $request->{ole_file} =  'OLEDoc.docx';
        $request->{image_file} =  'word.jpg';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_ole_object(request=> $request);
        ok($result,'put_worksheet_ole_object test OK');
    }


1;