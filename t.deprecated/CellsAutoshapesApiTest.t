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
use Test::More tests => 2; #TODO update number of test cases
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
# cells_autoshapes_get_worksheet_autoshape test
#
{
    if( not is_docker_sdk()){        
        my $name =  $MYDOC; # replace NULL with a proper value
        my $sheet_name = $SHEET2; # replace NULL with a proper value
        my $autoshape_number = 4; # replace NULL with a proper value
        my $folder =  $TEMPFOLDER; # replace NULL with a proper value
        my $format = 'png';
        ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
        $result = $api->cells_autoshapes_get_worksheet_autoshape(name => $name, sheet_name => $sheet_name, autoshape_number => $autoshape_number, format => $format ,folder => $folder);
        ok( length( $result)>0,"cells_autoshapes_get_worksheet_autoshape OK" )
    }else{
       ok( 1,"") ;
    }
}

#
# cells_autoshapes_get_worksheet_autoshapes test
#
{
    if( not is_docker_sdk()){         
        my $name =  $MYDOC; # replace NULL with a proper value
        my $sheet_name = $SHEET2; # replace NULL with a proper value
        my $folder =  $TEMPFOLDER; # replace NULL with a proper value
        ready_file('api'=> $api, 'file'=>$name ,'folder' =>$folder) ;  
        my $result = $api->cells_autoshapes_get_worksheet_autoshapes(name => $name, sheet_name => $sheet_name, folder => $folder);
        ok($result->status eq 'OK' ,'cells_autoshapes_get_worksheet_autoshapes OK');
    }else{
       ok( 1,"") ;
    }
}


1;