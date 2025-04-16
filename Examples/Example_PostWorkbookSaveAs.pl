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
 
my $format = 'csv';
my $newfilename = 'outResult/PostExcelSaveAs.csv';

my $save_options = AsposeCellsCloud::Object::SaveOptions->new();
 $save_options->{save_format} = $format  ;

my $request = AsposeCellsCloud::Request::PostWorkbookSaveAsRequest->new();
$request->{name} =  $remoteName;
$request->{newfilename} =  $newfilename;
$request->{save_options} =  $save_options;
$request->{folder} =  $remoteFolder;
$instance->post_workbook_save_as(request=> $request);