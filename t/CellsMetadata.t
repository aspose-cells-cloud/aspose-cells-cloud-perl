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
use Test::More tests => 3; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;
use JSON;
use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::LiteCellsApi;
use AsposeCellsCloud::Object::CellsDocumentProperty;
require './t/CellsTestBase.pl';


my $result =undef;
my $assemblytest = 'assemblytest.xlsx';
my $datasource = 'datasource.xlsx';
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


my $api = get_litecells();


#
# expot objects test
#
{
    my $filemap = {$assemblytest => get_path(file=>$assemblytest),$datasource => get_path(file=>$datasource)};
    my $result = $api->get_metadata(file => $filemap);
    ok($result,'get_metadata objects test OK');
}

{
    my $filemap = {$assemblytest => get_path(file=>$assemblytest),$datasource => get_path(file=>$datasource)};
    my $result = $api->delete_metadata(file => $filemap);
    ok($result,'delete_metadata objects test OK');
}

{
    my $filemap = {$assemblytest => get_path(file=>$assemblytest),$datasource => get_path(file=>$datasource)};    
    my $document_properties =[ AsposeCellsCloud::Object::CellsDocumentProperty->new (name=>'test', value=>'test')];
    my $result = $api->post_metadata(file => $filemap,document_properties=>$document_properties);
    ok($result,'delete_metadata objects test OK');
}

1;
