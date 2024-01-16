use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'TestCase.xlsx';
my $remoteName = 'TestCase.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 
my @pivot_table_field_request_data = [];push (@pivot_table_field_request_data ,0 );
my $pivot_table_field_request = AsposeCellsCloud::Object::PivotTableFieldRequest->new();
 $pivot_table_field_request->{data} = []; push ( @{$pivot_table_field_request->{data}}, 0  );  ;

my $request = AsposeCellsCloud::Request::PutPivotTableFieldRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet4';
$request->{pivot_table_index} =  0;
$request->{pivot_field_type} =  'Row';
$request->{pivot_table_field_request} =  $pivot_table_field_request;
$request->{need_re_calculate} =  'true';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_pivot_table_field(request=> $request);