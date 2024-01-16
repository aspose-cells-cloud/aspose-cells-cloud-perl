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
 
my $pivot_field = AsposeCellsCloud::Object::PivotField->new();
 $pivot_field->{show_compact} = 'true'  ;

my $request = AsposeCellsCloud::Request::PostPivotTableUpdatePivotFieldsRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet4';
$request->{pivot_table_index} =  0;
$request->{pivot_field_type} =  'Row';
$request->{pivot_field} =  $pivot_field;
$request->{need_re_calculate} =  'true';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_pivot_table_update_pivot_fields(request=> $request);