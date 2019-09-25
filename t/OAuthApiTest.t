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

use_ok('AsposeCellsCloud::Configuration');
use_ok('AsposeCellsCloud::ApiClient');
use_ok('AsposeCellsCloud::CellsApi');
use_ok('AsposeCellsCloud::Object::ColumnsResponse');
my $config = AsposeCellsCloud::Configuration->new('base_url' => 'https://api.aspose.cloud');
my $client = AsposeCellsCloud::ApiClient->new( $config);
my $api = AsposeCellsCloud::CellsApi->new($client);
isa_ok($api, 'AsposeCellsCloud::CellsApi');

my $access_token;

my $grant_type = 'client_credentials'; # replace NULL with a proper value
my $client_id = '66164C51-693E-4904-A121-545961673EC1'; # replace NULL with a proper value
my $client_secret =  '536e76768419db9585afdd37bb5f7533'; # replace NULL with a proper value
my $result = $api->o_auth_post(grant_type => $grant_type, client_id => $client_id, client_secret => $client_secret);
$access_token =  $result->access_token;

# printf $access_token;
# printf "\n";

my $newconfig = AsposeCellsCloud::Configuration->new('access_token' =>  $access_token, 'base_url' => 'https://api.aspose.cloud/v3.0');
my $newclient = AsposeCellsCloud::ApiClient->new( $newconfig);
my $newapi = AsposeCellsCloud::CellsApi->new($newclient);

{
    my $name = 'Book1.xlsx'; # replace NULL with a proper value
    my $sheet_name = 'Sheet1'; # replace NULL with a proper value
    my $column_index = 1; # replace NULL with a proper value
    my $columns = 10; # replace NULL with a proper value
    my $update_reference = 'true' ; # replace NULL with a proper value
    my $folder = 'Temp'; # replace NULL with a proper value
    my $xlsxdata;
    my @args = stat("D:\\Projects\\Aspose\\Aspose.Cloud\\Aspose.Cells.Cloud.SDK\\src\\TestData\\Book1.xlsx");
    my $size = $args[7];

    open(DATA, "<D:\\Projects\\Aspose\\Aspose.Cloud\\Aspose.Cells.Cloud.SDK\\src\\TestData\\Book1.xlsx") or die "file.txt 文件无法打开, $!";
    binmode(DATA);
    read(DATA, $xlsxdata, $size);
    close (DATA);
    my $result = $newapi->upload_file('path' => "TempBook1.xlsx", 'file'=>$xlsxdata );
}

1;
