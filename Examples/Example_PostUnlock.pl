use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

  
my $needUnlockXlsx = 'needUnlock.xlsx';

 
my $mapFiles = {};           

 $mapFiles->{$needUnlockXlsx}= "TestData/".$needUnlockXlsx ;

my $request = AsposeCellsCloud::Request::PostUnlockRequest->new();
$request->{file} =  $mapFiles;
$request->{password} =  '123456';
$instance->post_unlock(request=> $request);