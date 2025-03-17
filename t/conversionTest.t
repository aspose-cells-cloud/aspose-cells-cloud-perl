use Test::More tests => 71; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::PdfSaveOptions;
use AsposeCellsCloud::Request::PostWorkbookSaveAsRequest;
use AsposeCellsCloud::Request::GetWorkbookRequest;
use AsposeCellsCloud::Request::PutConvertWorkbookRequest;
use AsposeCellsCloud::Request::PutConvertWorkbookRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'csv';
        my $newfilename = 'outResult/PostExcelSaveAs.csv';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'html';
        my $newfilename = 'outResult/PostExcelSaveAs.html';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'mhtml';
        my $newfilename = 'outResult/PostExcelSaveAs.mhtml';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'ods';
        my $newfilename = 'outResult/PostExcelSaveAs.ods';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pdf';
        my $newfilename = 'outResult/PostExcelSaveAs.pdf';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xml';
        my $newfilename = 'outResult/PostExcelSaveAs.xml';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'txt';
        my $newfilename = 'outResult/PostExcelSaveAs.txt';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'tif';
        my $newfilename = 'outResult/PostExcelSaveAs.tif';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsb';
        my $newfilename = 'outResult/PostExcelSaveAs.xlsb';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xps';
        my $newfilename = 'outResult/PostExcelSaveAs.xps';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'png';
        my $newfilename = 'outResult/PostExcelSaveAs.png';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'md';
        my $newfilename = 'outResult/PostExcelSaveAs.md';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };



    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'svg';
        my $newfilename = 'outResult/PostExcelSaveAs.svg';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'docx';
        my $newfilename = 'outResult/PostExcelSaveAs.docx';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pptx';
        my $newfilename = 'outResult/PostExcelSaveAs.pptx';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'json';
        my $newfilename = 'outResult/PostExcelSaveAs.json';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->post_workbook_save_as  test
    #
    subtest 'Testing Conversion->post_workbook_save_as' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'sql';
        my $newfilename = 'outResult/PostExcelSaveAs.sql';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'csv';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'html';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'mhtml';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'ods';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pdf';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xml';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'txt';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'tif';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xps';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'png';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'md';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

 

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'svg';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'docx';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pptx';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'json';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->get_workbook  test
    #
    subtest 'Testing Conversion->get_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'sql';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'tif';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'png';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'wmf';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'csv';
        my $outPath = 'outResult/ConvertWorkbook.csv';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xls';
        my $outPath = 'outResult/ConvertWorkbook.xls';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'html';
        my $outPath = 'outResult/ConvertWorkbook.html';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'mhtml';
        my $outPath = 'outResult/ConvertWorkbook.mhtml';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'ods';
        my $outPath = 'outResult/ConvertWorkbook.ods';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pdf';
        my $outPath = 'outResult/ConvertWorkbook.pdf';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xml';
        my $outPath = 'outResult/ConvertWorkbook.xml';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'txt';
        my $outPath = 'outResult/ConvertWorkbook.txt';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'tif';
        my $outPath = 'outResult/ConvertWorkbook.tif';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsb';
        my $outPath = 'outResult/ConvertWorkbook.xlsb';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xltm';
        my $outPath = 'outResult/ConvertWorkbook.xltm';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xps';
        my $outPath = 'outResult/ConvertWorkbook.xps';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'png';
        my $outPath = 'outResult/ConvertWorkbook.png';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'md';
        my $outPath = 'outResult/ConvertWorkbook.md';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };



    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'svg';
        my $outPath = 'outResult/ConvertWorkbook.svg';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'docx';
        my $outPath = 'outResult/ConvertWorkbook.docx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pptx';
        my $outPath = 'outResult/ConvertWorkbook.pptx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'json';
        my $outPath = 'outResult/ConvertWorkbook.json';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };

    #
    # Conversion->put_convert_workbook  test
    #
    subtest 'Testing Conversion->put_convert_workbook' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'sql';
        my $outPath = 'outResult/ConvertWorkbook.sql';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    };


1;