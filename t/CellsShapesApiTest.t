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
use Test::More tests => 6; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;
use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::Object::Shape;
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
# cells_shapes_put_worksheet_shape test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $drawing_type = 'button'; # replace NULL with a proper value
    my $upper_left_row = 1; # replace NULL with a proper value
    my $upper_left_column = 1; # replace NULL with a proper value
    my $top = 10; # replace NULL with a proper value
    my $left = 10; # replace NULL with a proper value
    my $width = 100; # replace NULL with a proper value
    my $height = 90; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_shapes_put_worksheet_shape(name => $name, sheet_name => $sheet_name, drawing_type => $drawing_type, upper_left_row => $upper_left_row, upper_left_column => $upper_left_column, top => $top, left => $left, width => $width, height => $height, folder => $folder);
    ok($result->status eq 'OK' ,'cells_shapes_put_worksheet_shape OK');
}
#
# cells_shapes_get_worksheet_shape test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $shapeindex = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_shapes_get_worksheet_shape(name => $name, sheet_name => $sheet_name, shapeindex => $shapeindex, folder => $folder);
    ok($result->status eq 'OK' ,'cells_shapes_get_worksheet_shape OK');
}

#
# cells_shapes_get_worksheet_shapes test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_shapes_get_worksheet_shapes(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_shapes_get_worksheet_shapes OK');
}

#
# cells_shapes_post_worksheet_shape test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $shapeindex = 0; # replace NULL with a proper value
    my $dto = AsposeCellsCloud::Object::Shape->new(AlternativeText=>'AlternativeText'); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_shapes_post_worksheet_shape(name => $name, sheet_name => $sheet_name, shapeindex => $shapeindex, dto => $dto, folder => $folder);
    ok($result->status eq 'OK' ,'cells_shapes_post_worksheet_shape OK');
}


#
# cells_shapes_delete_worksheet_shape test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $shapeindex = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_shapes_delete_worksheet_shape(name => $name, sheet_name => $sheet_name, shapeindex => $shapeindex, folder => $folder);
    ok($result->status eq 'OK' ,'cells_shapes_delete_worksheet_shape OK');
}

#
# cells_shapes_delete_worksheet_shapes test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_shapes_delete_worksheet_shapes(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_shapes_delete_worksheet_shapes OK');
}


1;
