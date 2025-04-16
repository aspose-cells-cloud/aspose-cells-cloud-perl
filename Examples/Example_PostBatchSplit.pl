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
 
my $batch_split_request_match_condition = AsposeCellsCloud::Object::MatchConditionRequest->new();
 $batch_split_request_match_condition->{regex_pattern} = '(^Book)(.+)(xlsx$)'  ;
my $batch_split_request = AsposeCellsCloud::Object::BatchSplitRequest->new();
 $batch_split_request->{source_folder} = $remoteFolder  ;
 $batch_split_request->{format} = 'Pdf'  ;
 $batch_split_request->{out_folder} = 'OutResult'  ;
 $batch_split_request->{match_condition} = $batch_split_request_match_condition  ;

my $request = AsposeCellsCloud::Request::PostBatchSplitRequest->new();
$request->{batch_split_request} =  $batch_split_request;
$instance->post_batch_split(request=> $request);