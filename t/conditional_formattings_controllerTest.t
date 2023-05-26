use Test::More tests => 9; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::FormatCondition;
use AsposeCellsCloud::Request::GetWorksheetConditionalFormattingsRequest;
use AsposeCellsCloud::Request::GetWorksheetConditionalFormattingRequest;
use AsposeCellsCloud::Request::PutWorksheetConditionalFormattingRequest;
use AsposeCellsCloud::Request::PutWorksheetFormatConditionRequest;
use AsposeCellsCloud::Request::PutWorksheetFormatConditionAreaRequest;
use AsposeCellsCloud::Request::PutWorksheetFormatConditionConditionRequest;
use AsposeCellsCloud::Request::DeleteWorksheetConditionalFormattingsRequest;
use AsposeCellsCloud::Request::DeleteWorksheetConditionalFormattingRequest;
use AsposeCellsCloud::Request::DeleteWorksheetConditionalFormattingAreaRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # ConditionalFormattingsController->get_worksheet_conditional_formattings  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetConditionalFormattingsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_conditional_formattings(request=> $request);
        ok($result,'get_worksheet_conditional_formattings test OK');
    }

    #
    # ConditionalFormattingsController->get_worksheet_conditional_formatting  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetConditionalFormattingRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_conditional_formatting(request=> $request);
        ok($result,'get_worksheet_conditional_formatting test OK');
    }

    #
    # ConditionalFormattingsController->put_worksheet_conditional_formatting  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $formatcondition = AsposeCellsCloud::Object::FormatCondition->new();
         $formatcondition->{type} = 'CellValue'  ;
         $formatcondition->{operator} = 'Between'  ;
         $formatcondition->{formula1} = 'v1'  ;
         $formatcondition->{formula2} = 'v2'  ;

        my $request = AsposeCellsCloud::Request::PutWorksheetConditionalFormattingRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{formatcondition} =  $formatcondition;
        $request->{cell_area} =  'A1:C10';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_conditional_formatting(request=> $request);
        ok($result,'put_worksheet_conditional_formatting test OK');
    }

    #
    # ConditionalFormattingsController->put_worksheet_format_condition  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetFormatConditionRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{index} =  0;
        $request->{cell_area} =  'A1:C10';
        $request->{type} =  'CellValue';
        $request->{operator_type} =  'Between';
        $request->{formula1} =  'v1';
        $request->{formula2} =  'v2';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_format_condition(request=> $request);
        ok($result,'put_worksheet_format_condition test OK');
    }

    #
    # ConditionalFormattingsController->put_worksheet_format_condition_area  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetFormatConditionAreaRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{index} =  0;
        $request->{cell_area} =  'A1:C10';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_format_condition_area(request=> $request);
        ok($result,'put_worksheet_format_condition_area test OK');
    }

    #
    # ConditionalFormattingsController->put_worksheet_format_condition_condition  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetFormatConditionConditionRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{index} =  0;
        $request->{type} =  'CellValue';
        $request->{operator_type} =  'Between';
        $request->{formula1} =  'v1';
        $request->{formula2} =  'v2';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_format_condition_condition(request=> $request);
        ok($result,'put_worksheet_format_condition_condition test OK');
    }

    #
    # ConditionalFormattingsController->delete_worksheet_conditional_formattings  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetConditionalFormattingsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_conditional_formattings(request=> $request);
        ok($result,'delete_worksheet_conditional_formattings test OK');
    }

    #
    # ConditionalFormattingsController->delete_worksheet_conditional_formatting  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetConditionalFormattingRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_conditional_formatting(request=> $request);
        ok($result,'delete_worksheet_conditional_formatting test OK');
    }

    #
    # ConditionalFormattingsController->delete_worksheet_conditional_formatting_area  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetConditionalFormattingAreaRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{start_row} =  1;
        $request->{start_column} =  1;
        $request->{total_rows} =  4;
        $request->{total_columns} =  6;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_conditional_formatting_area(request=> $request);
        ok($result,'delete_worksheet_conditional_formatting_area test OK');
    }


1;