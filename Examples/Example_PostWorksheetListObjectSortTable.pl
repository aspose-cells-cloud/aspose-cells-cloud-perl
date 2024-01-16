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
 
my $data_sorter = AsposeCellsCloud::Object::DataSorter->new();
 $data_sorter->{case_sensitive} = 'true'  ;

my $request = AsposeCellsCloud::Request::PostWorksheetListObjectSortTableRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet7';
$request->{list_object_index} =  0;
$request->{data_sorter} =  $data_sorter;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_list_object_sort_table(request=> $request);