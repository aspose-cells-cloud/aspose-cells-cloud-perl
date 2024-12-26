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
 
my $word_case_options_data_source = AsposeCellsCloud::Object::DataSource->new();
 $word_case_options_data_source->{data_source_type} = 'CloudFileSystem'  ;
 $word_case_options_data_source->{data_path} = 'BookText.xlsx'  ;
my $word_case_options_scope_options = AsposeCellsCloud::Object::ScopeOptions->new();
 $word_case_options_scope_options->{scope} = 'EntireWorkbook'  ;
my $word_case_options = AsposeCellsCloud::Object::WordCaseOptions->new();
 $word_case_options->{data_source} = $word_case_options_data_source  ;
 $word_case_options->{word_case_type} = 'None'  ;
 $word_case_options->{scope_options} = $word_case_options_scope_options  ;

my $request = AsposeCellsCloud::Request::PostUpdateWordCaseRequest->new();
$request->{word_case_options} =  $word_case_options;
$instance->post_update_word_case(request=> $request);