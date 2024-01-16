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
my $waterMarkPNG = 'WaterMark.png';
my $remoteName = 'Book1.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $waterMarkPNG => $waterMarkPNG  }  ,'path'=>$remoteFolder . '/WaterMark.png' );
 

my $request = AsposeCellsCloud::Request::PutWorksheetAddPictureRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet6';
$request->{upper_left_row} =  1;
$request->{upper_left_column} =  1;
$request->{lower_right_row} =  10;
$request->{lower_right_column} =  10;
$request->{picture_path} =  $remoteFolder . '/WaterMark.png';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_worksheet_add_picture(request=> $request);