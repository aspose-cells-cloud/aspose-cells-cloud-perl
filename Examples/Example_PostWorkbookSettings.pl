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
 
my $settings = AsposeCellsCloud::Object::WorkbookSettings->new();
 $settings->{auto_compress_pictures} = 'true'  ;
 $settings->{hide_pivot_field_list} = 'true'  ;

my $request = AsposeCellsCloud::Request::PostWorkbookSettingsRequest->new();
$request->{name} =  $remoteName;
$request->{settings} =  $settings;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_workbook_settings(request=> $request);