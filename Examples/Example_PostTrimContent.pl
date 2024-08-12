use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'BookText.xlsx';
my $remoteName = 'BookText.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 
my $trim_content_options_data_source = AsposeCellsCloud::Object::DataSource->new();
 $trim_content_options_data_source->{data_source_type} = 'CloudFileSystem'  ;
 $trim_content_options_data_source->{data_path} = 'BookText.xlsx'  ;
my $trim_content_options_scope_options = AsposeCellsCloud::Object::ScopeOptions->new();
 $trim_content_options_scope_options->{scope} = 'EntireWorkbook'  ;
my $trim_content_options = AsposeCellsCloud::Object::TrimContentOptions->new();
 $trim_content_options->{data_source} = $trim_content_options_data_source  ;
 $trim_content_options->{trim_leading} = 'true'  ;
 $trim_content_options->{trim_trailing} = 'true'  ;
 $trim_content_options->{trim_space_between_word_to1} = 'true'  ;
 $trim_content_options->{remove_all_line_breaks} = 'true'  ;
 $trim_content_options->{scope_options} = $trim_content_options_scope_options  ;

my $request = AsposeCellsCloud::Request::PostTrimContentRequest->new();
$request->{trim_content_options} =  $trim_content_options;
$instance->post_trim_content(request=> $request);