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
 

my $request = AsposeCellsCloud::Request::PostGroupWorksheetRowsRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{first_index} =  1;
$request->{last_index} =  9;
$request->{hide} =  'true';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_group_worksheet_rows(request=> $request);