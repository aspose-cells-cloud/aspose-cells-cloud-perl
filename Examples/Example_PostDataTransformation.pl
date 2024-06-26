use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'BookTableL2W.xlsx';
my $remoteName = 'BookTableL2W.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 
my $data_transformation_request_load_data_load_to = AsposeCellsCloud::Object::LoadTo->new();
 $data_transformation_request_load_data_load_to->{begin_column_index} = 2  ;
 $data_transformation_request_load_data_load_to->{begin_row_index} = 3  ;
 $data_transformation_request_load_data_load_to->{worksheet} = 'L2W'  ;
my $data_transformation_request_load_data_data_query_data_item = AsposeCellsCloud::Object::DataItem->new();
 $data_transformation_request_load_data_data_query_data_item->{data_item_type} = 'Table'  ;
 $data_transformation_request_load_data_data_query_data_item->{value} = 'Table1'  ;
my $data_transformation_request_load_data_data_query_data_source = AsposeCellsCloud::Object::DataSource->new();
 $data_transformation_request_load_data_data_query_data_source->{data_source_type} = 'CloudFileSystem'  ;
 $data_transformation_request_load_data_data_query_data_source->{data_path} = 'BookTableL2W.xlsx'  ;
my $data_transformation_request_load_data_data_query = AsposeCellsCloud::Object::DataQuery->new();
 $data_transformation_request_load_data_data_query->{name} = 'DataQuery'  ;
 $data_transformation_request_load_data_data_query->{data_item} = $data_transformation_request_load_data_data_query_data_item  ;
 $data_transformation_request_load_data_data_query->{data_source} = $data_transformation_request_load_data_data_query_data_source  ;
 $data_transformation_request_load_data_data_query->{data_source_data_type} = 'ListObject'  ;
my $data_transformation_request_load_data = AsposeCellsCloud::Object::LoadData->new();
 $data_transformation_request_load_data->{load_to} = $data_transformation_request_load_data_load_to  ;
 $data_transformation_request_load_data->{data_query} = $data_transformation_request_load_data_data_query  ;
my @data_transformation_request_applied_steps_applied_step0_applied_operate_unpivot_column_names = [];push (@data_transformation_request_applied_steps_applied_step0_applied_operate_unpivot_column_names ,'2017' );
push (@data_transformation_request_applied_steps_applied_step0_applied_operate_unpivot_column_names ,'2018' );
push (@data_transformation_request_applied_steps_applied_step0_applied_operate_unpivot_column_names ,'2019' );
my $data_transformation_request_applied_steps_applied_step0_applied_operate = AsposeCellsCloud::Object::UnpivotColumn->new();
 $data_transformation_request_applied_steps_applied_step0_applied_operate->{applied_operate_type} = 'UnpivotColumn'  ;
 $data_transformation_request_applied_steps_applied_step0_applied_operate->{value_map_name} = 'Count'  ;
 $data_transformation_request_applied_steps_applied_step0_applied_operate->{column_map_name} = 'Date'  ;
 $data_transformation_request_applied_steps_applied_step0_applied_operate->{unpivot_column_names} = []; 
 push ( @{$data_transformation_request_applied_steps_applied_step0_applied_operate->{unpivot_column_names}}, '2017'  );
 push ( @{$data_transformation_request_applied_steps_applied_step0_applied_operate->{unpivot_column_names}}, '2018'  );
 push ( @{$data_transformation_request_applied_steps_applied_step0_applied_operate->{unpivot_column_names}}, '2019'  );  ;
my $data_transformation_request_applied_steps_applied_step0 = AsposeCellsCloud::Object::AppliedStep->new();
 $data_transformation_request_applied_steps_applied_step0->{step_name} = 'UnpivotColumn'  ;
 $data_transformation_request_applied_steps_applied_step0->{applied_operate} = $data_transformation_request_applied_steps_applied_step0_applied_operate  ;
my @data_transformation_request_applied_steps = [];push (@data_transformation_request_applied_steps ,$data_transformation_request_applied_steps_applied_step0 );
my $data_transformation_request = AsposeCellsCloud::Object::DataTransformationRequest->new();
 $data_transformation_request->{load_data} = $data_transformation_request_load_data  ;
 $data_transformation_request->{applied_steps} = []; push ( @{$data_transformation_request->{applied_steps}}, $data_transformation_request_applied_steps_applied_step0  );  ;

my $request = AsposeCellsCloud::Request::PostDataTransformationRequest->new();
$request->{data_transformation_request} =  $data_transformation_request;
$instance->post_data_transformation(request=> $request);