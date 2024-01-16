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
 

my $request = AsposeCellsCloud::Request::PostWorksheetUnmergeRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{start_row} =  1;
$request->{start_column} =  1;
$request->{total_rows} =  4;
$request->{total_columns} =  4;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_unmerge(request=> $request);