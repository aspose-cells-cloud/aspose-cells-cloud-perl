use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

  
my $assemblyTestXlsx = 'assemblytest.xlsx';
my $book1Xlsx = 'Book1.xlsx';

 
my $format = 'csv';
my $objectType = 'workbook';

my $mapFiles = {};           

 $mapFiles->{$assemblyTestXlsx}= "TestData/".$assemblyTestXlsx ;
 $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

my $request = AsposeCellsCloud::Request::PostExportRequest->new();
$request->{file} =  $mapFiles;
$request->{object_type} =  $objectType;
$request->{format} =  $format;
$instance->post_export(request=> $request);