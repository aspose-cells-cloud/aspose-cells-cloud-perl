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
 

my $request = AsposeCellsCloud::Request::PutWorksheetListObjectRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet7';
$request->{start_row} =  1;
$request->{start_column} =  1;
$request->{end_row} =  6;
$request->{end_column} =  6;
$request->{folder} =  $remoteFolder;
$request->{has_headers} =  'true';
$request->{display_name} =  'true';
$request->{show_totals} =  'false';
$request->{storage_name} =  '';
$instance->put_worksheet_list_object(request=> $request);