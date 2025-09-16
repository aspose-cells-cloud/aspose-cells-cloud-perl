=begin comment

Copyright (c) 2025 Aspose.Cells Cloud
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

=end comment

=cut

package AsposeCellsCloud::Request::MathCalculateRequest;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON ;
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;
use File::Basename;

use base ("Class::Accessor", "Class::Data::Inheritable");

__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});


# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;

	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}

	return $self;
}  


# Run Operation Request
# MathCalculateRequest.Spreadsheet : Upload spreadsheet file.  ,
# MathCalculateRequest.operation :   ,
# MathCalculateRequest.value :   ,
# MathCalculateRequest.worksheet :   ,
# MathCalculateRequest.range :   ,
# MathCalculateRequest.region : The spreadsheet region setting.  ,
# MathCalculateRequest.password : The password for opening spreadsheet file.   

{
    my $params = {
       'client' =>{
            data_type => 'ApiClient',
            description => 'API Client.',
            required => '0',
       }
    };
    __PACKAGE__->method_documentation->{ 'math_calculate' } = { 
    	summary => '',
        params => $params,
        returns => 'string',
    };
}

sub run_http_request {
    my ($self, %args) = @_;

    my $client = $args{'client'};

    # parse inputs
    my $_resource_path = 'v4.0/cells/calculate/math';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};


    my $_header_accept = $client->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $client->select_header_content_type('multipart/form-data');
 
    if(defined $self->operation){
        $query_params->{'operation'} = $client->to_query_value($self->operation);      
    }

    if(defined $self->value){
        $query_params->{'value'} = $client->to_query_value($self->value);      
    }

    if(defined $self->worksheet){
        $query_params->{'worksheet'} = $client->to_query_value($self->worksheet);      
    }

    if(defined $self->range){
        $query_params->{'range'} = $client->to_query_value($self->range);      
    }

    if(defined $self->region){
        $query_params->{'region'} = $client->to_query_value($self->region);      
    }

    if(defined $self->password){
        $query_params->{'password'} = $client->to_query_value($self->password);      
    } 
    my $_body_data;


    $form_params->{basename($self->spreadsheet)} = [$self->spreadsheet ,basename($self->spreadsheet),'application/octet-stream'];
 

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $client->call_api($_resource_path, $_method, $query_params, $form_params, $header_params, $_body_data, $auth_settings);
    return $response;
}


__PACKAGE__->method_documentation({
     'spreadsheet' => {
     	datatype => 'string',
     	base_name => 'Spreadsheet',
     	description => 'Upload spreadsheet file.',
     	format => '',
     	read_only => '',
     		},
     'operation' => {
     	datatype => 'string',
     	base_name => 'operation',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'value' => {
     	datatype => 'string',
     	base_name => 'value',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'worksheet' => {
     	datatype => 'string',
     	base_name => 'worksheet',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'range' => {
     	datatype => 'string',
     	base_name => 'range',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'region' => {
     	datatype => 'string',
     	base_name => 'region',
     	description => 'The spreadsheet region setting.',
     	format => '',
     	read_only => '',
     		},
     'password' => {
     	datatype => 'string',
     	base_name => 'password',
     	description => 'The password for opening spreadsheet file.',
     	format => '',
     	read_only => '',
     		},    
});


__PACKAGE__->attribute_map( {
    'spreadsheet' => 'Spreadsheet',
    'operation' => 'operation',
    'value' => 'value',
    'worksheet' => 'worksheet',
    'range' => 'range',
    'region' => 'region',
    'password' => 'password' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;