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
 
my $options = AsposeCellsCloud::Object::CalculationOptions->new();
 $options->{ignore_error} = 'true'  ;
 $options->{recursive} = 'true'  ;

my $request = AsposeCellsCloud::Request::PostWorkbookCalculateFormulaRequest->new();
$request->{name} =  $remoteName;
$request->{options} =  $options;
$request->{ignore_error} =  'true';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_workbook_calculate_formula(request=> $request);