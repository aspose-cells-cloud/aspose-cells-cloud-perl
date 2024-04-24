use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'Template.xlsx';
my $dataXML = 'data.xml';
my $remoteName = 'Template.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $dataXML => $dataXML  }  ,'path'=>$remoteFolder . '/data.xml' );
 
my $import_xml_request_xml_file_source = AsposeCellsCloud::Object::DataSource->new();
 $import_xml_request_xml_file_source->{data_source_type} = 'CloudFileSystem'  ;
 $import_xml_request_xml_file_source->{data_path} = $remoteFolder . '/data.xml'  ;
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
$instance->post_workbook_import_xml(request=> $request);