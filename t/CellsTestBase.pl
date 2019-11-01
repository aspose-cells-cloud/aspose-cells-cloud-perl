=begin comment

Web API Swagger specification

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#

use lib 'lib';
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);
use File::Slurp;

use AsposeCellsCloud::Configuration ;
use AsposeCellsCloud::ApiClient ;
use AsposeCellsCloud::CellsApi ;

# sub new {
#     my $class = shift;
#     return bless {}, $class;
# }
our $new_client = undef;

sub get_client
{
    my ($self, %args) = @_;
    my $grant_type = 'client_credentials'; # replace NULL with a proper value
    my $client_id = '66164C51-693E-4904-A121-545961673EC1'; # replace NULL with a proper value
    my $client_secret =  '536e76768419db9585afdd37bb5f7533'; # replace NULL with a proper value
    my $config = AsposeCellsCloud::Configuration->new('base_url' => 'https://api.aspose.cloud','api_version' => 'v3.0', app_sid => $client_id, app_key => $client_secret);
    my $client = AsposeCellsCloud::ApiClient->new( $config);
    my $oauth_api = AsposeCellsCloud::CellsApi->new($client);
    return $oauth_api;
}

sub ready_file 
{
    my  %args = @_;
    my $path = "D:\\Projects\\Aspose\\Aspose.Cloud\\Aspose.Cells.Cloud.SDK\\src\\TestData\\".$args{'file'};
    my @fileinfos = stat( $path );
    my $filelength = $fileinfos[7];    
    
    my $fullfilename =  $args{'file'};
    if (exists $args{'folder'}) {
      $fullfilename = $args{'folder'}."/".$args{'file'};
    }
    my $upload_file_data = read_file( $path , binmode => ':raw' );;
    # open(DATA, "< ".$path  ) or die $path ." can not open, $!";
    # read (DATA, $upload_file_data, $filelength);
    # close (DATA);    
    $args{'api'}->upload_file(path=>$fullfilename ,file => $upload_file_data);
}

1;
