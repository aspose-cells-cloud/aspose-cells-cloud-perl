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
 

my $request = AsposeCellsCloud::Request::GetWorksheetPivotTableFiltersRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet4';
$request->{pivot_table_index} =  0;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->get_worksheet_pivot_table_filters(request=> $request);