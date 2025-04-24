use lib '..\lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::CellsApi;
use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::Request::PutConvertWorkbookRequest;
# use AsposeCellsCloud::CellsApi;

# my $CellsCloudClientId = "....";  # get from https://dashboard.aspose.cloud/#/applications
# my $CellsCloudClientSecret = "....";  # get from https://dashboard.aspose.cloud/#/applications
my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});

my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $localName = 'EmployeeSalesSummary.xlsx';
my $format = 'pdf';
my $mapFiles = {};           
$mapFiles->{$localName}= $localName ;
my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
$request->{file} =  $mapFiles;
$request->{format} =  $format;
my $response = $instance->put_convert_workbook(request=> $request);
open (my $fh, '>', 'EmployeeSalesSummary.pdf') or die "无法打开文件 EmployeeSalesSummary.pdf $!";
binmode($fh);
print $fh $response;
close($fh);
