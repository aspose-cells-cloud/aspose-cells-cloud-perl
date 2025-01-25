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

package AsposeCellsCloud::Object::OoxmlSaveOptions;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;
use AsposeCellsCloud::Object::SaveOptions; 


use base ("Class::Accessor", "Class::Data::Inheritable");



__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
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

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "AsposeCellsCloud::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => 'Represents options of saving ooxml file.',
                                  class => 'OoxmlSaveOptions',
                                  required => [], # TODO
}                                 );


__PACKAGE__->method_documentation({
     'export_cell_name' => {
     	datatype => 'boolean',
     	base_name => 'ExportCellName',
     	description => 'Indicates if export cell name to Excel2007 .xlsx (.xlsm, .xltx, .xltm) file.               If the output file may be accessed by SQL Server DTS, this value must be               true.  Setting the value to false will highly increase the performance and               reduce the file size when creating large file.  Default value is false.',
     	format => '',
     	read_only => '',
     		},
     'update_zoom' => {
     	datatype => 'boolean',
     	base_name => 'UpdateZoom',
     	description => 'Indicates whether update scaling factor before saving the file if the PageSetup.FitToPagesWide and PageSetup.FitToPagesTall properties control how the worksheet is scaled.',
     	format => '',
     	read_only => '',
     		},
     'enable_zip64' => {
     	datatype => 'boolean',
     	base_name => 'EnableZip64',
     	description => 'Always use ZIP64 extensions when writing zip archives, even when unnecessary.',
     	format => '',
     	read_only => '',
     		},
     'embed_ooxml_as_ole_object' => {
     	datatype => 'boolean',
     	base_name => 'EmbedOoxmlAsOleObject',
     	description => 'Indicates whether embedding Ooxml files of OleObject as ole object.',
     	format => '',
     	read_only => '',
     		},
     'compression_type' => {
     	datatype => 'string',
     	base_name => 'CompressionType',
     	description => 'Gets and sets the compression type for ooxml file.',
     	format => '',
     	read_only => '',
     		},
     'save_format' => {
     	datatype => 'string',
     	base_name => 'SaveFormat',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'cached_file_folder' => {
     	datatype => 'string',
     	base_name => 'CachedFileFolder',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'clear_data' => {
     	datatype => 'boolean',
     	base_name => 'ClearData',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'create_directory' => {
     	datatype => 'boolean',
     	base_name => 'CreateDirectory',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'enable_http_compression' => {
     	datatype => 'boolean',
     	base_name => 'EnableHTTPCompression',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'refresh_chart_cache' => {
     	datatype => 'boolean',
     	base_name => 'RefreshChartCache',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'sort_names' => {
     	datatype => 'boolean',
     	base_name => 'SortNames',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'validate_merged_areas' => {
     	datatype => 'boolean',
     	base_name => 'ValidateMergedAreas',
     	description => '',
     	format => '',
     	read_only => '',
     		},    
});

__PACKAGE__->swagger_types( {
    'export_cell_name' => 'boolean',
    'update_zoom' => 'boolean',
    'enable_zip64' => 'boolean',
    'embed_ooxml_as_ole_object' => 'boolean',
    'compression_type' => 'string',
    'save_format' => 'string',
    'cached_file_folder' => 'string',
    'clear_data' => 'boolean',
    'create_directory' => 'boolean',
    'enable_http_compression' => 'boolean',
    'refresh_chart_cache' => 'boolean',
    'sort_names' => 'boolean',
    'validate_merged_areas' => 'boolean' 
} );

__PACKAGE__->attribute_map( {
    'export_cell_name' => 'ExportCellName',
    'update_zoom' => 'UpdateZoom',
    'enable_zip64' => 'EnableZip64',
    'embed_ooxml_as_ole_object' => 'EmbedOoxmlAsOleObject',
    'compression_type' => 'CompressionType',
    'save_format' => 'SaveFormat',
    'cached_file_folder' => 'CachedFileFolder',
    'clear_data' => 'ClearData',
    'create_directory' => 'CreateDirectory',
    'enable_http_compression' => 'EnableHTTPCompression',
    'refresh_chart_cache' => 'RefreshChartCache',
    'sort_names' => 'SortNames',
    'validate_merged_areas' => 'ValidateMergedAreas' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;