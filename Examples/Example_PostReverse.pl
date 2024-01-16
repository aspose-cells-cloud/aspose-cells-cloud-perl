use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

  
my $book1Xlsx = 'Book1.xlsx';

 
my $rotateType = 'rows';
my $format = 'pdf';

my $mapFiles = {};           

 $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

my $request = AsposeCellsCloud::Request::PostReverseRequest->new();
$request->{file} =  $mapFiles;
$request->{rotate_type} =  $rotateType;
$request->{out_format} =  $format;
$instance->post_reverse(request=> $request);