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
 
my $password = AsposeCellsCloud::Object::PasswordRequest->new();
 $password->{password} = '123456'  ;

my $request = AsposeCellsCloud::Request::PutDocumentProtectFromChangesRequest->new();
$request->{name} =  $remoteName;
$request->{password} =  $password;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_document_protect_from_changes(request=> $request);