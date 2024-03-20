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
 
my $data_cleansing_data_fill_data_fill_default_value = AsposeCellsCloud::Object::DataFillValue->new();
 $data_cleansing_data_fill_data_fill_default_value->{default_date} = '2024-01-01'  ;
 $data_cleansing_data_fill_data_fill_default_value->{default_number} = 0  ;
 $data_cleansing_data_fill_data_fill_default_value->{default_boolean} = 'false'  ;
my $data_cleansing_data_fill = AsposeCellsCloud::Object::DataFill->new();
 $data_cleansing_data_fill->{data_fill_default_value} = $data_cleansing_data_fill_data_fill_default_value  ;
my $data_cleansing = AsposeCellsCloud::Object::DataCleansing->new();
 $data_cleansing->{need_fill_data} = 'true'  ;
 $data_cleansing->{data_fill} = $data_cleansing_data_fill  ;

my $request = AsposeCellsCloud::Request::PostWorkbookDataCleansingRequest->new();
$request->{name} =  $remoteName;
$request->{data_cleansing} =  $data_cleansing;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_workbook_data_cleansing(request=> $request);