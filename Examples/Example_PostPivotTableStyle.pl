use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'TestCase.xlsx';
my $remoteName = 'TestCase.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 
my $style_font = AsposeCellsCloud::Object::Font->new();
 $style_font->{size} = 16  ;
my $style = AsposeCellsCloud::Object::Style->new();
 $style->{font} = $style_font  ;

my $request = AsposeCellsCloud::Request::PostPivotTableStyleRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet4';
$request->{pivot_table_index} =  0;
$request->{style} =  $style;
$request->{need_re_calculate} =  'true';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_pivot_table_style(request=> $request);