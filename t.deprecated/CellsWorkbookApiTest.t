=begin comment

Web API Swagger specification

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 34; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::CellsApi;
use AsposeCellsCloud::Object::WorkbookEncryptionRequest;
use AsposeCellsCloud::Object::WorkbookProtectionRequest;
use AsposeCellsCloud::Object::CalculationOptions;
use AsposeCellsCloud::Object::WorkbookSettings;;
use AsposeCellsCloud::Object::Style;
use AsposeCellsCloud::Object::ImportOption;
use AsposeCellsCloud::Object::ImportIntArrayOption;
use AsposeCellsCloud::Object::PasswordRequest;
use AsposeCellsCloud::Object::TextWaterMarkerRequest;
use AsposeCellsCloud::CellsApi;
require './t/CellsTestBase.pl';

my $result =undef;
my $BOOK1 = 'Book1.xlsx';
my $MYDOC = 'myDocument.xlsx';
my $PVTESTFILE = 'TestCase.xlsx';
my $TEMPFOLDER = 'PerlTest';
my $SHEET1 = 'Sheet1';
my $SHEET2 = 'Sheet2';
my $SHEET3 = 'Sheet3';
my $SHEET4 = 'Sheet4';
my $SHEET5 = 'Sheet5';
my $SHEET6 = 'Sheet6';
my $SHEET7 = 'Sheet7';
my $SHEET8 = 'Sheet8';
my $CELLNAME = 'A1';
my $RANGE = 'A1:C10';
my $CELLAREA = 'A1:C10';


my $api = get_client();

#
# cells_workbook_post_encrypt_document test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $encryption = AsposeCellsCloud::Object::WorkbookEncryptionRequest->new(
        Password=>'123456',
        KeyLength =>128, 
        EncryptionType=>'XOR'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_encrypt_document(name => $name, encryption => $encryption, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_encrypt_document OK');
}

#
# cells_workbook_delete_decrypt_document test 
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $encryption = AsposeCellsCloud::Object::WorkbookEncryptionRequest->new(
        Password=>'123456' ,
        KeyLength =>128 ,
        EncryptionType =>'XOR' );  # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_delete_decrypt_document(name => $name, encryption => $encryption, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_delete_decrypt_document OK');
}

#
# cells_workbook_delete_document_unprotect_from_changes test 
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_delete_document_unprotect_from_changes(name => $name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_delete_document_unprotect_from_changes OK');
}

#
# cells_workbook_delete_unprotect_document test 
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $protection = AsposeCellsCloud::Object::WorkbookProtectionRequest->new( Password=>'123456', ProtectionType=>'All '); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_delete_unprotect_document(name => $name, protection => $protection, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_delete_unprotect_document OK');
}



#
# cells_workbook_get_workbook test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $password = undef; # replace NULL with a proper value
    my $is_auto_fit = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_get_workbook(name => $name, password => $password, is_auto_fit => $is_auto_fit, folder => $folder);    
}

#
# cells_workbook_get_workbook other storage test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $password = undef; # replace NULL with a proper value
    my $is_auto_fit = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_get_workbook(name => $name, password => $password, is_auto_fit => $is_auto_fit,
     folder => $folder, out_storage_name => 'DropBox');    
}

#
# cells_workbook_get_workbook_default_style test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_get_workbook_default_style(name => $name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_get_workbook_default_style OK');
}

#
# cells_workbook_get_workbook_name test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $name_name = 'Name_3'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_get_workbook_name(name => $name, name_name => $name_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_get_workbook_name OK');
}

#
# cells_workbook_get_workbook_name_value test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $name_name = 'Name_3'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_get_workbook_name_value(name => $name, name_name => $name_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_get_workbook_name_value OK');
}

#
# cells_workbook_get_workbook_names test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_get_workbook_names(name => $name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_get_workbook_names OK');
}

#
# cells_workbook_get_workbook_settings test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_get_workbook_settings(name => $name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_get_workbook_settings OK');
}

#
# cells_workbook_get_workbook_text_items test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_get_workbook_text_items(name => $name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_get_workbook_text_items OK');
}

#
# cells_workbook_post_autofit_workbook_rows test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $auto_fitter_options = undef; # replace NULL with a proper value
    my $start_row = 1; # replace NULL with a proper value
    my $end_row = 100; # replace NULL with a proper value
    my $only_auto = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_autofit_workbook_rows(name => $name, auto_fitter_options => $auto_fitter_options, start_row => $start_row, end_row => $end_row, only_auto => $only_auto, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_autofit_workbook_rows OK');
}

#
# cells_workbook_post_autofit_workbook_columns test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $auto_fitter_options = undef; # replace NULL with a proper value
    my $start_column = 1; # replace NULL with a proper value
    my $end_column = 100; # replace NULL with a proper value
    my $only_auto = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_autofit_workbook_columns(name => $name, auto_fitter_options => $auto_fitter_options, start_column => $start_column, end_column => $end_column, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_autofit_workbook_columns OK');
}
#
# cells_workbook_post_import_data test 
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my @intarray = qw(1 2 3 4) ;
    my $importdata =  ' {"FirstRow":1,"FirstColumn":2,"IsVertical":true,"Data":[1,2,3],"DestinationWorksheet":"Sheet1","IsInsert":true,"ImportDataType":"IntArray","Source":null}';
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_import_data(name => $name, importdata => $importdata, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_import_data OK');
}

#
# cells_workbook_post_protect_document test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $protection = AsposeCellsCloud::Object::WorkbookProtectionRequest->new( Password=>undef, ProtectionType=>'All'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_protect_document(name => $name, protection => $protection, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_protect_document OK');
}

#
# cells_workbook_post_workbook_calculate_formula test
#
{
    
    my $name = $BOOK1; # replace NULL with a proper value
    my $options = AsposeCellsCloud::Object::CalculationOptions->new(IgnoreError=>'true'); # replace NULL with a proper value
    my $ignore_error = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_workbook_calculate_formula(name => $name, options => $options, ignore_error => $ignore_error, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_workbook_calculate_formula OK');
}

#
# cells_workbook_post_workbook_get_smart_marker_result test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $xml_file = 'ReportData.xml'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $out_path = undef; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;
    ready_file('api'=> $api, 'file'=>$xml_file ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_workbook_get_smart_marker_result(name => $name, xml_file => ($folder ."/". $xml_file), folder => $folder, out_path => $out_path);   
}

#
# cells_workbook_post_workbook_settings test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $settings = AsposeCellsCloud::Object::WorkbookSettings->new (AutoCompressPictures=>'true'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_workbook_settings(name => $name, settings => $settings, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_workbook_settings OK');
}

#
# cells_workbook_post_workbook_split test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $format = 'png'; # replace NULL with a proper value
    my $from = 1; # replace NULL with a proper value
    my $to = 3; # replace NULL with a proper value
    my $horizontal_resolution = 100; # replace NULL with a proper value
    my $vertical_resolution = 90; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_workbook_split(name => $name, format => $format, from => $from, to => $to, horizontal_resolution => $horizontal_resolution, vertical_resolution => $vertical_resolution, folder => $folder, out_folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_workbook_split OK');
}
#
# cells_workbook_post_workbook_split other storage test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $format = 'png'; # replace NULL with a proper value
    my $from = 1; # replace NULL with a proper value
    my $to = 3; # replace NULL with a proper value
    my $horizontal_resolution = 100; # replace NULL with a proper value
    my $vertical_resolution = 90; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_workbook_split(name => $name, format => $format, from => $from,
     to => $to, horizontal_resolution => $horizontal_resolution,
      vertical_resolution => $vertical_resolution, folder => $folder,
       out_folder => $folder, out_storage_name => 'DropBox');
    ok($result->status eq 'OK' ,'cells_workbook_post_workbook_split OK');
}
#
# cells_workbook_post_workbooks_merge test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $merge_with = 'myDocument.xlsx'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;
    ready_file('api'=> $api, 'file'=>$merge_with ,'folder' =>$folder) ;
    my $merge_file =  $folder . '/' . $merge_with;
    $result = $api->cells_workbook_post_workbooks_merge(name => $name, merge_with => $merge_file, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_workbooks_merge OK');
}

#
# cells_workbook_post_workbooks_merge other storage test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $merge_with = 'myDocument.xlsx'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;
    ready_file('api'=> $api, 'file'=>$merge_with ,'folder' =>$folder, 'storage_name' => "DropBox") ;
    my $merge_file =  $folder . '/' . $merge_with;
    $result = $api->cells_workbook_post_workbooks_merge(name => $name, merge_with => $merge_file,
     folder => $folder,merged_storage_name => 'DropBox');
    ok($result->status eq 'OK' ,'cells_workbook_post_workbooks_merge OK');
}
#
# cells_workbook_post_workbooks_text_replace test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $old_value = 'undef111'; # replace NULL with a proper value
    my $new_value = 'undef'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_workbooks_text_replace(name => $name, old_value => $old_value, new_value => $new_value, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_workbooks_text_replace OK');
}

#
# cells_workbook_post_workbooks_text_search test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $text = 'test'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_post_workbooks_text_search(name => $name, text => $text, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_post_workbooks_text_search OK');
}

#
# cells_workbook_put_convert_workbook test
#
{
    my $format = 'pdf'; # replace NULL with a proper value
    my $password = undef; # replace NULL with a proper value
    my $out_path = undef; # replace NULL with a proper value
    my $Book1_data =undef;
    my @fileinfos = stat(get_path(file=>"Book1.xlsx"));
    my $filelength = $fileinfos[7];
    open(DATA, "<".get_path(file=>"Book1.xlsx")) or die "file.txt  can not open, $!";
    binmode(DATA);
    # while( read (DATA, $Book1_data, 8)) {};
    read (DATA, $Book1_data, $filelength);
    close (DATA);    
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    # ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_put_convert_workbook( workbook => $Book1_data, format => $format, password => $password, folder =>$folder);
    ok(length($result) > 10 ,'cells_workbook_put_convert_workbook pdf OK');
}

#
# cells_workbook_put_convert_workbook md test
#
{
    my $format = 'md'; # replace NULL with a proper value
    my $password = undef; # replace NULL with a proper value
    my $out_path = undef; # replace NULL with a proper value
    my $Book1_data =undef;
    my @fileinfos = stat(get_path(file=>"Book1.xlsx"));
    my $filelength = $fileinfos[7];
    open(DATA, "<".get_path(file=>"Book1.xlsx")) or die "file.txt can not open, $!";
    binmode(DATA);
    # while( read (DATA, $Book1_data, 8)) {};
    read (DATA, $Book1_data, $filelength);
    close (DATA);
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    # ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_put_convert_workbook( workbook => $Book1_data, format => $format, password => $password, folder =>$folder);
    ok(length($result) > 0 ,'cells_workbook_put_convert_workbook md OK');
}

#
# cells_workbook_put_document_protect_from_changes test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $password = AsposeCellsCloud::Object::PasswordRequest->new(Password=>'123456'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;
    $result = $api->cells_workbook_put_document_protect_from_changes(name => $name, password => $password, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_put_document_protect_from_changes OK');    
}

#
# cells_workbook_put_workbook_create test
#
{
    my $name = 'NewBook'.$BOOK1; # replace NULL with a proper value
    my $template_file = $BOOK1; # replace NULL with a proper value
    my $data_file = 'ReportData.xml'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$template_file ,'folder' =>$folder) ;  
    ready_file('api'=> $api, 'file'=>$data_file ,'folder' =>$folder);
    $result = $api->cells_workbook_put_workbook_create(name => $name, template_file =>$folder."/".$template_file, data_file => $folder."/".$data_file, folder => $folder,is_write_over => 'true');
    ok(length($result) > 10 ,'post_batch_convert OK');
}

#
# cells_workbook_delete_workbook_name test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $name_name = 'Name_2'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    $result = $api->cells_workbook_delete_workbook_name(name => $name, name_name => $name_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_delete_workbook_name OK');
}

#
# cells_workbook_delete_workbook_names test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_delete_workbook_names(name => $name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_workbook_delete_workbook_names OK');
}

#
# cells_workbook_put_workbook_background test ?
#
{
    
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $png = undef; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    open(DATA, "<".get_path(file=>"WaterMark.png")) or die "file.txt did not open, $!";
    binmode(DATA);
    read (DATA, $png, 8);
    close (DATA);
    $result = $api->cells_workbook_put_workbook_background(name => $name, png => $png, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_put_workbook_background OK');
}

#
# cells_workbook_delete_workbook_background test ?
#
{
    
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $png = undef; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    $result = $api->cells_workbook_delete_workbook_background(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_worksheets_delete_workbook_background OK');
}

#
# cells_workbook_delete_workbook_background test ?
#
{
    
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $text_water_marker_request =  AsposeCellsCloud::Object::TextWaterMarkerRequest->new(Text=>'Aspose.Cells Cloud SDK');; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;
    $result = $api->cells_workbook_put_workbook_water_marker(name => $name,  folder => $folder,text_water_marker_request =>  $text_water_marker_request);
    ok($result->status eq 'OK' ,'cells_worksheets_delete_workbook_background OK');
}
#
# cells_workbook_get_page_count test ?
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
	ready_file('api'=> $api, 'file'=>$BOOK1 ,'folder' =>$TEMPFOLDER) ;   
    $result = $api->cells_workbook_get_page_count(name => $name ,folder=> $folder);
    ok($result gt 0);
}
#
# cells_workbook_post_digital_signature  test ?
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
	ready_file('api'=> $api, 'file'=>$BOOK1 ,'folder' =>$TEMPFOLDER) ;   
    ready_file('api'=> $api, 'file'=>'roywang.pfx' ) ; 
    $result = $api->cells_workbook_post_digital_signature(name => $name ,folder=> $folder , digitalsignaturefile => 'roywang.pfx',password=> '123456');
    ok($result gt 0);
}

{
    my $format = 'pdf'; # replace NULL with a proper value
    my $password = undef; # replace NULL with a proper value
    my $out_path = undef; # replace NULL with a proper value
    my $Book1_data =undef;
    my $extendedqueryparameters = { 'OnePagePerSheet' => 'false'};
    my @fileinfos = stat(get_path(file=>"Book1.xlsx"));
    my $filelength = $fileinfos[7];
    open(DATA, "<".get_path(file=>"Book1.xlsx")) or die "file.txt  can not open, $!";
    binmode(DATA);
    # while( read (DATA, $Book1_data, 8)) {};
    read (DATA, $Book1_data, $filelength);
    close (DATA);    
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    # ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_put_convert_workbook( workbook => $Book1_data, format => $format, password => $password, out_path => $out_path,folder =>$folder,extended_query_parameters => $extendedqueryparameters);
    ok(length($result) > 10 ,'cells_workbook_put_convert_workbook OK');
}
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $password = undef; # replace NULL with a proper value
    my $is_auto_fit = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $extendedqueryparameters = { 'OnePagePerSheet' => 'false'};
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_workbook_get_workbook(name => $name, password => $password, is_auto_fit => $is_auto_fit, folder => $folder,extended_query_parameters => $extendedqueryparameters);    
}
1;
