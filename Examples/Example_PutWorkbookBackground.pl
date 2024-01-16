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
my $waterMarkPNG = 'WaterMark.png';
my $remoteName = 'Book1.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $waterMarkPNG => $waterMarkPNG  }  ,'path'=>$remoteFolder . '/WaterMark.png' );
 

my $request = AsposeCellsCloud::Request::PutWorkbookBackgroundRequest->new();
$request->{name} =  $remoteName;
$request->{pic_path} =  $remoteFolder . '/WaterMark.png';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_workbook_background(request=> $request);