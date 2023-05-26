use Test::More tests => 4; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Request::StorageExistsRequest;
use AsposeCellsCloud::Request::ObjectExistsRequest;
use AsposeCellsCloud::Request::GetDiscUsageRequest;
use AsposeCellsCloud::Request::GetFileVersionsRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # StorageController->storage_exists  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::StorageExistsRequest->new();
        $request->{storage_name} =  'Default';
        my $result =  $api->storage_exists(request=> $request);
        ok($result,'storage_exists test OK');
    }

    #
    # StorageController->object_exists  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::ObjectExistsRequest->new();
        $request->{path} =  'TestData/In/Book1.xlsx';
        $request->{storage_name} =  '';
        $request->{version_id} =  '';
        my $result =  $api->object_exists(request=> $request);
        ok($result,'object_exists test OK');
    }

    #
    # StorageController->get_disc_usage  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetDiscUsageRequest->new();
        $request->{storage_name} =  '';
        my $result =  $api->get_disc_usage(request=> $request);
        ok($result,'get_disc_usage test OK');
    }

    #
    # StorageController->get_file_versions  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetFileVersionsRequest->new();
        $request->{path} =  'TestData/In/Book1.xlsx';
        $request->{storage_name} =  '';
        my $result =  $api->get_file_versions(request=> $request);
        ok($result,'get_file_versions test OK');
    }


1;