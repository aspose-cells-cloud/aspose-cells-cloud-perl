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
 
my $protect_parameter = AsposeCellsCloud::Object::ProtectSheetParameter->new();
 $protect_parameter->{protection_type} = 'ALL'  ;
 $protect_parameter->{password} = '123'  ;

my $request = AsposeCellsCloud::Request::DeleteUnprotectWorksheetRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{protect_parameter} =  $protect_parameter;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->delete_unprotect_worksheet(request=> $request);