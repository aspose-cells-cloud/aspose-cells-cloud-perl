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
 
my $ole = AsposeCellsCloud::Object::OleObject->new();
 $ole->{left} = 10  ;
 $ole->{right} = 10  ;
 $ole->{height} = 90  ;
 $ole->{width} = 78  ;

my $request = AsposeCellsCloud::Request::PostUpdateWorksheetOleObjectRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet6';
$request->{ole_object_index} =  0;
$request->{ole} =  $ole;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_update_worksheet_ole_object(request=> $request);