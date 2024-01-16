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
 
my $table_total_requeststable_total_request0 = AsposeCellsCloud::Object::TableTotalRequest->new();
 $table_total_requeststable_total_request0->{list_column_index} = 1  ;
 $table_total_requeststable_total_request0->{totals_calculation} = 'Average'  ;
my @table_total_requests = [];push (@table_total_requests ,$table_total_requeststable_total_request0 );

my $request = AsposeCellsCloud::Request::PostWorksheetListColumnsTotalRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet7';
$request->{list_object_index} =  0;
$request->{table_total_requests} =  []; push ( @{$request->{table_total_requests}}, $table_total_requeststable_total_request0  );;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_list_columns_total(request=> $request);