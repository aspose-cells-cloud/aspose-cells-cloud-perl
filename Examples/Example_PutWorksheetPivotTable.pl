use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'TestCase.xlsx';
my $remoteName = 'TestCase.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 

my $request = AsposeCellsCloud::Request::PutWorksheetPivotTableRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet4';
$request->{folder} =  $remoteFolder;
$request->{source_data} =  '=Sheet1!C6:E13';
$request->{dest_cell_name} =  'C1';
$request->{table_name} =  'TestPivot';
$request->{use_same_source} =  'true';
$request->{storage_name} =  '';
$instance->put_worksheet_pivot_table(request=> $request);