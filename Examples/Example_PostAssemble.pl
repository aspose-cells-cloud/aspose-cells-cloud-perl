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

 
my $format = 'csv';

my $mapFiles = {};           

 $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
 $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

my $request = AsposeCellsCloud::Request::PostAssembleRequest->new();
$request->{file} =  $mapFiles;
$request->{datasource} =  'ds';
$request->{out_format} =  $format;
$instance->post_assemble(request=> $request);