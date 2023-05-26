use Test::More tests => 6; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::Picture;
use AsposeCellsCloud::Request::GetWorksheetPicturesRequest;
use AsposeCellsCloud::Request::GetWorksheetPictureWithFormatRequest;
use AsposeCellsCloud::Request::PutWorksheetAddPictureRequest;
use AsposeCellsCloud::Request::PostWorksheetPictureRequest;
use AsposeCellsCloud::Request::DeleteWorksheetPictureRequest;
use AsposeCellsCloud::Request::DeleteWorksheetPicturesRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # PicturesController->get_worksheet_pictures  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetPicturesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_pictures(request=> $request);
        ok($result,'get_worksheet_pictures test OK');
    }

    #
    # PicturesController->get_worksheet_picture_with_format  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetPictureWithFormatRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{picture_number} =  0;
        $request->{format} =  'png';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_picture_with_format(request=> $request);
        ok($result,'get_worksheet_picture_with_format test OK');
    }

    #
    # PicturesController->put_worksheet_add_picture  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $waterMarkPNG = 'WaterMark.png';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $waterMarkPNG ,'folder' =>$remoteFolder . '/WaterMark.png', 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetAddPictureRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{upper_left_row} =  1;
        $request->{upper_left_column} =  1;
        $request->{lower_right_row} =  10;
        $request->{lower_right_column} =  10;
        $request->{picture_path} =  $remoteFolder . '/WaterMark.png';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_add_picture(request=> $request);
        ok($result,'put_worksheet_add_picture test OK');
    }

    #
    # PicturesController->post_worksheet_picture  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $picture = AsposeCellsCloud::Object::Picture->new();
         $picture->{left} = 10  ;
         $picture->{bottom} = 10  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetPictureRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{picture_index} =  0;
        $request->{picture} =  $picture;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_picture(request=> $request);
        ok($result,'post_worksheet_picture test OK');
    }

    #
    # PicturesController->delete_worksheet_picture  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetPictureRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{picture_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_picture(request=> $request);
        ok($result,'delete_worksheet_picture test OK');
    }

    #
    # PicturesController->delete_worksheet_pictures  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetPicturesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_pictures(request=> $request);
        ok($result,'delete_worksheet_pictures test OK');
    }


1;