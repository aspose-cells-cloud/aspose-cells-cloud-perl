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
my $remoteName = 'Book1.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 
my $text_water_marker_request = AsposeCellsCloud::Object::TextWaterMarkerRequest->new();
 $text_water_marker_request->{text} = 'Aspose Cells Cloud'  ;
 $text_water_marker_request->{font_size} = 12  ;

my $request = AsposeCellsCloud::Request::PutWorkbookWaterMarkerRequest->new();
$request->{name} =  $remoteName;
$request->{text_water_marker_request} =  $text_water_marker_request;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_workbook_water_marker(request=> $request);