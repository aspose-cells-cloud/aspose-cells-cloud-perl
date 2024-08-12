use Test::More tests => 6; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::SparklineGroup;
use AsposeCellsCloud::Request::GetWorksheetSparklineGroupsRequest;
use AsposeCellsCloud::Request::GetWorksheetSparklineGroupRequest;
use AsposeCellsCloud::Request::DeleteWorksheetSparklineGroupsRequest;
use AsposeCellsCloud::Request::DeleteWorksheetSparklineGroupRequest;
use AsposeCellsCloud::Request::PutWorksheetSparklineGroupRequest;
use AsposeCellsCloud::Request::PostWorksheetSparklineGroupRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # SparklineGroupsController->get_worksheet_sparkline_groups  test
    #
    subtest 'Testing SparklineGroupsController->get_worksheet_sparkline_groups' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetSparklineGroupsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_sparkline_groups(request=> $request);
        ok($result,'get_worksheet_sparkline_groups test OK');
    };

    #
    # SparklineGroupsController->get_worksheet_sparkline_group  test
    #
    subtest 'Testing SparklineGroupsController->get_worksheet_sparkline_group' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetSparklineGroupRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{sparkline_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_sparkline_group(request=> $request);
        ok($result,'get_worksheet_sparkline_group test OK');
    };

    #
    # SparklineGroupsController->delete_worksheet_sparkline_groups  test
    #
    subtest 'Testing SparklineGroupsController->delete_worksheet_sparkline_groups' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetSparklineGroupsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_sparkline_groups(request=> $request);
        ok($result,'delete_worksheet_sparkline_groups test OK');
    };

    #
    # SparklineGroupsController->delete_worksheet_sparkline_group  test
    #
    subtest 'Testing SparklineGroupsController->delete_worksheet_sparkline_group' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetSparklineGroupRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{sparkline_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_sparkline_group(request=> $request);
        ok($result,'delete_worksheet_sparkline_group test OK');
    };

    #
    # SparklineGroupsController->put_worksheet_sparkline_group  test
    #
    subtest 'Testing SparklineGroupsController->put_worksheet_sparkline_group' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetSparklineGroupRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{type} =  'Line';
        $request->{data_range} =  'C6:E13';
        $request->{is_vertical} =  'false';
        $request->{location_range} =  'G6:G13';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_sparkline_group(request=> $request);
        ok($result,'put_worksheet_sparkline_group test OK');
    };

    #
    # SparklineGroupsController->post_worksheet_sparkline_group  test
    #
    subtest 'Testing SparklineGroupsController->post_worksheet_sparkline_group' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'TestCase.xlsx';
        my $remoteName = 'TestCase.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $sparkline_group = AsposeCellsCloud::Object::SparklineGroup->new();
         $sparkline_group->{display_hidden} = 'true'  ;
         $sparkline_group->{plot_right_to_left} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetSparklineGroupRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{sparkline_group_index} =  0;
        $request->{sparkline_group} =  $sparkline_group;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_sparkline_group(request=> $request);
        ok($result,'post_worksheet_sparkline_group test OK');
    };


1;