use Test::More tests => 13; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::ColorFilterRequest;
use AsposeCellsCloud::Object::CellsColor;
use AsposeCellsCloud::Object::Color;
use AsposeCellsCloud::Request::GetWorksheetAutoFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetDateFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetIconFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetCustomFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetDynamicFilterRequest;
use AsposeCellsCloud::Request::PutWorksheetFilterTop10Request;
use AsposeCellsCloud::Request::PutWorksheetColorFilterRequest;
use AsposeCellsCloud::Request::PostWorksheetMatchBlanksRequest;
use AsposeCellsCloud::Request::PostWorksheetMatchNonBlanksRequest;
use AsposeCellsCloud::Request::PostWorksheetAutoFilterRefreshRequest;
use AsposeCellsCloud::Request::DeleteWorksheetDateFilterRequest;
use AsposeCellsCloud::Request::DeleteWorksheetFilterRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # AutoFilterController->get_worksheet_auto_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetAutoFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_auto_filter(request=> $request);
        ok($result,'get_worksheet_auto_filter test OK');
    }

    #
    # AutoFilterController->put_worksheet_date_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetDateFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:B1';
        $request->{field_index} =  0;
        $request->{date_time_grouping_type} =  'Year';
        $request->{year} =  1920;
        $request->{match_blanks} =  'false';
        $request->{refresh} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_date_filter(request=> $request);
        ok($result,'put_worksheet_date_filter test OK');
    }

    #
    # AutoFilterController->put_worksheet_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:B1';
        $request->{field_index} =  0;
        $request->{criteria} =  'Year';
        $request->{match_blanks} =  'false';
        $request->{refresh} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_filter(request=> $request);
        ok($result,'put_worksheet_filter test OK');
    }

    #
    # AutoFilterController->put_worksheet_icon_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetIconFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:B1';
        $request->{field_index} =  0;
        $request->{icon_set_type} =  'ArrowsGray3';
        $request->{icon_id} =  1;
        $request->{match_blanks} =  'false';
        $request->{refresh} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_icon_filter(request=> $request);
        ok($result,'put_worksheet_icon_filter test OK');
    }

    #
    # AutoFilterController->put_worksheet_custom_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetCustomFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:B1';
        $request->{field_index} =  0;
        $request->{operator_type1} =  'LessOrEqual';
        $request->{criteria1} =  '1';
        $request->{match_blanks} =  'false';
        $request->{refresh} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_custom_filter(request=> $request);
        ok($result,'put_worksheet_custom_filter test OK');
    }

    #
    # AutoFilterController->put_worksheet_dynamic_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetDynamicFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:B1';
        $request->{field_index} =  0;
        $request->{dynamic_filter_type} =  'BelowAverage';
        $request->{match_blanks} =  'false';
        $request->{refresh} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_dynamic_filter(request=> $request);
        ok($result,'put_worksheet_dynamic_filter test OK');
    }

    #
    # AutoFilterController->put_worksheet_filter_top10  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutWorksheetFilterTop10Request->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:B1';
        $request->{field_index} =  0;
        $request->{is_top} =  'true';
        $request->{is_percent} =  'true';
        $request->{item_count} =  1;
        $request->{match_blanks} =  'false';
        $request->{refresh} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_filter_top10(request=> $request);
        ok($result,'put_worksheet_filter_top10 test OK');
    }

    #
    # AutoFilterController->put_worksheet_color_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $color_filter_foreground_color_color = AsposeCellsCloud::Object::Color->new();
         $color_filter_foreground_color_color->{r} = 48  ;
         $color_filter_foreground_color_color->{g} = 48  ;
         $color_filter_foreground_color_color->{b} = 48  ;
        my $color_filter_foreground_color = AsposeCellsCloud::Object::CellsColor->new();
         $color_filter_foreground_color->{type} = 'Automatic'  ;
         $color_filter_foreground_color->{color} = $color_filter_foreground_color_color  ;
        my $color_filter = AsposeCellsCloud::Object::ColorFilterRequest->new();
         $color_filter->{pattern} = 'Solid'  ;
         $color_filter->{foreground_color} = $color_filter_foreground_color  ;

        my $request = AsposeCellsCloud::Request::PutWorksheetColorFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{range} =  'A1:B1';
        $request->{field_index} =  0;
        $request->{color_filter} =  $color_filter;
        $request->{match_blanks} =  'true';
        $request->{refresh} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_color_filter(request=> $request);
        ok($result,'put_worksheet_color_filter test OK');
    }

    #
    # AutoFilterController->post_worksheet_match_blanks  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetMatchBlanksRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{field_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_match_blanks(request=> $request);
        ok($result,'post_worksheet_match_blanks test OK');
    }

    #
    # AutoFilterController->post_worksheet_match_non_blanks  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetMatchNonBlanksRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{field_index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_match_non_blanks(request=> $request);
        ok($result,'post_worksheet_match_non_blanks test OK');
    }

    #
    # AutoFilterController->post_worksheet_auto_filter_refresh  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetAutoFilterRefreshRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_auto_filter_refresh(request=> $request);
        ok($result,'post_worksheet_auto_filter_refresh test OK');
    }

    #
    # AutoFilterController->delete_worksheet_date_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetDateFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{field_index} =  0;
        $request->{date_time_grouping_type} =  'Year';
        $request->{year} =  1920;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_date_filter(request=> $request);
        ok($result,'delete_worksheet_date_filter test OK');
    }

    #
    # AutoFilterController->delete_worksheet_filter  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{field_index} =  0;
        $request->{criteria} =  'year';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_filter(request=> $request);
        ok($result,'delete_worksheet_filter test OK');
    }


1;