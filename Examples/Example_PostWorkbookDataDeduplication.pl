use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'BookCsvDuplicateData.csv';
my $remoteName = 'BookCsvDuplicateData.csv';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 
my @deduplication_region_ranges = [];
my $deduplication_region = AsposeCellsCloud::Object::DeduplicationRegion->new();
 $deduplication_region->{ranges} = [];   ;

my $request = AsposeCellsCloud::Request::PostWorkbookDataDeduplicationRequest->new();
$request->{name} =  $remoteName;
$request->{deduplication_region} =  $deduplication_region;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_workbook_data_deduplication(request=> $request);