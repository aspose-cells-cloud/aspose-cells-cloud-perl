use Test::More tests => 2; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::ImportXMLRequest;
use AsposeCellsCloud::Object::FileSource;
use AsposeCellsCloud::Object::ImportPosition;
use AsposeCellsCloud::Request::PostWorkbookExportXMLRequest;
use AsposeCellsCloud::Request::PostWorkbookImportXMLRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # XmlController->post_workbook_export_xml  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Template.xlsx';
        my $remoteName = 'Template.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorkbookExportXMLRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_export_xml(request=> $request);
        ok($result,'post_workbook_export_xml test OK');
    }

    #
    # XmlController->post_workbook_import_xml  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Template.xlsx';
        my $dataXML = 'data.xml';
        my $remoteName = 'Template.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $dataXML ,'folder' =>$remoteFolder . '/data.xml', 'storage'=>'') ; 
     
        my $import_xml_request_xml_file_source = AsposeCellsCloud::Object::FileSource->new();
         $import_xml_request_xml_file_source->{file_source_type} = 'CloudFileSystem'  ;
         $import_xml_request_xml_file_source->{file_path} = $remoteFolder . '/data.xml'  ;
        my $import_xml_request_import_position = AsposeCellsCloud::Object::ImportPosition->new();
         $import_xml_request_import_position->{sheet_name} = 'Sheet1'  ;
         $import_xml_request_import_position->{row_index} = 3  ;
         $import_xml_request_import_position->{column_index} = 4  ;
        my $import_xml_request = AsposeCellsCloud::Object::ImportXMLRequest->new();
         $import_xml_request->{xml_file_source} = $import_xml_request_xml_file_source  ;
         $import_xml_request->{import_position} = $import_xml_request_import_position  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookImportXMLRequest->new();
        $request->{name} =  $remoteName;
        $request->{import_xml_request} =  $import_xml_request;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_import_xml(request=> $request);
        ok($result,'post_workbook_import_xml test OK');
    }


1;