use Test::More tests => 14; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::Chart;
use AsposeCellsCloud::Object::Legend;
use AsposeCellsCloud::Object::Title;
use AsposeCellsCloud::Request::GetWorksheetChartsRequest;
use AsposeCellsCloud::Request::GetWorksheetChartRequest;
use AsposeCellsCloud::Request::PutWorksheetChartRequest;
use AsposeCellsCloud::Request::DeleteWorksheetChartRequest;
use AsposeCellsCloud::Request::PostWorksheetChartRequest;
use AsposeCellsCloud::Request::GetWorksheetChartLegendRequest;
use AsposeCellsCloud::Request::PostWorksheetChartLegendRequest;
use AsposeCellsCloud::Request::PutWorksheetChartLegendRequest;
use AsposeCellsCloud::Request::DeleteWorksheetChartLegendRequest;
use AsposeCellsCloud::Request::DeleteWorksheetChartsRequest;
use AsposeCellsCloud::Request::GetWorksheetChartTitleRequest;
use AsposeCellsCloud::Request::PostWorksheetChartTitleRequest;
use AsposeCellsCloud::Request::PutWorksheetChartTitleRequest;
use AsposeCellsCloud::Request::DeleteWorksheetChartTitleRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # ChartsController->get_worksheet_charts  test
    #
    subtest 'Testing ChartsController->get_worksheet_charts' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetChartsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_charts(request=> $request);
        ok($result,'get_worksheet_charts test OK');
    };

    #
    # ChartsController->get_worksheet_chart  test
    #
    subtest 'Testing ChartsController->get_worksheet_chart' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetChartRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_number} =  0;
        $request->{format} =  'png';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_chart(request=> $request);
        ok($result,'get_worksheet_chart test OK');
    };

    #
    # ChartsController->put_worksheet_chart  test
    #
    subtest 'Testing ChartsController->put_worksheet_chart' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetChartRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_type} =  'Pie';
        $request->{upper_left_row} =  5;
        $request->{upper_left_column} =  5;
        $request->{lower_right_row} =  10;
        $request->{lower_right_column} =  10;
        $request->{area} =  'C7:D11';
        $request->{is_vertical} =  'true';
        $request->{title} =  'Aspose Chart';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_chart(request=> $request);
        ok($result,'put_worksheet_chart test OK');
    };

    #
    # ChartsController->delete_worksheet_chart  test
    #
    subtest 'Testing ChartsController->delete_worksheet_chart' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetChartRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_chart(request=> $request);
        ok($result,'delete_worksheet_chart test OK');
    };

    #
    # ChartsController->post_worksheet_chart  test
    #
    subtest 'Testing ChartsController->post_worksheet_chart' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $chart = AsposeCellsCloud::Object::Chart->new();
         $chart->{show_legend} = 'true'  ;
         $chart->{show_data_table} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetChartRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{chart} =  $chart;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_chart(request=> $request);
        ok($result,'post_worksheet_chart test OK');
    };

    #
    # ChartsController->get_worksheet_chart_legend  test
    #
    subtest 'Testing ChartsController->get_worksheet_chart_legend' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetChartLegendRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_chart_legend(request=> $request);
        ok($result,'get_worksheet_chart_legend test OK');
    };

    #
    # ChartsController->post_worksheet_chart_legend  test
    #
    subtest 'Testing ChartsController->post_worksheet_chart_legend' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $legend = AsposeCellsCloud::Object::Legend->new();
         $legend->{position} = 'Top'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetChartLegendRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{legend} =  $legend;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_chart_legend(request=> $request);
        ok($result,'post_worksheet_chart_legend test OK');
    };

    #
    # ChartsController->put_worksheet_chart_legend  test
    #
    subtest 'Testing ChartsController->put_worksheet_chart_legend' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetChartLegendRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_chart_legend(request=> $request);
        ok($result,'put_worksheet_chart_legend test OK');
    };

    #
    # ChartsController->delete_worksheet_chart_legend  test
    #
    subtest 'Testing ChartsController->delete_worksheet_chart_legend' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetChartLegendRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_chart_legend(request=> $request);
        ok($result,'delete_worksheet_chart_legend test OK');
    };

    #
    # ChartsController->delete_worksheet_charts  test
    #
    subtest 'Testing ChartsController->delete_worksheet_charts' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetChartsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_charts(request=> $request);
        ok($result,'delete_worksheet_charts test OK');
    };

    #
    # ChartsController->get_worksheet_chart_title  test
    #
    subtest 'Testing ChartsController->get_worksheet_chart_title' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetChartTitleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_chart_title(request=> $request);
        ok($result,'get_worksheet_chart_title test OK');
    };

    #
    # ChartsController->post_worksheet_chart_title  test
    #
    subtest 'Testing ChartsController->post_worksheet_chart_title' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $title = AsposeCellsCloud::Object::Title->new();
         $title->{is_visible} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetChartTitleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{title} =  $title;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_chart_title(request=> $request);
        ok($result,'post_worksheet_chart_title test OK');
    };

    #
    # ChartsController->put_worksheet_chart_title  test
    #
    subtest 'Testing ChartsController->put_worksheet_chart_title' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $title = AsposeCellsCloud::Object::Title->new();
         $title->{is_visible} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PutWorksheetChartTitleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{title} =  $title;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_chart_title(request=> $request);
        ok($result,'put_worksheet_chart_title test OK');
    };

    #
    # ChartsController->delete_worksheet_chart_title  test
    #
    subtest 'Testing ChartsController->delete_worksheet_chart_title' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetChartTitleRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{chart_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_chart_title(request=> $request);
        ok($result,'delete_worksheet_chart_title test OK');
    };


1;