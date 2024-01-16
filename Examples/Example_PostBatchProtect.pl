use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localBook1 = 'Book1.xlsx';
my $remoteBook1 = 'Book1.xlsx';
my $localMyDoc = 'myDocument.xlsx';
my $remoteMyDoc = 'myDocument.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localBook1 => $localBook1  }  ,'path'=>$remoteFolder . '/' . $remoteBook1 );

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localMyDoc => $localMyDoc  }  ,'path'=>$remoteFolder . '/' . $remoteMyDoc );
 
my $batch_protect_request_match_condition = AsposeCellsCloud::Object::MatchConditionRequest->new();
 $batch_protect_request_match_condition->{regex_pattern} = '(^Book)(.+)(xlsx$)'  ;
my $batch_protect_request = AsposeCellsCloud::Object::BatchProtectRequest->new();
 $batch_protect_request->{source_folder} = $remoteFolder  ;
 $batch_protect_request->{protection_type} = 'All'  ;
 $batch_protect_request->{password} = '123456'  ;
 $batch_protect_request->{out_folder} = 'OutResult'  ;
 $batch_protect_request->{match_condition} = $batch_protect_request_match_condition  ;

my $request = AsposeCellsCloud::Request::PostBatchProtectRequest->new();
$request->{batch_protect_request} =  $batch_protect_request;
$instance->post_batch_protect(request=> $request);