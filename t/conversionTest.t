use Test::More tests => 112; #TODO update number of test cases
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
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'csv';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.csv';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xls';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.xls';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'html';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.html';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'mhtml';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.mhtml';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'ods';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.ods';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pdf';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.pdf';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xml';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.xml';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'txt';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.txt';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'tif';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.tif';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsb';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.xlsb';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsm';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.xlsm';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsx';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.xlsx';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xltm';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.xltm';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xltx';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.xltx';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xps';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.xps';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'png';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.png';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'jpg';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.jpg';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'gif';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.gif';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'emf';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.emf';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'bmp';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.bmp';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'md';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.md';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'numbers';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.numbers';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'wmf';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.wmf';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'svg';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.svg';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'docx';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.docx';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pptx';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.pptx';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'json';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.json';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->post_workbook_save_as  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'sql';
        my $newfilename = 'dotNetSDK/OutResult/PostExcelSaveAs.sql';

        my $save_options = AsposeCellsCloud::Object::PdfSaveOptions->new();
         $save_options->{save_format} = $format  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
        $request->{name} =  $remoteName;
        $request->{newfilename} =  $newfilename;
        $request->{save_options} =  $save_options;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->post_workbook_save_as(request=> $request);
        ok($result,'post_workbook_save_as test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xls';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsb';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsm';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsx';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xltm';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xltx';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'jpg';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'gif';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'emf';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'bmp';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'numbers';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'wmf';


        my $request = AsposeCellsCloud::Request::GetWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  $format;
        $request->{folder} =  $remoteFolder;
        my $result =  $api->get_workbook(request=> $request);
        ok($result,'get_workbook test OK');
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->get_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

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
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
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
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'csv';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.csv';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xls';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.xls';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'html';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.html';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'mhtml';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.mhtml';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'ods';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.ods';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pdf';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.pdf';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xml';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.xml';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'txt';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.txt';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'tif';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.tif';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsb';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.xlsb';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsm';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.xlsm';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xlsx';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.xlsx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xltm';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.xltm';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xltx';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.xltx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'xps';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.xps';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'png';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.png';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'jpg';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.jpg';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'gif';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.gif';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'emf';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.emf';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'bmp';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.bmp';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'md';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.md';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'numbers';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.numbers';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'wmf';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.wmf';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'svg';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.svg';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'docx';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.docx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'pptx';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.pptx';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'json';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.json';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }

    #
    # Conversion->put_convert_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $format = 'sql';
        my $outPath = 'dotNetSDK/OutResult/ConvertWorkbook.sql';

        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        $request->{out_path} =  $outPath;
        my $result =  $api->put_convert_workbook(request=> $request);
        ok($result,'put_convert_workbook test OK');
    }


1;