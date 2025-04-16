use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

  
my $needlockXlsx = 'needlock.xlsx';

 
my $mapFiles = {};           

 $mapFiles->{$needlockXlsx}= "TestData/".$needlockXlsx ;

my $request = AsposeCellsCloud::Request::PostLockRequest->new();
$request->{file} =  $mapFiles;
$request->{password} =  '123456';
$instance->post_lock(request=> $request);