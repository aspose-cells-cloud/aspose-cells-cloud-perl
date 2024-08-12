use Test::More tests => 6; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::Validation;
use AsposeCellsCloud::Request::GetWorksheetValidationsRequest;
use AsposeCellsCloud::Request::GetWorksheetValidationRequest;
use AsposeCellsCloud::Request::PutWorksheetValidationRequest;
use AsposeCellsCloud::Request::PostWorksheetValidationRequest;
use AsposeCellsCloud::Request::DeleteWorksheetValidationRequest;
use AsposeCellsCloud::Request::DeleteWorksheetValidationsRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # WorksheetValidationsController->get_worksheet_validations  test
    #
    subtest 'Testing WorksheetValidationsController->get_worksheet_validations' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetValidationsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_validations(request=> $request);
        ok($result,'get_worksheet_validations test OK');
    };

    #
    # WorksheetValidationsController->get_worksheet_validation  test
    #
    subtest 'Testing WorksheetValidationsController->get_worksheet_validation' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetValidationRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{validation_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_validation(request=> $request);
        ok($result,'get_worksheet_validation test OK');
    };

    #
    # WorksheetValidationsController->put_worksheet_validation  test
    #
    subtest 'Testing WorksheetValidationsController->put_worksheet_validation' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetValidationRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:C10';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_validation(request=> $request);
        ok($result,'put_worksheet_validation test OK');
    };

    #
    # WorksheetValidationsController->post_worksheet_validation  test
    #
    subtest 'Testing WorksheetValidationsController->post_worksheet_validation' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $validation = AsposeCellsCloud::Object::Validation->new();
         $validation->{formula1} = '=A1'  ;
         $validation->{type} = 'Custom'  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetValidationRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{validation_index} =  0;
        $request->{validation} =  $validation;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_validation(request=> $request);
        ok($result,'post_worksheet_validation test OK');
    };

    #
    # WorksheetValidationsController->delete_worksheet_validation  test
    #
    subtest 'Testing WorksheetValidationsController->delete_worksheet_validation' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetValidationRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{validation_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_validation(request=> $request);
        ok($result,'delete_worksheet_validation test OK');
    };

    #
    # WorksheetValidationsController->delete_worksheet_validations  test
    #
    subtest 'Testing WorksheetValidationsController->delete_worksheet_validations' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetValidationsRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_validations(request=> $request);
        ok($result,'delete_worksheet_validations test OK');
    };


1;