use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

  
my $book1Xlsx = 'Book1.xlsx';

 
my $mapFiles = {};           

 $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

my $request = AsposeCellsCloud::Request::GetMetadataRequest->new();
$request->{file} =  $mapFiles;
$request->{type} =  'all';
$instance->get_metadata(request=> $request);