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

package AsposeCellsCloud::Request::PutWorksheetAddPictureRequest;

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
# PutWorksheetAddPictureRequest.name : The workbook name.  ,
# PutWorksheetAddPictureRequest.sheetName : The worsheet name.  ,
# PutWorksheetAddPictureRequest.picture : Pictute object  ,
# PutWorksheetAddPictureRequest.upperLeftRow : The image upper left row.  ,
# PutWorksheetAddPictureRequest.upperLeftColumn : The image upper left column.  ,
# PutWorksheetAddPictureRequest.lowerRightRow : The image low right row.  ,
# PutWorksheetAddPictureRequest.lowerRightColumn : The image low right column.  ,
# PutWorksheetAddPictureRequest.picturePath : The picture path, if not provided the picture data is inspected in the request body.  ,
# PutWorksheetAddPictureRequest.folder : Original workbook folder.  ,
# PutWorksheetAddPictureRequest.storageName : Storage name.   

{
    my $params = {
       'client' =>{
            data_type => 'ApiClient',
            description => 'API Client.',
            required => '0',
       }
    };
    __PACKAGE__->method_documentation->{ 'put_worksheet_add_picture' } = { 
    	summary => 'Adds a new picture in worksheet.',
        params => $params,
        returns => 'CellsCloudResponse',
    };
}

sub run_http_request {
    my ($self, %args) = @_;

    my $client = $args{'client'};

    # parse inputs
    my $_resource_path = '/cells/{name}/worksheets/{sheetName}/pictures';

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
    if(defined $self->upper_left_row){
        $query_params->{'upperLeftRow'} = $client->to_query_value($self->upper_left_row);      
    }

    if(defined $self->upper_left_column){
        $query_params->{'upperLeftColumn'} = $client->to_query_value($self->upper_left_column);      
    }

    if(defined $self->lower_right_row){
        $query_params->{'lowerRightRow'} = $client->to_query_value($self->lower_right_row);      
    }

    if(defined $self->lower_right_column){
        $query_params->{'lowerRightColumn'} = $client->to_query_value($self->lower_right_column);      
    }

    if(defined $self->picture_path){
        $query_params->{'picturePath'} = $client->to_query_value($self->picture_path);      
    }

    if(defined $self->folder){
        $query_params->{'folder'} = $client->to_query_value($self->folder);      
    }

    if(defined $self->storage_name){
        $query_params->{'storageName'} = $client->to_query_value($self->storage_name);      
    } 
    my $_body_data;

    # body params
    if (defined $self->picture) {
        #$_body_data = $self->picture;
         $_body_data = JSON->new->convert_blessed->encode( $self->picture);
    }
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
     	description => 'The workbook name.',
     	format => '',
     	read_only => '',
     		},
     'sheet_name' => {
     	datatype => 'string',
     	base_name => 'sheetName',
     	description => 'The worsheet name.',
     	format => '',
     	read_only => '',
     		},
     'picture' => {
     	datatype => 'Picture',
     	base_name => 'picture',
     	description => 'Pictute object',
     	format => '',
     	read_only => '',
     		},
     'upper_left_row' => {
     	datatype => 'int',
     	base_name => 'upperLeftRow',
     	description => 'The image upper left row.',
     	format => '',
     	read_only => '',
     		},
     'upper_left_column' => {
     	datatype => 'int',
     	base_name => 'upperLeftColumn',
     	description => 'The image upper left column.',
     	format => '',
     	read_only => '',
     		},
     'lower_right_row' => {
     	datatype => 'int',
     	base_name => 'lowerRightRow',
     	description => 'The image low right row.',
     	format => '',
     	read_only => '',
     		},
     'lower_right_column' => {
     	datatype => 'int',
     	base_name => 'lowerRightColumn',
     	description => 'The image low right column.',
     	format => '',
     	read_only => '',
     		},
     'picture_path' => {
     	datatype => 'string',
     	base_name => 'picturePath',
     	description => 'The picture path, if not provided the picture data is inspected in the request body.',
     	format => '',
     	read_only => '',
     		},
     'folder' => {
     	datatype => 'string',
     	base_name => 'folder',
     	description => 'Original workbook folder.',
     	format => '',
     	read_only => '',
     		},
     'storage_name' => {
     	datatype => 'string',
     	base_name => 'storageName',
     	description => 'Storage name.',
     	format => '',
     	read_only => '',
     		},    
});


__PACKAGE__->attribute_map( {
    'name' => 'name',
    'sheet_name' => 'sheetName',
    'picture' => 'picture',
    'upper_left_row' => 'upperLeftRow',
    'upper_left_column' => 'upperLeftColumn',
    'lower_right_row' => 'lowerRightRow',
    'lower_right_column' => 'lowerRightColumn',
    'picture_path' => 'picturePath',
    'folder' => 'folder',
    'storage_name' => 'storageName' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;