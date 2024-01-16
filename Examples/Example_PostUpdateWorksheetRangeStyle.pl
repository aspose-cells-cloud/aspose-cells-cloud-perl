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
 
my $style_font = AsposeCellsCloud::Object::Font->new();
 $style_font->{size} = 16  ;
my $style = AsposeCellsCloud::Object::Style->new();
 $style->{font} = $style_font  ;

my $request = AsposeCellsCloud::Request::PostUpdateWorksheetRangeStyleRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{range} =  'A1:C10';
$request->{style} =  $style;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_update_worksheet_range_style(request=> $request);