use lib 'lib';
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);
use File::Slurp;
use Cwd;
use AsposeCellsCloud::Configuration ;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::CellsApi;
use AsposeCellsCloud::Request::UploadFileRequest;
# sub new {
#     my $class = shift;
#     return bless {}, $class;
# }
our $new_client = undef;

sub get_path
{
	my  %args = @_;
  # my $dir = getcwd;
  # my $path =  $dir."/TestData/".$args{'file'};
	my $path =  "TestData/".$args{'file'};
  return  $path;
}


sub get_cells
{
    my ($self, %args) = @_;
    my $grant_type = 'client_credentials'; # replace NULL with a proper value
    my $client_id = $ENV{'CellsCloudClientId'}; # replace NULL with a proper value
    my $client_secret =  $ENV{'CellsCloudClientSecret'}; # replace NULL with a proper value
    my $config = AsposeCellsCloud::Configuration->new('base_url' =>$ENV{'CellsCloudApiBaseUrl'},'api_version' => 'v3.0', client_id => $client_id, client_secret => $client_secret);
    # my $config = AsposeCellsCloud::Configuration->new('base_url' =>'https://cells-api.qa.aspose.cloud','api_version' => 'v3.0', client_id => $client_id, client_secret => $client_secret);
    my $client = AsposeCellsCloud::ApiClient->new( $config);
    my $oauth_api = AsposeCellsCloud::CellsApi->new($client);
    return $oauth_api;
}

sub ready_file 
{
    my  %args = @_;
    my $path = get_path( file => $args{'file'});
    my @fileinfos = stat( $path );
    my $filelength = $fileinfos[7];    

    my $filename =  $args{'file'};

    my $remotePath =  $args{'folder'};
    my $filemap = {$filename => get_path(file=>$filename) };
    my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>$filemap  ,'path'=>$remotePath );

    $args{'api'}->upload_file( request => $upload_file_request );
}

1;
