use Test::More tests => 32; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::WorkbookEncryptionRequest;
use AsposeCellsCloud::Object::WorkbookProtectionRequest;
use AsposeCellsCloud::Object::Name;
use AsposeCellsCloud::Object::PasswordRequest;
use AsposeCellsCloud::Object::ImportIntArrayOption;
use AsposeCellsCloud::Object::CalculationOptions;
use AsposeCellsCloud::Object::WorkbookSettings;
use AsposeCellsCloud::Object::TextWaterMarkerRequest;
use AsposeCellsCloud::Request::PostDigitalSignatureRequest;
use AsposeCellsCloud::Request::PostEncryptWorkbookRequest;
use AsposeCellsCloud::Request::DeleteDecryptWorkbookRequest;
use AsposeCellsCloud::Request::PostProtectWorkbookRequest;
use AsposeCellsCloud::Request::DeleteUnProtectWorkbookRequest;
use AsposeCellsCloud::Request::GetWorkbookDefaultStyleRequest;
use AsposeCellsCloud::Request::GetWorkbookTextItemsRequest;
use AsposeCellsCloud::Request::GetWorkbookNamesRequest;
use AsposeCellsCloud::Request::PutWorkbookNameRequest;
use AsposeCellsCloud::Request::GetWorkbookNameRequest;
use AsposeCellsCloud::Request::PostWorkbookNameRequest;
use AsposeCellsCloud::Request::GetWorkbookNameValueRequest;
use AsposeCellsCloud::Request::DeleteWorkbookNamesRequest;
use AsposeCellsCloud::Request::DeleteWorkbookNameRequest;
use AsposeCellsCloud::Request::PutDocumentProtectFromChangesRequest;
use AsposeCellsCloud::Request::DeleteDocumentUnProtectFromChangesRequest;
use AsposeCellsCloud::Request::PostWorkbooksMergeRequest;
use AsposeCellsCloud::Request::PostWorkbooksTextSearchRequest;
use AsposeCellsCloud::Request::PostWorkbookTextReplaceRequest;
use AsposeCellsCloud::Request::PostWorkbookGetSmartMarkerResultRequest;
use AsposeCellsCloud::Request::PutWorkbookCreateRequest;
use AsposeCellsCloud::Request::PostWorkbookSplitRequest;
use AsposeCellsCloud::Request::PostImportDataRequest;
use AsposeCellsCloud::Request::PostWorkbookCalculateFormulaRequest;
use AsposeCellsCloud::Request::PostAutofitWorkbookRowsRequest;
use AsposeCellsCloud::Request::PostAutofitWorkbookColumnsRequest;
use AsposeCellsCloud::Request::GetWorkbookSettingsRequest;
use AsposeCellsCloud::Request::PostWorkbookSettingsRequest;
use AsposeCellsCloud::Request::PutWorkbookBackgroundRequest;
use AsposeCellsCloud::Request::DeleteWorkbookBackgroundRequest;
use AsposeCellsCloud::Request::PutWorkbookWaterMarkerRequest;
use AsposeCellsCloud::Request::GetPageCountRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # WorkbookController->post_digital_signature  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $roywangPFX = 'roywang.pfx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $roywangPFX ,'folder' =>$remoteFolder . '/roywang.pfx', 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostDigitalSignatureRequest->new();
        $request->{name} =  $remoteName;
        $request->{digitalsignaturefile} =  $remoteFolder . '/roywang.pfx';
        $request->{password} =  '123456';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_digital_signature(request=> $request);
        ok($result,'post_digital_signature test OK');
    }

    #
    # WorkbookController->post_encrypt_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $encryption = AsposeCellsCloud::Object::WorkbookEncryptionRequest->new();
         $encryption->{password} = '123456'  ;
         $encryption->{encryption_type} = 'XOR'  ;
         $encryption->{key_length} = 128  ;

        my $request = AsposeCellsCloud::Request::PostEncryptWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{encryption} =  $encryption;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_encrypt_workbook(request=> $request);
        ok($result,'post_encrypt_workbook test OK');
    }

    #
    # WorkbookController->delete_decrypt_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $encryption = AsposeCellsCloud::Object::WorkbookEncryptionRequest->new();
         $encryption->{password} = '123456'  ;
         $encryption->{encryption_type} = 'XOR'  ;
         $encryption->{key_length} = 128  ;

        my $request = AsposeCellsCloud::Request::DeleteDecryptWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{encryption} =  $encryption;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_decrypt_workbook(request=> $request);
        ok($result,'delete_decrypt_workbook test OK');
    }

    #
    # WorkbookController->post_protect_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $protection = AsposeCellsCloud::Object::WorkbookProtectionRequest->new();
         $protection->{password} = '123456'  ;
         $protection->{protection_type} = 'ALL'  ;

        my $request = AsposeCellsCloud::Request::PostProtectWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{protection} =  $protection;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_protect_workbook(request=> $request);
        ok($result,'post_protect_workbook test OK');
    }

    #
    # WorkbookController->delete_un_protect_workbook  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $protection = AsposeCellsCloud::Object::WorkbookProtectionRequest->new();
         $protection->{password} = '123456'  ;
         $protection->{protection_type} = 'ALL'  ;

        my $request = AsposeCellsCloud::Request::DeleteUnProtectWorkbookRequest->new();
        $request->{name} =  $remoteName;
        $request->{protection} =  $protection;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_un_protect_workbook(request=> $request);
        ok($result,'delete_un_protect_workbook test OK');
    }

    #
    # WorkbookController->get_workbook_default_style  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorkbookDefaultStyleRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_workbook_default_style(request=> $request);
        ok($result,'get_workbook_default_style test OK');
    }

    #
    # WorkbookController->get_workbook_text_items  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorkbookTextItemsRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_workbook_text_items(request=> $request);
        ok($result,'get_workbook_text_items test OK');
    }

    #
    # WorkbookController->get_workbook_names  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorkbookNamesRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_workbook_names(request=> $request);
        ok($result,'get_workbook_names test OK');
    }

    #
    # WorkbookController->put_workbook_name  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $new_name = AsposeCellsCloud::Object::Name->new();
         $new_name->{text} = 'name_1804'  ;
         $new_name->{comment} = 'KeepSourceFormatting'  ;
         $new_name->{refers_to} = '=Sheet1!$I$4'  ;

        my $request = AsposeCellsCloud::Request::PutWorkbookNameRequest->new();
        $request->{name} =  $remoteName;
        $request->{new_name} =  $new_name;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_workbook_name(request=> $request);
        ok($result,'put_workbook_name test OK');
    }

    #
    # WorkbookController->get_workbook_name  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorkbookNameRequest->new();
        $request->{name} =  $remoteName;
        $request->{name_name} =  'Name_2';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_workbook_name(request=> $request);
        ok($result,'get_workbook_name test OK');
    }

    #
    # WorkbookController->post_workbook_name  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $new_name = AsposeCellsCloud::Object::Name->new();
         $new_name->{text} = 'name_1804'  ;
         $new_name->{comment} = 'KeepSourceFormatting'  ;
         $new_name->{refers_to} = '=Sheet1!$I$4'  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookNameRequest->new();
        $request->{name} =  $remoteName;
        $request->{name_name} =  'Name_2';
        $request->{new_name} =  $new_name;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_name(request=> $request);
        ok($result,'post_workbook_name test OK');
    }

    #
    # WorkbookController->get_workbook_name_value  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorkbookNameValueRequest->new();
        $request->{name} =  $remoteName;
        $request->{name_name} =  'Name_2';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_workbook_name_value(request=> $request);
        ok($result,'get_workbook_name_value test OK');
    }

    #
    # WorkbookController->delete_workbook_names  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorkbookNamesRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_workbook_names(request=> $request);
        ok($result,'delete_workbook_names test OK');
    }

    #
    # WorkbookController->delete_workbook_name  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorkbookNameRequest->new();
        $request->{name} =  $remoteName;
        $request->{name_name} =  'Name_2';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_workbook_name(request=> $request);
        ok($result,'delete_workbook_name test OK');
    }

    #
    # WorkbookController->put_document_protect_from_changes  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $password = AsposeCellsCloud::Object::PasswordRequest->new();
         $password->{password} = '123456'  ;

        my $request = AsposeCellsCloud::Request::PutDocumentProtectFromChangesRequest->new();
        $request->{name} =  $remoteName;
        $request->{password} =  $password;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_document_protect_from_changes(request=> $request);
        ok($result,'put_document_protect_from_changes test OK');
    }

    #
    # WorkbookController->delete_document_un_protect_from_changes  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteDocumentUnProtectFromChangesRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_document_un_protect_from_changes(request=> $request);
        ok($result,'delete_document_un_protect_from_changes test OK');
    }

    #
    # WorkbookController->post_workbooks_merge  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $myDocumentXLSX = 'myDocument.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $myDocumentXLSX ,'folder' =>$remoteFolder . '/myDocument.xlsx', 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorkbooksMergeRequest->new();
        $request->{name} =  $remoteName;
        $request->{merge_with} =  $remoteFolder . '/myDocument.xlsx';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        $request->{merged_storage_name} =  '';
        my $result =  $api->post_workbooks_merge(request=> $request);
        ok($result,'post_workbooks_merge test OK');
    }

    #
    # WorkbookController->post_workbooks_text_search  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorkbooksTextSearchRequest->new();
        $request->{name} =  $remoteName;
        $request->{text} =  '1234';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbooks_text_search(request=> $request);
        ok($result,'post_workbooks_text_search test OK');
    }

    #
    # WorkbookController->post_workbook_text_replace  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorkbookTextReplaceRequest->new();
        $request->{name} =  $remoteName;
        $request->{old_value} =  '1234';
        $request->{new_value} =  '5678';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_text_replace(request=> $request);
        ok($result,'post_workbook_text_replace test OK');
    }

    #
    # WorkbookController->post_workbook_get_smart_marker_result  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $reportDataXML = 'ReportData.xml';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $reportDataXML ,'folder' =>$remoteFolder . '/ReportData.xml', 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorkbookGetSmartMarkerResultRequest->new();
        $request->{name} =  $remoteName;
        $request->{xml_file} =  $remoteFolder . '/ReportData.xml';
        $request->{folder} =  $remoteFolder;
        $request->{out_path} =  'OutResult/SmartMarkerResult.xlsx';
        $request->{storage_name} =  '';
        $request->{out_storage_name} =  '';
        my $result =  $api->post_workbook_get_smart_marker_result(request=> $request);
        ok($result,'post_workbook_get_smart_marker_result test OK');
    }

    #
    # WorkbookController->put_workbook_create  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $reportDataXML = 'ReportData.xml';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $reportDataXML ,'folder' =>$remoteFolder . '/ReportData.xml', 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorkbookCreateRequest->new();
        $request->{name} =  'PutWorkbookCreate.xlsx';
        $request->{template_file} =  $remoteFolder . '/' . $remoteName;
        $request->{data_file} =  $remoteFolder . '/ReportData.xml';
        $request->{is_write_over} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        $request->{check_excel_restriction} =  'true';
        my $result =  $api->put_workbook_create(request=> $request);
        ok($result,'put_workbook_create test OK');
    }

    #
    # WorkbookController->post_workbook_split  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorkbookSplitRequest->new();
        $request->{name} =  $remoteName;
        $request->{format} =  'png';
        $request->{out_folder} =  'OutResult';
        $request->{from} =  1;
        $request->{to} =  5;
        $request->{split_name_rule} =  'sheetname';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        $request->{out_storage_name} =  '';
        my $result =  $api->post_workbook_split(request=> $request);
        ok($result,'post_workbook_split test OK');
    }

    #
    # WorkbookController->post_import_data  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my @import_option_data = [];push (@import_option_data ,1 );
        push (@import_option_data ,2 );
        push (@import_option_data ,3 );
        push (@import_option_data ,4 );
        my $import_option = AsposeCellsCloud::Object::ImportIntArrayOption->new();
         $import_option->{destination_worksheet} = 'Sheet1'  ;
         $import_option->{first_column} = 1  ;
         $import_option->{first_row} = 3  ;
         $import_option->{import_data_type} = 'IntArray'  ;
         $import_option->{is_insert} = 'true'  ;
         $import_option->{is_vertical} = 'true'  ;
         $import_option->{data} = []; push ( @{$import_option->{data}}, 1  );
         push ( @{$import_option->{data}}, 2  );
         push ( @{$import_option->{data}}, 3  );
         push ( @{$import_option->{data}}, 4  );  ;

        my $request = AsposeCellsCloud::Request::PostImportDataRequest->new();
        $request->{name} =  $remoteName;
        $request->{import_option} =  $import_option;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_import_data(request=> $request);
        ok($result,'post_import_data test OK');
    }

    #
    # WorkbookController->post_workbook_calculate_formula  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $options = AsposeCellsCloud::Object::CalculationOptions->new();
         $options->{ignore_error} = 'true'  ;
         $options->{recursive} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookCalculateFormulaRequest->new();
        $request->{name} =  $remoteName;
        $request->{options} =  $options;
        $request->{ignore_error} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_calculate_formula(request=> $request);
        ok($result,'post_workbook_calculate_formula test OK');
    }

    #
    # WorkbookController->post_autofit_workbook_rows  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostAutofitWorkbookRowsRequest->new();
        $request->{name} =  $remoteName;
        $request->{start_row} =  1;
        $request->{end_row} =  100;
        $request->{only_auto} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_autofit_workbook_rows(request=> $request);
        ok($result,'post_autofit_workbook_rows test OK');
    }

    #
    # WorkbookController->post_autofit_workbook_columns  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostAutofitWorkbookColumnsRequest->new();
        $request->{name} =  $remoteName;
        $request->{start_column} =  1;
        $request->{end_column} =  20;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_autofit_workbook_columns(request=> $request);
        ok($result,'post_autofit_workbook_columns test OK');
    }

    #
    # WorkbookController->get_workbook_settings  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorkbookSettingsRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_workbook_settings(request=> $request);
        ok($result,'get_workbook_settings test OK');
    }

    #
    # WorkbookController->post_workbook_settings  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $settings = AsposeCellsCloud::Object::WorkbookSettings->new();
         $settings->{auto_compress_pictures} = 'true'  ;
         $settings->{hide_pivot_field_list} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostWorkbookSettingsRequest->new();
        $request->{name} =  $remoteName;
        $request->{settings} =  $settings;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_workbook_settings(request=> $request);
        ok($result,'post_workbook_settings test OK');
    }

    #
    # WorkbookController->put_workbook_background  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $waterMarkPNG = 'WaterMark.png';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
        ready_file('api'=> $api, 'file'=> $waterMarkPNG ,'folder' =>$remoteFolder . '/WaterMark.png', 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorkbookBackgroundRequest->new();
        $request->{name} =  $remoteName;
        $request->{pic_path} =  $remoteFolder . '/WaterMark.png';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_workbook_background(request=> $request);
        ok($result,'put_workbook_background test OK');
    }

    #
    # WorkbookController->delete_workbook_background  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorkbookBackgroundRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_workbook_background(request=> $request);
        ok($result,'delete_workbook_background test OK');
    }

    #
    # WorkbookController->put_workbook_water_marker  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $text_water_marker_request = AsposeCellsCloud::Object::TextWaterMarkerRequest->new();
         $text_water_marker_request->{text} = 'Aspose Cells Cloud'  ;
         $text_water_marker_request->{font_size} = 12  ;

        my $request = AsposeCellsCloud::Request::PutWorkbookWaterMarkerRequest->new();
        $request->{name} =  $remoteName;
        $request->{text_water_marker_request} =  $text_water_marker_request;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_workbook_water_marker(request=> $request);
        ok($result,'put_workbook_water_marker test OK');
    }

    #
    # WorkbookController->get_page_count  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetPageCountRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_page_count(request=> $request);
        ok($result,'get_page_count test OK');
    }


1;