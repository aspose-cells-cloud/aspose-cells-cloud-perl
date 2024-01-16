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
 
my $comment = AsposeCellsCloud::Object::Comment->new();
 $comment->{author} = 'aspose cells developer'  ;
 $comment->{note} = 'aspose cells cloud api add comment.'  ;

my $request = AsposeCellsCloud::Request::PutWorksheetCommentRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{cell_name} =  'C1';
$request->{comment} =  $comment;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_worksheet_comment(request=> $request);