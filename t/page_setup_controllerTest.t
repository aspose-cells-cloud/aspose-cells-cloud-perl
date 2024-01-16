use Test::More tests => 9; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::PageSetup;
use AsposeCellsCloud::Request::GetPageSetupRequest;
use AsposeCellsCloud::Request::PostPageSetupRequest;
use AsposeCellsCloud::Request::DeleteHeaderFooterRequest;
use AsposeCellsCloud::Request::GetHeaderRequest;
use AsposeCellsCloud::Request::PostHeaderRequest;
use AsposeCellsCloud::Request::GetFooterRequest;
use AsposeCellsCloud::Request::PostFooterRequest;
use AsposeCellsCloud::Request::PostFitWideToPagesRequest;
use AsposeCellsCloud::Request::PostFitTallToPagesRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # PageSetupController->get_page_setup  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetPageSetupRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_page_setup(request=> $request);
        ok($result,'get_page_setup test OK');
    }

    #
    # PageSetupController->post_page_setup  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $page_setup = AsposeCellsCloud::Object::PageSetup->new();
         $page_setup->{black_and_white} = 'true'  ;
         $page_setup->{center_horizontally} = 'true'  ;
         $page_setup->{center_vertically} = 'true'  ;

        my $request = AsposeCellsCloud::Request::PostPageSetupRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{page_setup} =  $page_setup;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_page_setup(request=> $request);
        ok($result,'post_page_setup test OK');
    }

    #
    # PageSetupController->delete_header_footer  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteHeaderFooterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_header_footer(request=> $request);
        ok($result,'delete_header_footer test OK');
    }

    #
    # PageSetupController->get_header  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetHeaderRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_header(request=> $request);
        ok($result,'get_header test OK');
    }

    #
    # PageSetupController->post_header  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostHeaderRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{section} =  1;
        $request->{script} =  'Update add header';
        $request->{is_first_page} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_header(request=> $request);
        ok($result,'post_header test OK');
    }

    #
    # PageSetupController->get_footer  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetFooterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_footer(request=> $request);
        ok($result,'get_footer test OK');
    }

    #
    # PageSetupController->post_footer  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostFooterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{section} =  1;
        $request->{script} =  'add footer script';
        $request->{is_first_page} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_footer(request=> $request);
        ok($result,'post_footer test OK');
    }

    #
    # PageSetupController->post_fit_wide_to_pages  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostFitWideToPagesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_fit_wide_to_pages(request=> $request);
        ok($result,'post_fit_wide_to_pages test OK');
    }

    #
    # PageSetupController->post_fit_tall_to_pages  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostFitTallToPagesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_fit_tall_to_pages(request=> $request);
        ok($result,'post_fit_tall_to_pages test OK');
    }


1;