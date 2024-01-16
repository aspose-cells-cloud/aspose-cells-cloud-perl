use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

  
my $assemblyTestXlsx = 'assemblytest.xlsx';
my $dataSourceXlsx = 'datasource.xlsx';

 
my $mapFiles = {};           

my $protect_workbook_request = AsposeCellsCloud::Object::ProtectWorkbookRequest->new();
 $protect_workbook_request->{aways_open_read_only} = 'true'  ;
 $protect_workbook_request->{encrypt_with_password} = '123456'  ;
 $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
 $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

my $request = AsposeCellsCloud::Request::PostProtectRequest->new();
$request->{file} =  $mapFiles;
$request->{protect_workbook_request} =  $protect_workbook_request;
$request->{password} =  '123456';
$instance->post_protect(request=> $request);