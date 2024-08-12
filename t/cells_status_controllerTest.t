use Test::More tests => 2; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Request::GetCellsCloudServicesHealthCheckRequest;
use AsposeCellsCloud::Request::GetCellsCloudServiceStatusRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # CellsStatusController->get_cells_cloud_services_health_check  test
    #
    subtest 'Testing CellsStatusController->get_cells_cloud_services_health_check' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetCellsCloudServicesHealthCheckRequest->new();
        my $result =  $api->get_cells_cloud_services_health_check(request=> $request);
        ok($result,'get_cells_cloud_services_health_check test OK');
    };

    #
    # CellsStatusController->get_cells_cloud_service_status  test
    #
    subtest 'Testing CellsStatusController->get_cells_cloud_service_status' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetCellsCloudServiceStatusRequest->new();
        my $result =  $api->get_cells_cloud_service_status(request=> $request);
        ok($result,'get_cells_cloud_service_status test OK');
    };


1;