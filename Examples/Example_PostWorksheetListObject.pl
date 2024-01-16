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
 
my $list_object = AsposeCellsCloud::Object::ListObject->new();
 $list_object->{show_header_row} = 'true'  ;

my $request = AsposeCellsCloud::Request::PostWorksheetListObjectRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet7';
$request->{list_object_index} =  0;
$request->{list_object} =  $list_object;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_list_object(request=> $request);