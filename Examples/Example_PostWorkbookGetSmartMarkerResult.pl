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
 

my $request = AsposeCellsCloud::Request::PostWorkbookGetSmartMarkerResultRequest->new();
$request->{name} =  $remoteName;
$request->{xml_file} =  $remoteFolder . '/ReportData.xml';
$request->{folder} =  $remoteFolder;
$request->{out_path} =  'OutResult/SmartMarkerResult.xlsx';
$request->{storage_name} =  '';
$request->{out_storage_name} =  '';
$instance->post_workbook_get_smart_marker_result(request=> $request);