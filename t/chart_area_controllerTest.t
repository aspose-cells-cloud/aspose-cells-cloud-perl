use Test::More tests => 3; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Request::GetChartAreaRequest;
use AsposeCellsCloud::Request::GetChartAreaFillFormatRequest;
use AsposeCellsCloud::Request::GetChartAreaBorderRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # ChartAreaController->get_chart_area  test
    #
    subtest 'Testing ChartAreaController->get_chart_area' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetChartAreaRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_chart_area(request=> $request);
        ok($result,'get_chart_area test OK');
    };

    #
    # ChartAreaController->get_chart_area_fill_format  test
    #
    subtest 'Testing ChartAreaController->get_chart_area_fill_format' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetChartAreaFillFormatRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_chart_area_fill_format(request=> $request);
        ok($result,'get_chart_area_fill_format test OK');
    };

    #
    # ChartAreaController->get_chart_area_border  test
    #
    subtest 'Testing ChartAreaController->get_chart_area_border' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetChartAreaBorderRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_chart_area_border(request=> $request);
        ok($result,'get_chart_area_border test OK');
    };


1;