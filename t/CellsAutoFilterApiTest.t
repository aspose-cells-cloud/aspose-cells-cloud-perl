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
use AsposeCellsCloud::Object::CalculationOptions;
use AsposeCellsCloud::Object::FontSetting;
use AsposeCellsCloud::Object::Style;
use AsposeCellsCloud::Object::CellsColor;
use AsposeCellsCloud::Object::ColorFilterRequest;

require './t/CellsTestBase.pl';


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
# cells_auto_filter_put_worksheet_color_filter test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $range = $RANGE; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $color = AsposeCellsCloud::Object::Color->new(R=>200,B=>20);
    my $cells_color =  AsposeCellsCloud::Object::CellsColor->new(Color=>$color );
    my $color_filter = AsposeCellsCloud::Object::ColorFilterRequest->new(
        ForegroundColor=>$cells_color,
        BackgroundColor=>$cells_color,Pattern=>'Solid' ); # replace NULL with a proper value
    my $match_blanks = 'true'; # replace NULL with a proper value
    my $refresh = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$TEMPFOLDER) ;  
    my $result = $api->cells_auto_filter_put_worksheet_color_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, color_filter => $color_filter, match_blanks => $match_blanks, refresh => $refresh, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_put_worksheet_color_filter OK');
}

#
# cells_auto_filter_delete_worksheet_date_filter test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $field_index = 1; # replace NULL with a proper value
    my $date_time_grouping_type = 'Day'; # replace NULL with a proper value
    my $year = 2000; # replace NULL with a proper value
    my $month = 12; # replace NULL with a proper value
    my $day = 1; # replace NULL with a proper value
    my $hour = 1; # replace NULL with a proper value
    my $minute = 1; # replace NULL with a proper value
    my $second = 1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$TEMPFOLDER) ;  
    my $result = $api->cells_auto_filter_delete_worksheet_date_filter(name => $name, sheet_name => $sheet_name, field_index => $field_index, date_time_grouping_type => $date_time_grouping_type, year => $year, month => $month, day => $day, hour => $hour, minute => $minute, second => $second, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_delete_worksheet_date_filter OK');
}

#
# cells_auto_filter_delete_worksheet_filter test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $field_index = 1; # replace NULL with a proper value
    my $criteria = 'undef'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$TEMPFOLDER) ;  
    my $result = $api->cells_auto_filter_delete_worksheet_filter(name => $name, sheet_name => $sheet_name, field_index => $field_index, criteria => $criteria, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_delete_worksheet_filter OK');
}

#
# cells_auto_filter_get_worksheet_auto_filter test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$TEMPFOLDER) ;  
    my $result = $api->cells_auto_filter_get_worksheet_auto_filter(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_get_worksheet_auto_filter OK');
}

#
# cells_auto_filter_post_worksheet_auto_filter_refresh test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$TEMPFOLDER) ;  
    my $result = $api->cells_auto_filter_post_worksheet_auto_filter_refresh(name => $name, sheet_name => $sheet_name, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_post_worksheet_auto_filter_refresh OK');
}

#
# cells_auto_filter_post_worksheet_match_blanks test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$TEMPFOLDER) ;  
    my $result = $api->cells_auto_filter_post_worksheet_match_blanks(name => $name, sheet_name => $sheet_name, field_index => $field_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_post_worksheet_match_blanks OK');
}

#
# cells_auto_filter_post_worksheet_match_non_blanks test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$TEMPFOLDER) ;  
    my $result = $api->cells_auto_filter_post_worksheet_match_non_blanks(name => $name, sheet_name => $sheet_name, field_index => $field_index, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_post_worksheet_match_non_blanks OK');
}



#
# cells_auto_filter_put_worksheet_custom_filter test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $range = $RANGE; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $operator_type1 = 'LessOrEqual'; # replace NULL with a proper value
    my $criteria1 = 'test'; # replace NULL with a proper value
    my $is_and = 'false'; # replace NULL with a proper value
    my $operator_type2 = 'LessOrEqual'; # replace NULL with a proper value
    my $criteria2 = 'test'; # replace NULL with a proper value
    my $match_blanks = 'true'; # replace NULL with a proper value
    my $refresh = 'false'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_auto_filter_put_worksheet_custom_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, operator_type1 => $operator_type1, criteria1 => $criteria1, is_and => $is_and, operator_type2 => $operator_type2, criteria2 => $criteria2, match_blanks => $match_blanks, refresh => $refresh, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_put_worksheet_custom_filter OK');
}

#
# cells_auto_filter_put_worksheet_date_filter test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $range = $RANGE; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $date_time_grouping_type = 'Day'; # replace NULL with a proper value
    my $year = 2008; # replace NULL with a proper value
    my $month = 1; # replace NULL with a proper value
    my $day = 1; # replace NULL with a proper value
    my $hour = 1; # replace NULL with a proper value
    my $minute = 1; # replace NULL with a proper value
    my $second = 1; # replace NULL with a proper value
    my $match_blanks = 'true'; # replace NULL with a proper value
    my $refresh = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_auto_filter_put_worksheet_date_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, date_time_grouping_type => $date_time_grouping_type, year => $year, month => $month, day => $day, hour => $hour, minute => $minute, second => $second, match_blanks => $match_blanks, refresh => $refresh, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_put_worksheet_date_filter OK');
}

#
# cells_auto_filter_put_worksheet_dynamic_filter test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $range = $RANGE; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $dynamic_filter_type = 'May'; # replace NULL with a proper value
    my $match_blanks = 'true'; # replace NULL with a proper value
    my $refresh = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_auto_filter_put_worksheet_dynamic_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, dynamic_filter_type => $dynamic_filter_type, match_blanks => $match_blanks, refresh => $refresh, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_put_worksheet_dynamic_filter OK');
}

#
# cells_auto_filter_put_worksheet_filter test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $range = $RANGE; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $criteria = 'undef'; # replace NULL with a proper value
    my $match_blanks = 'true'; # replace NULL with a proper value
    my $refresh = 'true'; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_auto_filter_put_worksheet_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, criteria => $criteria, match_blanks => $match_blanks, refresh => $refresh, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_put_worksheet_filter OK');
}

#
# cells_auto_filter_put_worksheet_filter_top10 test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $range = $RANGE; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $is_top = 'true'; # replace NULL with a proper value
    my $is_percent = 'true'; # replace NULL with a proper value
    my $item_count = 1; # replace NULL with a proper value
    my $match_blanks = undef; # replace NULL with a proper value
    my $refresh = undef; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_auto_filter_put_worksheet_filter_top10(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, is_top => $is_top, is_percent => $is_percent, item_count => $item_count, match_blanks => $match_blanks, refresh => $refresh, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_put_worksheet_filter_top10 OK');
}

#
# cells_auto_filter_put_worksheet_icon_filter test
#
{
    my $name = $BOOK1; # replace NULL with a proper value
    my $sheet_name = $SHEET1; # replace NULL with a proper value
    my $range = $RANGE; # replace NULL with a proper value
    my $field_index = 0; # replace NULL with a proper value
    my $icon_set_type = 'None'; # replace NULL with a proper value
    my $icon_id = 0; # replace NULL with a proper value
    my $match_blanks = undef; # replace NULL with a proper value
    my $refresh = undef; # replace NULL with a proper value
    my $folder = $TEMPFOLDER; # replace NULL with a proper value
    ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
    my $result = $api->cells_auto_filter_put_worksheet_icon_filter(name => $name, sheet_name => $sheet_name, range => $range, field_index => $field_index, icon_set_type => $icon_set_type, icon_id => $icon_id, match_blanks => $match_blanks, refresh => $refresh, folder => $folder);
    ok($result->status eq 'OK' ,'cells_auto_filter_put_worksheet_icon_filter OK');
}


1;
