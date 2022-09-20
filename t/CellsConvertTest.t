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
use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::CellsApi;
use AsposeCellsCloud::Object::FileInfo;
require './t/CellsTestBase.pl';


my $result =undef;
my $BOOK1 = 'Book1.xlsx';

my $api = get_client();


#
# post_batch_convert test
#
{
	$result = $api->post_convert_workbook_to_docx(workbook =>get_path(file=>$BOOK1) );
    ok(length($result) > 10 ,'post_batch_convert OK');
}

{

	$result = $api->post_convert_workbook_to_pdf(workbook =>get_path(file=>$BOOK1));
    ok(length($result) > 10 ,'post_batch_convert OK');
}
{

	$result = $api->post_convert_workbook_to_png(workbook =>get_path(file=>$BOOK1));
    ok(length($result) > 10 ,'post_batch_convert OK');
}
1;
