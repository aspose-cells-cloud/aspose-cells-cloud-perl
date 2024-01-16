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
 
my $picture = AsposeCellsCloud::Object::Picture->new();
 $picture->{left} = 10  ;
 $picture->{bottom} = 10  ;

my $request = AsposeCellsCloud::Request::PostWorksheetPictureRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet6';
$request->{picture_index} =  0;
$request->{picture} =  $picture;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_picture(request=> $request);