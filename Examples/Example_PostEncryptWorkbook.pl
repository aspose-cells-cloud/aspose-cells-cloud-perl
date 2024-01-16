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
 
my $encryption = AsposeCellsCloud::Object::WorkbookEncryptionRequest->new();
 $encryption->{password} = '123456'  ;
 $encryption->{encryption_type} = 'XOR'  ;
 $encryption->{key_length} = 128  ;

my $request = AsposeCellsCloud::Request::PostEncryptWorkbookRequest->new();
$request->{name} =  $remoteName;
$request->{encryption} =  $encryption;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_encrypt_workbook(request=> $request);