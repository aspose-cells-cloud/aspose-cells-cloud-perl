use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'Book1.xlsx';
my $remoteName = 'Book1.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 

my $request = AsposeCellsCloud::Request::PutWorksheetChartRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet4';
$request->{chart_type} =  'Pie';
$request->{upper_left_row} =  5;
$request->{upper_left_column} =  5;
$request->{lower_right_row} =  10;
$request->{lower_right_column} =  10;
$request->{area} =  'C7:D11';
$request->{is_vertical} =  'true';
$request->{title} =  'Aspose Chart';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_worksheet_chart(request=> $request);