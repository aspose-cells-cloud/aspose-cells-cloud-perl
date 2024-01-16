use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'Book1.xlsx';
my $reportDataXML = 'ReportData.xml';
my $remoteName = 'Book1.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $reportDataXML => $reportDataXML  }  ,'path'=>$remoteFolder . '/ReportData.xml' );
 

my $request = AsposeCellsCloud::Request::PutWorkbookCreateRequest->new();
$request->{name} =  'PutWorkbookCreate.xlsx';
$request->{template_file} =  $remoteFolder . '/' . $remoteName;
$request->{data_file} =  $remoteFolder . '/ReportData.xml';
$request->{is_write_over} =  'true';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$request->{check_excel_restriction} =  'true';
$instance->put_workbook_create(request=> $request);