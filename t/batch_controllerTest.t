use Test::More tests => 4; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::BatchConvertRequest;
use AsposeCellsCloud::Object::MatchConditionRequest;
use AsposeCellsCloud::Object::BatchProtectRequest;
use AsposeCellsCloud::Object::BatchLockRequest;
use AsposeCellsCloud::Request::PostBatchConvertRequest;
use AsposeCellsCloud::Request::PostBatchProtectRequest;
use AsposeCellsCloud::Request::PostBatchLockRequest;
use AsposeCellsCloud::Request::PostBatchUnlockRequest;

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
         $batch_convert_request->{out_folder} = 'OutResult'  ;
         $batch_convert_request->{match_condition} = $batch_convert_request_match_condition  ;

        my $request = AsposeCellsCloud::Request::PostBatchConvertRequest->new();
        $request->{batch_convert_request} =  $batch_convert_request;
        my $result =  $api->post_batch_convert(request=> $request);
        ok($result,'post_batch_convert test OK');
    }

    #
    # BatchController->post_batch_protect  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localBook1 = 'Book1.xlsx';
        my $remoteBook1 = 'Book1.xlsx';
        my $localMyDoc = 'myDocument.xlsx';
        my $remoteMyDoc = 'myDocument.xlsx';

        ready_file('api'=> $api, 'file'=> $localBook1 ,'folder' =>$remoteFolder . '/' . $remoteBook1, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $localMyDoc ,'folder' =>$remoteFolder . '/' . $remoteMyDoc, 'storage'=>'') ; 
     
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
        my $result =  $api->post_batch_protect(request=> $request);
        ok($result,'post_batch_protect test OK');
    }

    #
    # BatchController->post_batch_lock  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localBook1 = 'Book1.xlsx';
        my $remoteBook1 = 'Book1.xlsx';
        my $localMyDoc = 'myDocument.xlsx';
        my $remoteMyDoc = 'myDocument.xlsx';

        ready_file('api'=> $api, 'file'=> $localBook1 ,'folder' =>$remoteFolder . '/' . $remoteBook1, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $localMyDoc ,'folder' =>$remoteFolder . '/' . $remoteMyDoc, 'storage'=>'') ; 
     
        my $batch_lock_request_match_condition = AsposeCellsCloud::Object::MatchConditionRequest->new();
         $batch_lock_request_match_condition->{regex_pattern} = '(^Book)(.+)(xlsx$)'  ;
        my $batch_lock_request = AsposeCellsCloud::Object::BatchLockRequest->new();
         $batch_lock_request->{source_folder} = $remoteFolder  ;
         $batch_lock_request->{password} = '123456'  ;
         $batch_lock_request->{out_folder} = 'OutResult'  ;
         $batch_lock_request->{match_condition} = $batch_lock_request_match_condition  ;

        my $request = AsposeCellsCloud::Request::PostBatchLockRequest->new();
        $request->{batch_lock_request} =  $batch_lock_request;
        my $result =  $api->post_batch_lock(request=> $request);
        ok($result,'post_batch_lock test OK');
    }

    #
    # BatchController->post_batch_unlock  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localBook1 = 'Book1.xlsx';
        my $remoteBook1 = 'Book1.xlsx';
        my $localMyDoc = 'myDocument.xlsx';
        my $remoteMyDoc = 'myDocument.xlsx';

        ready_file('api'=> $api, 'file'=> $localBook1 ,'folder' =>$remoteFolder . '/' . $remoteBook1, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $localMyDoc ,'folder' =>$remoteFolder . '/' . $remoteMyDoc, 'storage'=>'') ; 
     
        my $batch_lock_request_match_condition = AsposeCellsCloud::Object::MatchConditionRequest->new();
         $batch_lock_request_match_condition->{regex_pattern} = '(^Book)(.+)(xlsx$)'  ;
        my $batch_lock_request = AsposeCellsCloud::Object::BatchLockRequest->new();
         $batch_lock_request->{source_folder} = $remoteFolder  ;
         $batch_lock_request->{password} = '123456'  ;
         $batch_lock_request->{out_folder} = 'OutResult'  ;
         $batch_lock_request->{match_condition} = $batch_lock_request_match_condition  ;

        my $request = AsposeCellsCloud::Request::PostBatchUnlockRequest->new();
        $request->{batch_lock_request} =  $batch_lock_request;
        my $result =  $api->post_batch_unlock(request=> $request);
        ok($result,'post_batch_unlock test OK');
    }


1;