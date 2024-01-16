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
 
my @import_option_data = [];push (@import_option_data ,1 );
push (@import_option_data ,2 );
push (@import_option_data ,3 );
push (@import_option_data ,4 );
my $import_option = AsposeCellsCloud::Object::ImportIntArrayOption->new();
 $import_option->{destination_worksheet} = 'Sheet1'  ;
 $import_option->{first_column} = 1  ;
 $import_option->{first_row} = 3  ;
 $import_option->{import_data_type} = 'IntArray'  ;
 $import_option->{is_insert} = 'true'  ;
 $import_option->{is_vertical} = 'true'  ;
 $import_option->{data} = []; push ( @{$import_option->{data}}, 1  );
 push ( @{$import_option->{data}}, 2  );
 push ( @{$import_option->{data}}, 3  );
 push ( @{$import_option->{data}}, 4  );  ;

my $request = AsposeCellsCloud::Request::PostImportDataRequest->new();
$request->{name} =  $remoteName;
$request->{import_option} =  $import_option;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_import_data(request=> $request);