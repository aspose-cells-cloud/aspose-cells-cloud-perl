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
 
my $color_filter_foreground_color_color = AsposeCellsCloud::Object::Color->new();
 $color_filter_foreground_color_color->{r} = 48  ;
 $color_filter_foreground_color_color->{g} = 48  ;
 $color_filter_foreground_color_color->{b} = 48  ;
my $color_filter_foreground_color = AsposeCellsCloud::Object::CellsColor->new();
 $color_filter_foreground_color->{type} = 'Automatic'  ;
 $color_filter_foreground_color->{color} = $color_filter_foreground_color_color  ;
my $color_filter = AsposeCellsCloud::Object::ColorFilterRequest->new();
 $color_filter->{pattern} = 'Solid'  ;
 $color_filter->{foreground_color} = $color_filter_foreground_color  ;

my $request = AsposeCellsCloud::Request::PutWorksheetColorFilterRequest->new();
$request->{name} =  $remoteName;
$request->{sheet_name} =  'Sheet1';
$request->{range} =  'A1:B1';
$request->{field_index} =  0;
$request->{color_filter} =  $color_filter;
$request->{match_blanks} =  'true';
$request->{refresh} =  'true';
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_worksheet_color_filter(request=> $request);