use Test::More tests => 3; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::DataCleansing;
use AsposeCellsCloud::Object::DataFill;
use AsposeCellsCloud::Object::DataFillValue;
use AsposeCellsCloud::Object::DeduplicationRegion;
use AsposeCellsCloud::Request::PostWorkbookDataCleansingRequest;
use AsposeCellsCloud::Request::PostWorkbookDataDeduplicationRequest;
use AsposeCellsCloud::Request::PostWorkbookDataFillRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # DataProcessingController->post_workbook_data_cleansing  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'BookCsvDuplicateData.csv';
        my $remoteName = 'BookCsvDuplicateData.csv';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $data_cleansing_data_fill_data_fill_default_value = AsposeCellsCloud::Object::DataFillValue->new();
         $data_cleansing_data_fill_data_fill_default_value->{default_date} = '2024-01-01'  ;
         $data_cleansing_data_fill_data_fill_default_value->{default_number} = 0  ;
         $data_cleansing_data_fill_data_fill_default_value->{default_boolean} = 'false'  ;
        my $data_cleansing_data_fill = AsposeCellsCloud::Object::DataFill->new();
         $data_cleansing_data_fill->{data_fill_default_value} = $data_cleansing_data_fill_data_fill_default_value  ;
        my $data_cleansing = AsposeCellsCloud::Object::DataCleansing->new();
         $data_cleansing->{need_fill_data} = 'true'  ;
         $data_cleansing->{data_fill} = $data_cleansing_data_fill  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookDataCleansingRequest->new();
        $request->{name} =  $remoteName;
        $request->{data_cleansing} =  $data_cleansing;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_data_cleansing(request=> $request);
        ok($result,'post_workbook_data_cleansing test OK');
    }

    #
    # DataProcessingController->post_workbook_data_deduplication  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'BookCsvDuplicateData.csv';
        my $remoteName = 'BookCsvDuplicateData.csv';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $deduplication_region = AsposeCellsCloud::Object::DeduplicationRegion->new();


        my $request = AsposeCellsCloud::Request::PostWorkbookDataDeduplicationRequest->new();
        $request->{name} =  $remoteName;
        $request->{deduplication_region} =  $deduplication_region;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_data_deduplication(request=> $request);
        ok($result,'post_workbook_data_deduplication test OK');
    }

    #
    # DataProcessingController->post_workbook_data_fill  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'BookCsvDuplicateData.csv';
        my $remoteName = 'BookCsvDuplicateData.csv';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $data_fill_data_fill_default_value = AsposeCellsCloud::Object::DataFillValue->new();
         $data_fill_data_fill_default_value->{default_date} = '2024-01-01'  ;
         $data_fill_data_fill_default_value->{default_number} = 0  ;
         $data_fill_data_fill_default_value->{default_boolean} = 'false'  ;
        my $data_fill = AsposeCellsCloud::Object::DataFill->new();
         $data_fill->{data_fill_default_value} = $data_fill_data_fill_default_value  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookDataFillRequest->new();
        $request->{name} =  $remoteName;
        $request->{data_fill} =  $data_fill;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_data_fill(request=> $request);
        ok($result,'post_workbook_data_fill test OK');
    }


1;