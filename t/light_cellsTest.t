use Test::More tests => 216; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::CellsDocumentProperty;
use AsposeCellsCloud::Request::PostSplitRequest;
use AsposeCellsCloud::Request::PostAssembleRequest;
use AsposeCellsCloud::Request::PostExportRequest;
use AsposeCellsCloud::Request::PostCompressRequest;
use AsposeCellsCloud::Request::PostMergeRequest;
use AsposeCellsCloud::Request::PostUnlockRequest;
use AsposeCellsCloud::Request::PostProtectRequest;
use AsposeCellsCloud::Request::PostSearchRequest;
use AsposeCellsCloud::Request::PostReplaceRequest;
use AsposeCellsCloud::Request::PostReplaceRequest;
use AsposeCellsCloud::Request::PostRepairRequest;
use AsposeCellsCloud::Request::PostWatermarkRequest;
use AsposeCellsCloud::Request::PostClearObjectsRequest;
use AsposeCellsCloud::Request::PostReverseRequest;
use AsposeCellsCloud::Request::GetMetadataRequest;
use AsposeCellsCloud::Request::DeleteMetadataRequest;
use AsposeCellsCloud::Request::PostMetadataRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'csv';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xls';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'html';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'mhtml';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'ods';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'pdf';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xml';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'txt';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'tif';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xlsb';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xlsm';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xlsx';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xltm';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xltx';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xps';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'png';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'jpg';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'gif';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'emf';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'bmp';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'md';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'numbers';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'wmf';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'svg';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'docx';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'pptx';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'json';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_split  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'sql';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSplitRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_split(request=> $request);
        ok($result,'post_split test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'csv';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xls';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'html';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'mhtml';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'ods';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'pdf';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xml';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'txt';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'tif';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xlsb';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xlsm';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xlsx';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xltm';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xltx';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xps';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'png';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'jpg';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'gif';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'emf';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'bmp';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'md';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'numbers';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'wmf';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'svg';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'docx';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'pptx';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'json';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_assemble  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'sql';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
        $request->{file} =  $mapFiles;
        $request->{datasource} =  'ds';
        $request->{format} =  $format;
        my $result =  $api->post_assemble(request=> $request);
        ok($result,'post_assemble test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'csv';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xls';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'html';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'mhtml';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'ods';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'pdf';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xml';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'txt';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'tif';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xlsb';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xlsm';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xlsx';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xltm';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xltx';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xps';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'png';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'jpg';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'gif';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'emf';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'bmp';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'md';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'numbers';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'wmf';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'svg';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'docx';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'pptx';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'json';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'sql';
        my $objectType = 'workbook';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'csv';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xls';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'html';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'mhtml';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'ods';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'pdf';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xml';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'txt';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'tif';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xlsb';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xlsm';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xlsx';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xltm';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xltx';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xps';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'png';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'jpg';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'gif';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'emf';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'bmp';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'md';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'numbers';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'wmf';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'svg';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'docx';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'pptx';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'json';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'sql';
        my $objectType = 'worksheet';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'pdf';
        my $objectType = 'chart';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'tif';
        my $objectType = 'chart';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'png';
        my $objectType = 'chart';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'jpg';
        my $objectType = 'chart';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'gif';
        my $objectType = 'chart';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'emf';
        my $objectType = 'chart';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'bmp';
        my $objectType = 'chart';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'png';
        my $objectType = 'picture';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'jpg';
        my $objectType = 'picture';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'gif';
        my $objectType = 'picture';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'emf';
        my $objectType = 'picture';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'bmp';
        my $objectType = 'picture';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'csv';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xls';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'html';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'mhtml';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'ods';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'pdf';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xml';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'txt';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'tif';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xlsb';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xlsm';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xlsx';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xltm';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xltx';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xps';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'png';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'jpg';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'gif';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'emf';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'bmp';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'md';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'numbers';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'wmf';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'svg';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'docx';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'pptx';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'json';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'sql';
        my $objectType = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'png';
        my $objectType = 'oleobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'jpg';
        my $objectType = 'oleobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'gif';
        my $objectType = 'oleobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'emf';
        my $objectType = 'oleobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_export  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'bmp';
        my $objectType = 'oleobject';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostExportRequest->new();
        $request->{file} =  $mapFiles;
        $request->{object_type} =  $objectType;
        $request->{format} =  $format;
        my $result =  $api->post_export(request=> $request);
        ok($result,'post_export test OK');
    }

    #
    # LightCells->post_compress  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $compressLevel = 50;

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostCompressRequest->new();
        $request->{file} =  $mapFiles;
        $request->{compress_level} =  $compressLevel;
        my $result =  $api->post_compress(request=> $request);
        ok($result,'post_compress test OK');
    }

    #
    # LightCells->post_compress  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $compressLevel = 90;

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostCompressRequest->new();
        $request->{file} =  $mapFiles;
        $request->{compress_level} =  $compressLevel;
        my $result =  $api->post_compress(request=> $request);
        ok($result,'post_compress test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'csv';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xls';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'html';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'mhtml';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'ods';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'pdf';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xml';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'txt';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'tif';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xlsb';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xlsm';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xlsx';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xltm';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xltx';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'xps';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'png';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'jpg';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'gif';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'emf';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'bmp';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'md';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'numbers';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'wmf';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'svg';
        my $mergeToOneSheet = 'true';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'docx';
        my $mergeToOneSheet = 'false';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'pptx';
        my $mergeToOneSheet = 'false';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'json';
        my $mergeToOneSheet = 'false';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_merge  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $format = 'sql';
        my $mergeToOneSheet = 'false';

        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{merge_to_one_sheet} =  $mergeToOneSheet;
        my $result =  $api->post_merge(request=> $request);
        ok($result,'post_merge test OK');
    }

    #
    # LightCells->post_unlock  test
    #
    { 
      
        my $needUnlockXlsx = 'needUnlock.xlsx';

     
        my $mapFiles = {};           

         $mapFiles->{$needUnlockXlsx}= "TestData/".$needUnlockXlsx ;

        my $request = AsposeCellsCloud::Request::PostUnlockRequest->new();
        $request->{file} =  $mapFiles;
        $request->{password} =  '123456';
        my $result =  $api->post_unlock(request=> $request);
        ok($result,'post_unlock test OK');
    }

    #
    # LightCells->post_protect  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostProtectRequest->new();
        $request->{file} =  $mapFiles;
        $request->{password} =  '123456';
        my $result =  $api->post_protect(request=> $request);
        ok($result,'post_protect test OK');
    }

    #
    # LightCells->post_search  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostSearchRequest->new();
        $request->{file} =  $mapFiles;
        $request->{text} =  '12';
        my $result =  $api->post_search(request=> $request);
        ok($result,'post_search test OK');
    }

    #
    # LightCells->post_replace  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostReplaceRequest->new();
        $request->{file} =  $mapFiles;
        $request->{text} =  '12';
        $request->{newtext} =  'newtext';
        my $result =  $api->post_replace(request=> $request);
        ok($result,'post_replace test OK');
    }

    #
    # LightCells->post_replace  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostReplaceRequest->new();
        $request->{file} =  $mapFiles;
        $request->{text} =  '12';
        $request->{newtext} =  'newtext';
        $request->{sheetname} =  'Sheet1';
        my $result =  $api->post_replace(request=> $request);
        ok($result,'post_replace test OK');
    }

    #
    # LightCells->post_watermark  test
    #
    { 
      
        my $assemblyTestXlsx = 'assemblytest.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $mapFiles = {};           

         $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostWatermarkRequest->new();
        $request->{file} =  $mapFiles;
        $request->{text} =  'aspose.cells cloud sdk';
        $request->{color} =  '#773322';
        my $result =  $api->post_watermark(request=> $request);
        ok($result,'post_watermark test OK');
    }

    #
    # LightCells->post_clear_objects  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $objecttype = 'chart';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostClearObjectsRequest->new();
        $request->{file} =  $mapFiles;
        $request->{objecttype} =  $objecttype;
        my $result =  $api->post_clear_objects(request=> $request);
        ok($result,'post_clear_objects test OK');
    }

    #
    # LightCells->post_clear_objects  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $objecttype = 'comment';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostClearObjectsRequest->new();
        $request->{file} =  $mapFiles;
        $request->{objecttype} =  $objecttype;
        my $result =  $api->post_clear_objects(request=> $request);
        ok($result,'post_clear_objects test OK');
    }

    #
    # LightCells->post_clear_objects  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $objecttype = 'picture';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostClearObjectsRequest->new();
        $request->{file} =  $mapFiles;
        $request->{objecttype} =  $objecttype;
        my $result =  $api->post_clear_objects(request=> $request);
        ok($result,'post_clear_objects test OK');
    }

    #
    # LightCells->post_clear_objects  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $objecttype = 'shape';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostClearObjectsRequest->new();
        $request->{file} =  $mapFiles;
        $request->{objecttype} =  $objecttype;
        my $result =  $api->post_clear_objects(request=> $request);
        ok($result,'post_clear_objects test OK');
    }

    #
    # LightCells->post_clear_objects  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $objecttype = 'listobject';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostClearObjectsRequest->new();
        $request->{file} =  $mapFiles;
        $request->{objecttype} =  $objecttype;
        my $result =  $api->post_clear_objects(request=> $request);
        ok($result,'post_clear_objects test OK');
    }

    #
    # LightCells->post_clear_objects  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $objecttype = 'hyperlink';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostClearObjectsRequest->new();
        $request->{file} =  $mapFiles;
        $request->{objecttype} =  $objecttype;
        my $result =  $api->post_clear_objects(request=> $request);
        ok($result,'post_clear_objects test OK');
    }

    #
    # LightCells->post_clear_objects  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $objecttype = 'oleobject';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostClearObjectsRequest->new();
        $request->{file} =  $mapFiles;
        $request->{objecttype} =  $objecttype;
        my $result =  $api->post_clear_objects(request=> $request);
        ok($result,'post_clear_objects test OK');
    }

    #
    # LightCells->post_clear_objects  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $objecttype = 'pivottable';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostClearObjectsRequest->new();
        $request->{file} =  $mapFiles;
        $request->{objecttype} =  $objecttype;
        my $result =  $api->post_clear_objects(request=> $request);
        ok($result,'post_clear_objects test OK');
    }

    #
    # LightCells->post_clear_objects  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $objecttype = 'validation';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostClearObjectsRequest->new();
        $request->{file} =  $mapFiles;
        $request->{objecttype} =  $objecttype;
        my $result =  $api->post_clear_objects(request=> $request);
        ok($result,'post_clear_objects test OK');
    }

    #
    # LightCells->post_clear_objects  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';
        my $dataSourceXlsx = 'datasource.xlsx';

     
        my $objecttype = 'background';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;
         $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

        my $request = AsposeCellsCloud::Request::PostClearObjectsRequest->new();
        $request->{file} =  $mapFiles;
        $request->{objecttype} =  $objecttype;
        my $result =  $api->post_clear_objects(request=> $request);
        ok($result,'post_clear_objects test OK');
    }
#
    # LightCells->post_repair  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'xlsx';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostRepairRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_repair(request=> $request);
        ok($result,'post_repair test OK');
    }

    #
    # LightCells->post_repair  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'pdf';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostRepairRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_repair(request=> $request);
        ok($result,'post_repair test OK');
    }

    #
    # LightCells->post_repair  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'csv';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostRepairRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_repair(request=> $request);
        ok($result,'post_repair test OK');
    }

    #
    # LightCells->post_repair  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $format = 'png';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostRepairRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->post_repair(request=> $request);
        ok($result,'post_repair test OK');
    }


    #
    # LightCells->post_reverse  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $rotateType = 'rows';
        my $format = 'pdf';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostReverseRequest->new();
        $request->{file} =  $mapFiles;
        $request->{rotate_type} =  $rotateType;
        $request->{format} =  $format;
        my $result =  $api->post_reverse(request=> $request);
        ok($result,'post_reverse test OK');
    }

    #
    # LightCells->post_reverse  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $rotateType = 'cols';
        my $format = 'pdf';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostReverseRequest->new();
        $request->{file} =  $mapFiles;
        $request->{rotate_type} =  $rotateType;
        $request->{format} =  $format;
        my $result =  $api->post_reverse(request=> $request);
        ok($result,'post_reverse test OK');
    }

    #
    # LightCells->post_reverse  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $rotateType = 'both';
        my $format = 'pdf';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostReverseRequest->new();
        $request->{file} =  $mapFiles;
        $request->{rotate_type} =  $rotateType;
        $request->{format} =  $format;
        my $result =  $api->post_reverse(request=> $request);
        ok($result,'post_reverse test OK');
    }

    #
    # LightCells->post_reverse  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $rotateType = 'rows';
        my $format = 'csv';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostReverseRequest->new();
        $request->{file} =  $mapFiles;
        $request->{rotate_type} =  $rotateType;
        $request->{format} =  $format;
        my $result =  $api->post_reverse(request=> $request);
        ok($result,'post_reverse test OK');
    }

    #
    # LightCells->post_reverse  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $rotateType = 'cols';
        my $format = 'png';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostReverseRequest->new();
        $request->{file} =  $mapFiles;
        $request->{rotate_type} =  $rotateType;
        $request->{format} =  $format;
        my $result =  $api->post_reverse(request=> $request);
        ok($result,'post_reverse test OK');
    }

    #
    # LightCells->post_reverse  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $rotateType = 'both';
        my $format = 'xlsx';

        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostReverseRequest->new();
        $request->{file} =  $mapFiles;
        $request->{rotate_type} =  $rotateType;
        $request->{format} =  $format;
        my $result =  $api->post_reverse(request=> $request);
        ok($result,'post_reverse test OK');
    }

    #
    # LightCells->get_metadata  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::GetMetadataRequest->new();
        $request->{file} =  $mapFiles;
        $request->{type} =  'all';
        my $result =  $api->get_metadata(request=> $request);
        ok($result,'get_metadata test OK');
    }

    #
    # LightCells->delete_metadata  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $mapFiles = {};           

         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::DeleteMetadataRequest->new();
        $request->{file} =  $mapFiles;
        $request->{type} =  'all';
        my $result =  $api->delete_metadata(request=> $request);
        ok($result,'delete_metadata test OK');
    }

    #
    # LightCells->post_metadata  test
    #
    { 
      
        my $book1Xlsx = 'Book1.xlsx';

     
        my $mapFiles = {};           

        my $cells_documentscells_document0 = AsposeCellsCloud::Object::CellsDocumentProperty->new();
         $cells_documentscells_document0->{name} = 'Author'  ;
         $cells_documentscells_document0->{value} = 'roy.wang'  ;
        my @cells_documents = [];push (@cells_documents ,$cells_documentscells_document0 );
         $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

        my $request = AsposeCellsCloud::Request::PostMetadataRequest->new();
        $request->{file} =  $mapFiles;
        $request->{cells_documents} =  []; push ( @{$request->{cells_documents}}, $cells_documentscells_document0  );;
        my $result =  $api->post_metadata(request=> $request);
        ok($result,'post_metadata test OK');
    }


1;