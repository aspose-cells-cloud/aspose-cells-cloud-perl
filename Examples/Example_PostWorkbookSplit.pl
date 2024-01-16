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
 

my $request = AsposeCellsCloud::Request::PostWorkbookSplitRequest->new();
$request->{name} =  $remoteName;
$request->{format} =  'png';
$request->{out_folder} =  'OutResult';
$request->{from} =  1;
$request->{to} =  5;
$request->{horizontal_resolution} =  96;
$request->{vertical_resolution} =  96;
$request->{split_name_rule} =  'sheetname';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$request->{out_storage_name} =  '';
$instance->post_workbook_split(request=> $request);