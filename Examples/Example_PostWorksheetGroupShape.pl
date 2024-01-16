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
 
my @list_shape = [];push (@list_shape ,0 );
push (@list_shape ,1 );

my $request = AsposeCellsCloud::Request::PostWorksheetGroupShapeRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet6';
$request->{list_shape} =  []; push ( @{$request->{list_shape}}, 0  );
push ( @{$request->{list_shape}}, 1  );;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_group_shape(request=> $request);