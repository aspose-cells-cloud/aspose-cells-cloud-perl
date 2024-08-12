use Test::More tests => 2; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::AddTextOptions;
use AsposeCellsCloud::Object::DataSource;
use AsposeCellsCloud::Object::TrimContentOptions;
use AsposeCellsCloud::Object::ScopeOptions;
use AsposeCellsCloud::Request::PostAddTextContentRequest;
use AsposeCellsCloud::Request::PostTrimContentRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # TextProcessingController->post_add_text_content  test
    #
    subtest 'Testing TextProcessingController->post_add_text_content' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'BookText.xlsx';
        my $remoteName = 'BookText.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
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
        my $result =  $api->post_add_text_content(request=> $request);
        ok($result,'post_add_text_content test OK');
    };

    #
    # TextProcessingController->post_trim_content  test
    #
    subtest 'Testing TextProcessingController->post_trim_content' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'BookText.xlsx';
        my $remoteName = 'BookText.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $trim_content_options_data_source = AsposeCellsCloud::Object::DataSource->new();
         $trim_content_options_data_source->{data_source_type} = 'CloudFileSystem'  ;
         $trim_content_options_data_source->{data_path} = 'BookText.xlsx'  ;
        my $trim_content_options_scope_options = AsposeCellsCloud::Object::ScopeOptions->new();
         $trim_content_options_scope_options->{scope} = 'EntireWorkbook'  ;
        my $trim_content_options = AsposeCellsCloud::Object::TrimContentOptions->new();
         $trim_content_options->{data_source} = $trim_content_options_data_source  ;
         $trim_content_options->{trim_leading} = 'true'  ;
         $trim_content_options->{trim_trailing} = 'true'  ;
         $trim_content_options->{trim_space_between_word_to1} = 'true'  ;
         $trim_content_options->{remove_all_line_breaks} = 'true'  ;
         $trim_content_options->{scope_options} = $trim_content_options_scope_options  ;

        my $request = AsposeCellsCloud::Request::PostTrimContentRequest->new();
        $request->{trim_content_options} =  $trim_content_options;
        my $result =  $api->post_trim_content(request=> $request);
        ok($result,'post_trim_content test OK');
    };


1;