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
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;


use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::CellsApi;
use AsposeCellsCloud::Object::ColumnsResponse;
use AsposeCellsCloud::Object::Picture;
use AsposeCellsCloud::Object::FontSetting;
use AsposeCellsCloud::Object::Style;

require '/home/roy/aspose/cells/cloud/sdk/perl/t/CellsTestBase.pl';

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
# cells_pictures_put_worksheet_add_picture test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET6; # replace NULL with a proper value
    my $picture = undef; # replace NULL with a proper value
    my $upper_left_row = 1; # replace NULL with a proper value
    my $upper_left_column = 1; # replace NULL with a proper value
    my $lower_right_row = 10; # replace NULL with a proper value
    my $lower_right_column = 10; # replace NULL with a proper value
    my $picture_path = 'WaterMark.png'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;
    ready_file('api'=> $api, 'file'=>$picture_path ,'folder' =>$folder) ;  
    $result = $api->cells_pictures_put_worksheet_add_picture(name => $name, sheet_name => $sheet_name, picture => $picture, upper_left_row => $upper_left_row, upper_left_column => $upper_left_column, lower_right_row => $lower_right_row, lower_right_column => $lower_right_column, picture_path =>($folder."/".$picture_path) , folder => $folder);
    ok($result->status eq 'OK' ,'cells_pictures_put_worksheet_add_picture OK');
}

#
# cells_pictures_get_worksheet_picture test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET6; # replace NULL with a proper value
    my $picture_number = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pictures_get_worksheet_picture(name => $name, 
        sheet_name => $sheet_name, picture_index => $picture_number, folder => $folder);
}

#
# cells_pictures_get_worksheet_pictures test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET6; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pictures_get_worksheet_pictures(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pictures_get_worksheet_pictures OK');
}

#
# cells_pictures_post_worksheet_picture test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET6; # replace NULL with a proper value
    my $picture_index = 0; # replace NULL with a proper value
    my $picture =  AsposeCellsCloud::Object::Picture->new(Top => 1 ); # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pictures_post_worksheet_picture(name => $name, sheet_name => $sheet_name, picture_index => $picture_index, picture => $picture, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pictures_post_worksheet_picture OK');
}



#
# cells_pictures_delete_worksheet_picture test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET6; # replace NULL with a proper value
    my $picture_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pictures_delete_worksheet_picture(name => $name, sheet_name => $sheet_name, picture_index => $picture_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pictures_delete_worksheet_picture OK');
}

#
# cells_pictures_delete_worksheet_pictures test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET6; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    $result = $api->cells_pictures_delete_worksheet_pictures(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_pictures_delete_worksheet_pictures OK');
}
1;
