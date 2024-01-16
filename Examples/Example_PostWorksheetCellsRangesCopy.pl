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
 
my $range_operate_source = AsposeCellsCloud::Object::Range->new();
 $range_operate_source->{column_count} = 1  ;
 $range_operate_source->{column_width} = 10.0  ;
 $range_operate_source->{first_row} = 1  ;
 $range_operate_source->{row_count} = 10  ;
my $range_operate_target = AsposeCellsCloud::Object::Range->new();
 $range_operate_target->{column_count} = 1  ;
 $range_operate_target->{column_width} = 10.0  ;
 $range_operate_target->{first_row} = 10  ;
 $range_operate_target->{row_count} = 10  ;
my $range_operate = AsposeCellsCloud::Object::RangeCopyRequest->new();
 $range_operate->{operate} = 'copydata'  ;
 $range_operate->{source} = $range_operate_source  ;
 $range_operate->{target} = $range_operate_target  ;

my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangesCopyRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{range_operate} =  $range_operate;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_cells_ranges_copy(request=> $request);