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
 
my $optionsvalue0_font = AsposeCellsCloud::Object::Font->new();
 $optionsvalue0_font->{is_bold} = 'true'  ;
 $optionsvalue0_font->{size} = 16  ;
my $optionsvalue0 = AsposeCellsCloud::Object::FontSetting->new();
 $optionsvalue0->{length} = 5  ;
 $optionsvalue0->{start_index} = 0  ;
 $optionsvalue0->{font} = $optionsvalue0_font  ;
my @options = [];push (@options ,$optionsvalue0 );

my $request = AsposeCellsCloud::Request::PostCellCharactersRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{cell_name} =  'E36';
$request->{options} =  []; push ( @{$request->{options}}, $optionsvalue0  );;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->post_cell_characters(request=> $request);