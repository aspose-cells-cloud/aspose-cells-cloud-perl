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
 
my $protect_workbook_request = AsposeCellsCloud::Object::ProtectWorkbookRequest->new();
 $protect_workbook_request->{encrypt_with_password} = '123456'  ;
 $protect_workbook_request->{protect_workbook_structure} = 'ALL'  ;

my $request = AsposeCellsCloud::Request::PostProtectWorkbookRequest->new();
$request->{name} =  $remoteName;
$request->{protect_workbook_request} =  $protect_workbook_request;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_protect_workbook(request=> $request);