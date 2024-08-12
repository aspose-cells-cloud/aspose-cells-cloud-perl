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
 
my $add_text_options_data_source = AsposeCellsCloud::Object::DataSource->new();
 $add_text_options_data_source->{data_source_type} = 'CloudFileSystem'  ;
 $add_text_options_data_source->{data_path} = 'BookText.xlsx'  ;
my $add_text_options = AsposeCellsCloud::Object::AddTextOptions->new();
 $add_text_options->{data_source} = $add_text_options_data_source  ;
 $add_text_options->{text} = 'Aspose.Cells Cloud is an excellent product.'  ;
 $add_text_options->{worksheet} = '202401'  ;
 $add_text_options->{select_poistion} = 'AtTheBeginning'  ;
 $add_text_options->{skip_empty_cells} = 'true'  ;

my $request = AsposeCellsCloud::Request::PostAddTextContentRequest->new();
$request->{add_text_options} =  $add_text_options;
$instance->post_add_text_content(request=> $request);