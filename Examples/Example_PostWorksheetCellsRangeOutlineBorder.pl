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
 
my $range_operateborder_color = AsposeCellsCloud::Object::Color->new();
 $range_operateborder_color->{r} = 48  ;
 $range_operateborder_color->{g} = 48  ;
 $range_operateborder_color->{b} = 48  ;
my $range_operate_range = AsposeCellsCloud::Object::Range->new();
 $range_operate_range->{column_count} = 1  ;
 $range_operate_range->{column_width} = 10.0  ;
 $range_operate_range->{first_row} = 1  ;
 $range_operate_range->{row_count} = 10  ;
my $range_operate = AsposeCellsCloud::Object::RangeSetOutlineBorderRequest->new();
 $range_operate->{border_edge} = 'LeftBorder'  ;
 $range_operate->{border_style} = 'Dotted'  ;
 $range_operate->{border_color} = $range_operateborder_color  ;
 $range_operate->{range} = $range_operate_range  ;

my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeOutlineBorderRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{range_operate} =  $range_operate;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_cells_range_outline_border(request=> $request);