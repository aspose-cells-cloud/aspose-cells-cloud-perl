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
my $mergeToOneSheet = 'true';

my $mapFiles = {};           

 $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
 $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

my $request = AsposeCellsCloud::Request::PostMergeRequest->new();
$request->{file} =  $mapFiles;
$request->{out_format} =  $format;
$request->{merge_to_one_sheet} =  $mergeToOneSheet;
$instance->post_merge(request=> $request);