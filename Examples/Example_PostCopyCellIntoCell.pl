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
 

my $request = AsposeCellsCloud::Request::PostCopyCellIntoCellRequest->new();
$request->{name} =  $remoteName;
$request->{dest_cell_name} =  'C1';
$request->{sheet_name} =  'Sheet1';
$request->{worksheet} =  'Sheet2';
$request->{cellname} =  'A1';
$request->{row} =  1;
$request->{column} =  1;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_copy_cell_into_cell(request=> $request);