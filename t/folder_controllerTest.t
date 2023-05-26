use Test::More tests => 5; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Request::GetFilesListRequest;
use AsposeCellsCloud::Request::CreateFolderRequest;
use AsposeCellsCloud::Request::CopyFolderRequest;
use AsposeCellsCloud::Request::MoveFolderRequest;
use AsposeCellsCloud::Request::DeleteFolderRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # FolderController->get_files_list  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetFilesListRequest->new();
        $request->{path} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_files_list(request=> $request);
        ok($result,'get_files_list test OK');
    }

    #
    # FolderController->create_folder  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::CreateFolderRequest->new();
        $request->{path} =  'OutResul/NewFolder';
        $request->{storage_name} =  '';
        my $result =  $api->create_folder(request=> $request);
        ok('create_folder test OK'); 
    }

    #
    # FolderController->copy_folder  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::CopyFolderRequest->new();
        $request->{src_path} =  $remoteFolder;
        $request->{dest_path} =  'OutResult/Create';
        $request->{src_storage_name} =  '';
        $request->{dest_storage_name} =  '';
        my $result =  $api->copy_folder(request=> $request);
        ok('copy_folder test OK'); 
    }

    #
    # FolderController->move_folder  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::MoveFolderRequest->new();
        $request->{src_path} =  'OutResult/Create';
        $request->{dest_path} =  'OutResult/Move';
        $request->{src_storage_name} =  '';
        $request->{dest_storage_name} =  '';
        my $result =  $api->move_folder(request=> $request);
        ok('move_folder test OK'); 
    }

    #
    # FolderController->delete_folder  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteFolderRequest->new();
        $request->{path} =  'OutResult/Create';
        $request->{storage_name} =  '';
        $request->{recursive} =  'true';
        my $result =  $api->delete_folder(request=> $request);
        ok('delete_folder test OK'); 
    }


1;