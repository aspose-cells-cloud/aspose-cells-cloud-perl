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
my $myDocumentXLSX = 'myDocument.xlsx';
my $remoteName = 'Book1.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $myDocumentXLSX => $myDocumentXLSX  }  ,'path'=>$remoteFolder . '/myDocument.xlsx' );
 

my $request = AsposeCellsCloud::Request::PostWorkbooksMergeRequest->new();
$request->{name} =  $remoteName;
$request->{merge_with} =  $remoteFolder . '/myDocument.xlsx';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$request->{merged_storage_name} =  '';
$instance->post_workbooks_merge(request=> $request);