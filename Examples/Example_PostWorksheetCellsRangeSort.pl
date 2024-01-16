use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'Group.xlsx';
my $remoteName = 'Group.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 
my $range_sort_request_data_sorter = AsposeCellsCloud::Object::DataSorter->new();
 $range_sort_request_data_sorter->{case_sensitive} = 'true'  ;
my $range_sort_request_cell_area = AsposeCellsCloud::Object::Range->new();
 $range_sort_request_cell_area->{column_count} = 3  ;
 $range_sort_request_cell_area->{first_column} = 0  ;
 $range_sort_request_cell_area->{first_row} = 0  ;
 $range_sort_request_cell_area->{row_count} = 15  ;
my $range_sort_request = AsposeCellsCloud::Object::RangeSortRequest->new();
 $range_sort_request->{data_sorter} = $range_sort_request_data_sorter  ;
 $range_sort_request->{cell_area} = $range_sort_request_cell_area  ;

my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeSortRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'book1';
$request->{range_sort_request} =  $range_sort_request;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_cells_range_sort(request=> $request);