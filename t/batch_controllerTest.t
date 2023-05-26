use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::BatchConvertRequest;
use AsposeCellsCloud::Object::MatchConditionRequest;
use AsposeCellsCloud::Request::PostBatchConvertRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # BatchController->post_batch_convert  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localBook1 = 'Book1.xlsx';
        my $remoteBook1 = 'Book1.xlsx';
        my $localMyDoc = 'myDocument.xlsx';
        my $remoteMyDoc = 'myDocument.xlsx';

        ready_file('api'=> $api, 'file'=> $localBook1 ,'folder' =>$remoteFolder . '/' . $remoteBook1, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $localMyDoc ,'folder' =>$remoteFolder . '/' . $remoteMyDoc, 'storage'=>'') ; 
     
        my $batch_convert_request_match_condition = AsposeCellsCloud::Object::MatchConditionRequest->new();
         $batch_convert_request_match_condition->{regex_pattern} = '(^Book)(.+)(xlsx$)'  ;
        my $batch_convert_request = AsposeCellsCloud::Object::BatchConvertRequest->new();
         $batch_convert_request->{source_folder} = $remoteFolder  ;
         $batch_convert_request->{format} = 'pdf'  ;
         $batch_convert_request->{out_folder} = 'TestResult'  ;
         $batch_convert_request->{match_condition} = $batch_convert_request_match_condition  ;

        my $request = AsposeCellsCloud::Request::PostBatchConvertRequest->new();
        $request->{batch_convert_request} =  $batch_convert_request;
        my $result =  $api->post_batch_convert(request=> $request);
        ok($result,'post_batch_convert test OK');
    }


1;