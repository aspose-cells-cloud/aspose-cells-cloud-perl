use Test::More tests => 5; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Request::DownloadFileRequest;
use AsposeCellsCloud::Request::UploadFileRequest;
use AsposeCellsCloud::Request::CopyFileRequest;
use AsposeCellsCloud::Request::MoveFileRequest;
use AsposeCellsCloud::Request::DeleteFileRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # FileController->download_file  test
    #
    subtest 'Testing FileController->download_file' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DownloadFileRequest->new();
        $request->{path} =  $remoteFolder . '/' . $remoteName;
        $request->{storage_name} =  '';
        $request->{version_id} =  '';
        my $result =  $api->download_file(request=> $request);
        ok($result,'download_file test OK');
    };

    #
    # FileController->upload_file  test
    #
    subtest 'Testing FileController->upload_file' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::UploadFileRequest->new();
        $request->{upload_files} =  $mapFiles;
        $request->{path} =  $remoteFolder . '/' . $remoteName;
        $request->{storage_name} =  '';
        my $result =  $api->upload_file(request=> $request);
        ok($result,'upload_file test OK');
    };

    #
    # FileController->copy_file  test
    #
    subtest 'Testing FileController->copy_file' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::CopyFileRequest->new();
        $request->{src_path} =  $remoteFolder . '/' . $remoteName;
        $request->{dest_path} =  'OutResult/' . $remoteName;
        $request->{src_storage_name} =  '';
        $request->{dest_storage_name} =  '';
        $request->{version_id} =  '';
        my $result =  $api->copy_file(request=> $request);
        ok('copy_file test OK'); 
    };

    #
    # FileController->move_file  test
    #
    subtest 'Testing FileController->move_file' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::MoveFileRequest->new();
        $request->{src_path} =  $remoteFolder . '/' . $remoteName;
        $request->{dest_path} =  'OutResult/' . $remoteName;
        $request->{src_storage_name} =  '';
        $request->{dest_storage_name} =  '';
        $request->{version_id} =  '';
        my $result =  $api->move_file(request=> $request);
        ok('move_file test OK'); 
    };

    #
    # FileController->delete_file  test
    #
    subtest 'Testing FileController->delete_file' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteFileRequest->new();
        $request->{path} =  $remoteFolder . '/' . $remoteName;
        $request->{storage_name} =  '';
        $request->{version_id} =  '';
        my $result =  $api->delete_file(request=> $request);
        ok('delete_file test OK'); 
    };


1;