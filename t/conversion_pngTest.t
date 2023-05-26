use Test::More tests => 28; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Request::PutConvertWorkbookRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'csv';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xls';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'html';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'mhtml';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'ods';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pdf';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xml';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'txt';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'tif';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsb';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsm';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xltm';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xltx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xps';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'png';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'jpg';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'gif';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'emf';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'bmp';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'md';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'numbers';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'wmf';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'svg';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'docx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pptx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'json';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # ConversionPng->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'sql';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }


1;