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
 
my $range_operate_style_font = AsposeCellsCloud::Object::Font->new();
 $range_operate_style_font->{size} = 16  ;
my $range_operate_style = AsposeCellsCloud::Object::Style->new();
 $range_operate_style->{font} = $range_operate_style_font  ;
my $range_operate_range = AsposeCellsCloud::Object::Range->new();
 $range_operate_range->{column_count} = 1  ;
 $range_operate_range->{column_width} = 10.0  ;
 $range_operate_range->{first_row} = 1  ;
 $range_operate_range->{row_count} = 10  ;
my $range_operate = AsposeCellsCloud::Object::RangeSetStyleRequest->new();
 $range_operate->{style} = $range_operate_style  ;
 $range_operate->{range} = $range_operate_range  ;

my $request = AsposeCellsCloud::Request::PostWorksheetCellsRangeStyleRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{range_operate} =  $range_operate;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_cells_range_style(request=> $request);