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
 
my $shape_dto = AsposeCellsCloud::Object::Shape->new();


my $request = AsposeCellsCloud::Request::PutWorksheetShapeRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{shape_dto} =  $shape_dto;
$request->{drawing_type} =  'arc';
$request->{upper_left_row} =  1;
$request->{upper_left_column} =  1;
$request->{top} =  10;
$request->{left} =  10;
$request->{width} =  100;
$request->{height} =  100;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_worksheet_shape(request=> $request);