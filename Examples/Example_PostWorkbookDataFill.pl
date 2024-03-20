use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'BookCsvDuplicateData.csv';
my $remoteName = 'BookCsvDuplicateData.csv';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 
my $data_fill_data_fill_default_value = AsposeCellsCloud::Object::DataFillValue->new();
 $data_fill_data_fill_default_value->{default_date} = '2024-01-01'  ;
 $data_fill_data_fill_default_value->{default_number} = 0  ;
 $data_fill_data_fill_default_value->{default_boolean} = 'false'  ;
my $data_fill = AsposeCellsCloud::Object::DataFill->new();
 $data_fill->{data_fill_default_value} = $data_fill_data_fill_default_value  ;

my $request = AsposeCellsCloud::Request::PostWorkbookDataFillRequest->new();
$request->{name} =  $remoteName;
$request->{data_fill} =  $data_fill;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_workbook_data_fill(request=> $request);