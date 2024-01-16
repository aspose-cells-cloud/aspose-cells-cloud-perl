=begin comment

Copyright (c) 2024 Aspose.Cells Cloud
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

package AsposeCellsCloud::Request::PutWorksheetSparklineGroupRequest;

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
# PutWorksheetSparklineGroupRequest.name : The file name.  ,
# PutWorksheetSparklineGroupRequest.sheetName : The worksheet name.  ,
# PutWorksheetSparklineGroupRequest.type : Represents the sparkline types(Line/Column/Stacked).  ,
# PutWorksheetSparklineGroupRequest.dataRange : Specifies the data range of the sparkline group.  ,
# PutWorksheetSparklineGroupRequest.isVertical : Specifies whether to plot the sparklines from the data range by row or by column.  ,
# PutWorksheetSparklineGroupRequest.locationRange : Specifies where the sparklines to be placed.  ,
# PutWorksheetSparklineGroupRequest.folder : The folder where the file is situated.  ,
# PutWorksheetSparklineGroupRequest.storageName : The storage name where the file is situated.   

{
    my $params = {
       'client' =>{
            data_type => 'ApiClient',
            description => 'API Client.',
            required => '0',
       }
    };
    __PACKAGE__->method_documentation->{ 'put_worksheet_sparkline_group' } = { 
    	summary => 'Add a sparkline group in the worksheet.',
        params => $params,
        returns => 'CellsCloudResponse',
    };
}

sub run_http_request {
    my ($self, %args) = @_;

    my $client = $args{'client'};

    # parse inputs
    my $_resource_path = '/cells/{name}/worksheets/{sheetName}/sparklineGroups';

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
    if(defined $self->type){
        $query_params->{'type'} = $client->to_query_value($self->type);      
    }

    if(defined $self->data_range){
        $query_params->{'dataRange'} = $client->to_query_value($self->data_range);      
    }

    if(defined $self->is_vertical){
        $query_params->{'isVertical'} = $client->to_query_value($self->is_vertical);      
    }

    if(defined $self->location_range){
        $query_params->{'locationRange'} = $client->to_query_value($self->location_range);      
    }

    if(defined $self->folder){
        $query_params->{'folder'} = $client->to_query_value($self->folder);      
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
     	description => 'The file name.',
     	format => '',
     	read_only => '',
     		},
     'sheet_name' => {
     	datatype => 'string',
     	base_name => 'sheetName',
     	description => 'The worksheet name.',
     	format => '',
     	read_only => '',
     		},
     'type' => {
     	datatype => 'string',
     	base_name => 'type',
     	description => 'Represents the sparkline types(Line/Column/Stacked).',
     	format => '',
     	read_only => '',
     		},
     'data_range' => {
     	datatype => 'string',
     	base_name => 'dataRange',
     	description => 'Specifies the data range of the sparkline group.',
     	format => '',
     	read_only => '',
     		},
     'is_vertical' => {
     	datatype => 'string',
     	base_name => 'isVertical',
     	description => 'Specifies whether to plot the sparklines from the data range by row or by column.',
     	format => '',
     	read_only => '',
     		},
     'location_range' => {
     	datatype => 'string',
     	base_name => 'locationRange',
     	description => 'Specifies where the sparklines to be placed.',
     	format => '',
     	read_only => '',
     		},
     'folder' => {
     	datatype => 'string',
     	base_name => 'folder',
     	description => 'The folder where the file is situated.',
     	format => '',
     	read_only => '',
     		},
     'storage_name' => {
     	datatype => 'string',
     	base_name => 'storageName',
     	description => 'The storage name where the file is situated.',
     	format => '',
     	read_only => '',
     		},    
});


__PACKAGE__->attribute_map( {
    'name' => 'name',
    'sheet_name' => 'sheetName',
    'type' => 'type',
    'data_range' => 'dataRange',
    'is_vertical' => 'isVertical',
    'location_range' => 'locationRange',
    'folder' => 'folder',
    'storage_name' => 'storageName' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;