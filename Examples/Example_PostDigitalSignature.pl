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
my $roywangPFX = 'roywang.pfx';
my $remoteName = 'Book1.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $roywangPFX => $roywangPFX  }  ,'path'=>$remoteFolder . '/roywang.pfx' );
 

my $request = AsposeCellsCloud::Request::PostDigitalSignatureRequest->new();
$request->{name} =  $remoteName;
$request->{digitalsignaturefile} =  $remoteFolder . '/roywang.pfx';
$request->{password} =  '123456';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_digital_signature(request=> $request);