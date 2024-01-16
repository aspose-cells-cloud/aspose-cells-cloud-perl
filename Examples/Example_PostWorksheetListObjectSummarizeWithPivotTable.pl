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
 
my @create_pivot_table_request_pivot_field_columns = [];push (@create_pivot_table_request_pivot_field_columns ,2 );
my @create_pivot_table_request_pivot_field_data = [];push (@create_pivot_table_request_pivot_field_data ,1 );
my @create_pivot_table_request_pivot_field_rows = [];push (@create_pivot_table_request_pivot_field_rows ,0 );
my $create_pivot_table_request = AsposeCellsCloud::Object::CreatePivotTableRequest->new();
 $create_pivot_table_request->{dest_cell_name} = 'C1'  ;
 $create_pivot_table_request->{name} = 'testp'  ;
 $create_pivot_table_request->{source_data} = '=Sheet2!A1:E8'  ;
 $create_pivot_table_request->{use_same_source} = 'true'  ;
 $create_pivot_table_request->{pivot_field_columns} = []; push ( @{$create_pivot_table_request->{pivot_field_columns}}, 2  );  ;
 $create_pivot_table_request->{pivot_field_data} = []; push ( @{$create_pivot_table_request->{pivot_field_data}}, 1  );  ;
 $create_pivot_table_request->{pivot_field_rows} = []; push ( @{$create_pivot_table_request->{pivot_field_rows}}, 0  );  ;

my $request = AsposeCellsCloud::Request::PostWorksheetListObjectSummarizeWithPivotTableRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet7';
$request->{list_object_index} =  0;
$request->{destsheet_name} =  'Sheet2';
$request->{create_pivot_table_request} =  $create_pivot_table_request;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_worksheet_list_object_summarize_with_pivot_table(request=> $request);