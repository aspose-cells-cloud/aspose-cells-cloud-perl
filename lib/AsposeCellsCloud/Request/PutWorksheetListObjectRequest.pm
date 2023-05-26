=begin comment

Copyright (c) 2023 Aspose.Cells Cloud
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

package AsposeCellsCloud::Request::PutWorksheetListObjectRequest;

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
# PutWorksheetListObjectRequest.name :   ,
# PutWorksheetListObjectRequest.sheetName :   ,
# PutWorksheetListObjectRequest.startRow :   ,
# PutWorksheetListObjectRequest.startColumn :   ,
# PutWorksheetListObjectRequest.endRow :   ,
# PutWorksheetListObjectRequest.endColumn :   ,
# PutWorksheetListObjectRequest.folder :   ,
# PutWorksheetListObjectRequest.hasHeaders :   ,
# PutWorksheetListObjectRequest.displayName :   ,
# PutWorksheetListObjectRequest.showTotals :   ,
# PutWorksheetListObjectRequest.storageName :    

{
    my $params = {
       'client' =>{
            data_type => 'ApiClient',
            description => 'API Client.',
            required => '0',
       }
    };
    __PACKAGE__->method_documentation->{ 'put_worksheet_list_object' } = { 
    	summary => '',
        params => $params,
        returns => 'CellsCloudResponse',
    };
}

sub run_http_request {
    my ($self, %args) = @_;

    my $client = $args{'client'};

    # parse inputs
    my $_resource_path = '/cells/{name}/worksheets/{sheetName}/listobjects';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};


    my $_header_accept = $client->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $client->select_header_content_type('application/json');
    if(defined $self->name){
        my $_base_variable = "{" . "name" . "}";
        my $_base_value = $client->to_path_value($self->name);
        $_resource_path =~ s/$_base_variable/$_base_value/g;        
    }

    if(defined $self->sheet_name){
        my $_base_variable = "{" . "sheetName" . "}";
        my $_base_value = $client->to_path_value($self->sheet_name);
        $_resource_path =~ s/$_base_variable/$_base_value/g;        
    } 
    if(defined $self->start_row){
        $query_params->{'startRow'} = $client->to_query_value($self->start_row);      
    }

    if(defined $self->start_column){
        $query_params->{'startColumn'} = $client->to_query_value($self->start_column);      
    }

    if(defined $self->end_row){
        $query_params->{'endRow'} = $client->to_query_value($self->end_row);      
    }

    if(defined $self->end_column){
        $query_params->{'endColumn'} = $client->to_query_value($self->end_column);      
    }

    if(defined $self->folder){
        $query_params->{'folder'} = $client->to_query_value($self->folder);      
    }

    if(defined $self->has_headers){
        $query_params->{'hasHeaders'} = $client->to_query_value($self->has_headers);      
    }

    if(defined $self->display_name){
        $query_params->{'displayName'} = $client->to_query_value($self->display_name);      
    }

    if(defined $self->show_totals){
        $query_params->{'showTotals'} = $client->to_query_value($self->show_totals);      
    }

    if(defined $self->storage_name){
        $query_params->{'storageName'} = $client->to_query_value($self->storage_name);      
    } 
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $client->call_api($_resource_path, $_method, $query_params, $form_params, $header_params, $_body_data, $auth_settings);
    return $response;
}


__PACKAGE__->method_documentation({
     'name' => {
     	datatype => 'string',
     	base_name => 'name',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'sheet_name' => {
     	datatype => 'string',
     	base_name => 'sheetName',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'start_row' => {
     	datatype => 'int',
     	base_name => 'startRow',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'start_column' => {
     	datatype => 'int',
     	base_name => 'startColumn',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'end_row' => {
     	datatype => 'int',
     	base_name => 'endRow',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'end_column' => {
     	datatype => 'int',
     	base_name => 'endColumn',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'folder' => {
     	datatype => 'string',
     	base_name => 'folder',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'has_headers' => {
     	datatype => 'string',
     	base_name => 'hasHeaders',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'display_name' => {
     	datatype => 'string',
     	base_name => 'displayName',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'show_totals' => {
     	datatype => 'string',
     	base_name => 'showTotals',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'storage_name' => {
     	datatype => 'string',
     	base_name => 'storageName',
     	description => '',
     	format => '',
     	read_only => '',
     		},    
});


__PACKAGE__->attribute_map( {
    'name' => 'name',
    'sheet_name' => 'sheetName',
    'start_row' => 'startRow',
    'start_column' => 'startColumn',
    'end_row' => 'endRow',
    'end_column' => 'endColumn',
    'folder' => 'folder',
    'has_headers' => 'hasHeaders',
    'display_name' => 'displayName',
    'show_totals' => 'showTotals',
    'storage_name' => 'storageName' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;