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

package AsposeCellsCloud::Object::ImageSaveOptions;

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


__PACKAGE__->class_documentation({description => 'Represents options of saving image file.',
                                  class => 'ImageSaveOptions',
                                  required => [], # TODO
}                                 );


__PACKAGE__->method_documentation({
     'chart_image_type' => {
     	datatype => 'string',
     	base_name => 'ChartImageType',
     	description => 'Indicate the chart imagetype when converting.',
     	format => '',
     	read_only => '',
     		},
     'embeded_image_name_in_svg' => {
     	datatype => 'string',
     	base_name => 'EmbededImageNameInSvg',
     	description => 'Indicate the filename of embeded image in svg. This should be full path with directory like "c:\\xpsEmbeded"',
     	format => '',
     	read_only => '',
     		},
     'horizontal_resolution' => {
     	datatype => 'int',
     	base_name => 'HorizontalResolution',
     	description => 'Gets or sets the horizontal resolution for generated images, in dots per inch.                 Applies generating image method except Emf format images.               The default value is 96.',
     	format => '',
     	read_only => '',
     		},
     'image_format' => {
     	datatype => 'string',
     	base_name => 'ImageFormat',
     	description => 'Gets or sets the format of the generated images.  Don`t apply the method that returns a Bitmap object.             The default value is ImageFormat.Bmp.  Don`t apply the method that returns a Bitmap object.',
     	format => '',
     	read_only => '',
     		},
     'is_cell_auto_fit' => {
     	datatype => 'boolean',
     	base_name => 'IsCellAutoFit',
     	description => 'Indicates whether the width and height of the cells is automatically fitted by cell value. The default value is false.',
     	format => '',
     	read_only => '',
     		},
     'one_page_per_sheet' => {
     	datatype => 'boolean',
     	base_name => 'OnePagePerSheet',
     	description => 'If OnePagePerSheet is true , all content of one sheet will output to only                one page in result. The paper size of pagesetup will be invalid, and the                other settings of pagesetup will still take effect.',
     	format => '',
     	read_only => '',
     		},
     'only_area' => {
     	datatype => 'boolean',
     	base_name => 'OnlyArea',
     	description => 'If this property is true , onle Area will be output, and no scale will take effect.',
     	format => '',
     	read_only => '',
     		},
     'printing_page' => {
     	datatype => 'string',
     	base_name => 'PrintingPage',
     	description => 'Indicates which pages will not be printed.',
     	format => '',
     	read_only => '',
     		},
     'print_with_status_dialog' => {
     	datatype => 'boolean',
     	base_name => 'PrintWithStatusDialog',
     	description => 'If PrintWithStatusDialog = true , there will be a dialog that shows current print status.  else no such dialog will show.',
     	format => '',
     	read_only => '',
     		},
     'quality' => {
     	datatype => 'int',
     	base_name => 'Quality',
     	description => 'Gets or sets a value determining the quality of the generated images to apply only when saving pages to the Jpeg format.            Has effect only when saving to JPEG.  The value must be between 0 and 100. The default value is 100.',
     	format => '',
     	read_only => '',
     		},
     'tiff_compression' => {
     	datatype => 'string',
     	base_name => 'TiffCompression',
     	description => 'Gets or sets the type of compression to apply only when saving pages to the Tiff format.            Has effect only when saving to TIFF.  The default value is Lzw.',
     	format => '',
     	read_only => '',
     		},
     'vertical_resolution' => {
     	datatype => 'int',
     	base_name => 'VerticalResolution',
     	description => 'Gets or sets the vertical resolution for generated images, in dots per inch.            Applies generating image method except Emf format image.            The default value is 96.',
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
    'chart_image_type' => 'string',
    'embeded_image_name_in_svg' => 'string',
    'horizontal_resolution' => 'int',
    'image_format' => 'string',
    'is_cell_auto_fit' => 'boolean',
    'one_page_per_sheet' => 'boolean',
    'only_area' => 'boolean',
    'printing_page' => 'string',
    'print_with_status_dialog' => 'boolean',
    'quality' => 'int',
    'tiff_compression' => 'string',
    'vertical_resolution' => 'int',
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
    'chart_image_type' => 'ChartImageType',
    'embeded_image_name_in_svg' => 'EmbededImageNameInSvg',
    'horizontal_resolution' => 'HorizontalResolution',
    'image_format' => 'ImageFormat',
    'is_cell_auto_fit' => 'IsCellAutoFit',
    'one_page_per_sheet' => 'OnePagePerSheet',
    'only_area' => 'OnlyArea',
    'printing_page' => 'PrintingPage',
    'print_with_status_dialog' => 'PrintWithStatusDialog',
    'quality' => 'Quality',
    'tiff_compression' => 'TiffCompression',
    'vertical_resolution' => 'VerticalResolution',
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