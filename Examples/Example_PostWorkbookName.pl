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
 
my $new_name = AsposeCellsCloud::Object::Name->new();
 $new_name->{text} = 'name_1804'  ;
 $new_name->{comment} = 'KeepSourceFormatting'  ;
 $new_name->{refers_to} = '=Sheet1!$I$4'  ;

my $request = AsposeCellsCloud::Request::PostWorkbookNameRequest->new();
$request->{name} =  $remoteName;
$request->{name_name} =  'Name_2';
$request->{new_name} =  $new_name;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_workbook_name(request=> $request);