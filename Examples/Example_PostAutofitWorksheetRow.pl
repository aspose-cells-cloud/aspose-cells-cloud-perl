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
 

my $request = AsposeCellsCloud::Request::PostAutofitWorksheetRowRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{row_index} =  1;
$request->{first_column} =  1;
$request->{last_column} =  8;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_autofit_worksheet_row(request=> $request);