use Test::More tests => 16; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Request::PutConvertWorkbookRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'csv';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xls';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'html';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'mhtml';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'ods';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pdf';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xml';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'txt';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsb';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xps';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'md';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };


    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'svg';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'docx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pptx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'json';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # ConversionJson->put_convert_workbook  test
    #
    subtest 'Testing ConversionJson->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'codegen-spec.json';
        my $remoteName = 'codegen-spec.json';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'sql';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };


1;