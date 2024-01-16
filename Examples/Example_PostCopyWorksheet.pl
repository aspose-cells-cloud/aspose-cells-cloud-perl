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
 
my $options = AsposeCellsCloud::Object::CopyOptions->new();
 $options->{column_character_width} = 'true'  ;

my $request = AsposeCellsCloud::Request::PostCopyWorksheetRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet15';
$request->{source_sheet} =  'Sheet6';
$request->{options} =  $options;
$request->{source_workbook} =  '';
$request->{source_folder} =  '';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_copy_worksheet(request=> $request);