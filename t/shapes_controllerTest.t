use Test::More tests => 8; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::Shape;
use AsposeCellsCloud::Request::GetWorksheetShapesRequest;
use AsposeCellsCloud::Request::GetWorksheetShapeRequest;
use AsposeCellsCloud::Request::PutWorksheetShapeRequest;
use AsposeCellsCloud::Request::DeleteWorksheetShapesRequest;
use AsposeCellsCloud::Request::DeleteWorksheetShapeRequest;
use AsposeCellsCloud::Request::PostWorksheetShapeRequest;
use AsposeCellsCloud::Request::PostWorksheetGroupShapeRequest;
use AsposeCellsCloud::Request::PostWorksheetUngroupShapeRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # ShapesController->get_worksheet_shapes  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetShapesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_shapes(request=> $request);
        ok($result,'get_worksheet_shapes test OK');
    }

    #
    # ShapesController->get_worksheet_shape  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetWorksheetShapeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{shapeindex} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_worksheet_shape(request=> $request);
        ok($result,'get_worksheet_shape test OK');
    }

    #
    # ShapesController->put_worksheet_shape  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $shape_dto = AsposeCellsCloud::Object::Shape->new();


        my $request = AsposeCellsCloud::Request::PutWorksheetShapeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{shape_dto} =  $shape_dto;
        $request->{drawing_type} =  'arc';
        $request->{upper_left_row} =  1;
        $request->{upper_left_column} =  1;
        $request->{top} =  10;
        $request->{left} =  10;
        $request->{width} =  100;
        $request->{height} =  100;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_shape(request=> $request);
        ok($result,'put_worksheet_shape test OK');
    }

    #
    # ShapesController->delete_worksheet_shapes  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetShapesRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_shapes(request=> $request);
        ok($result,'delete_worksheet_shapes test OK');
    }

    #
    # ShapesController->delete_worksheet_shape  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteWorksheetShapeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{shapeindex} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_worksheet_shape(request=> $request);
        ok($result,'delete_worksheet_shape test OK');
    }

    #
    # ShapesController->post_worksheet_shape  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $dto = AsposeCellsCloud::Object::Shape->new();
         $dto->{lower_right_column} = 10  ;

        my $request = AsposeCellsCloud::Request::PostWorksheetShapeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{shapeindex} =  0;
        $request->{dto} =  $dto;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_shape(request=> $request);
        ok($result,'post_worksheet_shape test OK');
    }

    #
    # ShapesController->post_worksheet_group_shape  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my @list_shape = [];push (@list_shape ,0 );
        push (@list_shape ,1 );

        my $request = AsposeCellsCloud::Request::PostWorksheetGroupShapeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet6';
        $request->{list_shape} =  []; push ( @{$request->{list_shape}}, 0  );
        push ( @{$request->{list_shape}}, 1  );;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_group_shape(request=> $request);
        ok($result,'post_worksheet_group_shape test OK');
    }

    #
    # ShapesController->post_worksheet_ungroup_shape  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::PostWorksheetUngroupShapeRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet1';
        $request->{shapeindex} =  0;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->post_worksheet_ungroup_shape(request=> $request);
        ok($result,'post_worksheet_ungroup_shape test OK');
    }


1;