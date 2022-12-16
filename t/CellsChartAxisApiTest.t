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
use Test::More tests => 10; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::Object::Style;
use AsposeCellsCloud::Object::AutoShapeResponse;
use AsposeCellsCloud::Object::AutoShape;
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
# cells_charts_get_chart_category_axis test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $chart_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_charts_get_chart_category_axis(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_chart_area_get_chart_area OK');
}

#
# cells_charts_get_chart_second_category_axis test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $chart_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_charts_get_chart_second_category_axis(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_chart_area_get_chart_area OK');
}

#
# cells_charts_get_chart_value_axis test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $chart_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_charts_get_chart_value_axis(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_chart_area_get_chart_area OK');
}

#
# cells_charts_get_chart_second_value_axis test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $chart_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_charts_get_chart_second_value_axis(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_chart_area_get_chart_area OK');
}

#
# cells_charts_get_chart_series_axis test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $chart_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_charts_get_chart_series_axis(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_chart_area_get_chart_area OK');
}


#
# cells_charts_post_chart_category_axis test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $chart_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $axis = AsposeCellsCloud::Object::Axis->new( min_value => 10.0); # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_charts_post_chart_category_axis(name => $name, sheet_name => $sheet_name, chart_index => $chart_index,axis =>$axis, folder => $folder);
    ok($result->status eq 'OK' ,'cells_chart_area_get_chart_area OK');
}

#
# cells_charts_post_chart_second_category_axis test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $chart_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $axis = AsposeCellsCloud::Object::Axis->new( min_value => 10.0); # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_charts_post_chart_second_category_axis(name => $name, sheet_name => $sheet_name, chart_index => $chart_index,axis =>$axis, folder => $folder);
    ok($result->status eq 'OK' ,'cells_chart_area_get_chart_area OK');
}

#
# cells_charts_post_chart_value_axis test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $chart_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $axis = AsposeCellsCloud::Object::Axis->new( min_value => 10.0); # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_charts_post_chart_value_axis(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, axis =>$axis,folder => $folder);
    ok($result->status eq 'OK' ,'cells_chart_area_get_chart_area OK');
}

#
# cells_charts_post_chart_second_value_axis test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $chart_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $axis = AsposeCellsCloud::Object::Axis->new( min_value => 10.0); # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_charts_post_chart_second_value_axis(name => $name, sheet_name => $sheet_name, chart_index => $chart_index, axis =>$axis, folder => $folder);
    ok($result->status eq 'OK' ,'cells_chart_area_get_chart_area OK');
}

#
# cells_charts_post_chart_series_axis test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET4; # replace NULL with a proper value
    my $chart_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    my $axis = AsposeCellsCloud::Object::Axis->new( min_value => 10.0); # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_charts_post_chart_series_axis(name => $name, sheet_name => $sheet_name, chart_index => $chart_index,  axis => $axis, folder => $folder);
    ok($result->status eq 'OK' ,'cells_chart_area_get_chart_area OK');
}

1;
