use Test::More tests => 10; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Request::GetVerticalPageBreaksRequest;
use AsposeCellsCloud::Request::GetHorizontalPageBreaksRequest;
use AsposeCellsCloud::Request::GetVerticalPageBreakRequest;
use AsposeCellsCloud::Request::GetHorizontalPageBreakRequest;
use AsposeCellsCloud::Request::PutVerticalPageBreakRequest;
use AsposeCellsCloud::Request::PutHorizontalPageBreakRequest;
use AsposeCellsCloud::Request::DeleteVerticalPageBreaksRequest;
use AsposeCellsCloud::Request::DeleteHorizontalPageBreaksRequest;
use AsposeCellsCloud::Request::DeleteVerticalPageBreakRequest;
use AsposeCellsCloud::Request::DeleteHorizontalPageBreakRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # PageBreaksController->get_vertical_page_breaks  test
    #
    subtest 'Testing PageBreaksController->get_vertical_page_breaks' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetVerticalPageBreaksRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_vertical_page_breaks(request=> $request);
        ok($result,'get_vertical_page_breaks test OK');
    };

    #
    # PageBreaksController->get_horizontal_page_breaks  test
    #
    subtest 'Testing PageBreaksController->get_horizontal_page_breaks' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetHorizontalPageBreaksRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_horizontal_page_breaks(request=> $request);
        ok($result,'get_horizontal_page_breaks test OK');
    };

    #
    # PageBreaksController->get_vertical_page_break  test
    #
    subtest 'Testing PageBreaksController->get_vertical_page_break' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetVerticalPageBreakRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_vertical_page_break(request=> $request);
        ok($result,'get_vertical_page_break test OK');
    };

    #
    # PageBreaksController->get_horizontal_page_break  test
    #
    subtest 'Testing PageBreaksController->get_horizontal_page_break' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetHorizontalPageBreakRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_horizontal_page_break(request=> $request);
        ok($result,'get_horizontal_page_break test OK');
    };

    #
    # PageBreaksController->put_vertical_page_break  test
    #
    subtest 'Testing PageBreaksController->put_vertical_page_break' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutVerticalPageBreakRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cellname} =  'A1';
        $request->{column} =  1;
        $request->{row} =  1;
        $request->{start_row} =  1;
        $request->{end_row} =  1;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_vertical_page_break(request=> $request);
        ok($result,'put_vertical_page_break test OK');
    };

    #
    # PageBreaksController->put_horizontal_page_break  test
    #
    subtest 'Testing PageBreaksController->put_horizontal_page_break' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PutHorizontalPageBreakRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{cellname} =  'A1';
        $request->{row} =  1;
        $request->{column} =  1;
        $request->{start_column} =  1;
        $request->{end_column} =  1;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_horizontal_page_break(request=> $request);
        ok($result,'put_horizontal_page_break test OK');
    };

    #
    # PageBreaksController->delete_vertical_page_breaks  test
    #
    subtest 'Testing PageBreaksController->delete_vertical_page_breaks' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteVerticalPageBreaksRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{column} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_vertical_page_breaks(request=> $request);
        ok($result,'delete_vertical_page_breaks test OK');
    };

    #
    # PageBreaksController->delete_horizontal_page_breaks  test
    #
    subtest 'Testing PageBreaksController->delete_horizontal_page_breaks' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteHorizontalPageBreaksRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{row} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_horizontal_page_breaks(request=> $request);
        ok($result,'delete_horizontal_page_breaks test OK');
    };

    #
    # PageBreaksController->delete_vertical_page_break  test
    #
    subtest 'Testing PageBreaksController->delete_vertical_page_break' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteVerticalPageBreakRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_vertical_page_break(request=> $request);
        ok($result,'delete_vertical_page_break test OK');
    };

    #
    # PageBreaksController->delete_horizontal_page_break  test
    #
    subtest 'Testing PageBreaksController->delete_horizontal_page_break' => sub { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteHorizontalPageBreakRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{index} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_horizontal_page_break(request=> $request);
        ok($result,'delete_horizontal_page_break test OK');
    };


1;