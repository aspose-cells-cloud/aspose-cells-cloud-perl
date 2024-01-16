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
my $oLEDoc = 'OLEDoc.docx';
my $wordJPG = 'word.jpg';
my $remoteName = 'Book1.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $oLEDoc => $oLEDoc  }  ,'path'=>'OLEDoc.docx' );

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $wordJPG => $wordJPG  }  ,'path'=>'word.jpg' );
 

my $request = AsposeCellsCloud::Request::PutWorksheetOleObjectRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet6';
$request->{upper_left_row} =  1;
$request->{upper_left_column} =  1;
$request->{height} =  100;
$request->{width} =  80;
$request->{ole_file} =  'OLEDoc.docx';
$request->{image_file} =  'word.jpg';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_worksheet_ole_object(request=> $request);