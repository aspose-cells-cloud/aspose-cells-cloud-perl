use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

  
my $dataSourceXlsx = 'datasource.xlsx';

 
my $mapFiles = {};           

 $mapFiles->{$dataSourceXlsx}= "TestData/".$dataSourceXlsx ;

my $request = AsposeCellsCloud::Request::PostReplaceRequest->new();
$request->{file} =  $mapFiles;
$request->{text} =  '12';
$request->{newtext} =  'newtext';
$instance->post_replace(request=> $request);