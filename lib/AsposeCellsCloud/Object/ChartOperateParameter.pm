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

package AsposeCellsCloud::Object::ChartOperateParameter;

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
use AsposeCellsCloud::Object::OperateParameter; 


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


__PACKAGE__->class_documentation({description => 'Represents chart operate parameter.',
                                  class => 'ChartOperateParameter',
                                  required => [], # TODO
}                                 );


__PACKAGE__->method_documentation({
     'chart_index' => {
     	datatype => 'int',
     	base_name => 'ChartIndex',
     	description => 'Represents chart index.',
     	format => '',
     	read_only => '',
     		},
     'chart_type' => {
     	datatype => 'string',
     	base_name => 'ChartType',
     	description => 'Represents chart type.',
     	format => '',
     	read_only => '',
     		},
     'upper_left_row' => {
     	datatype => 'int',
     	base_name => 'UpperLeftRow',
     	description => 'Represents upper left row index of chart.',
     	format => '',
     	read_only => '',
     		},
     'upper_left_column' => {
     	datatype => 'int',
     	base_name => 'UpperLeftColumn',
     	description => 'Represents upper left column index of chart.',
     	format => '',
     	read_only => '',
     		},
     'lower_right_row' => {
     	datatype => 'int',
     	base_name => 'LowerRightRow',
     	description => 'Represents lower right row index of chart.',
     	format => '',
     	read_only => '',
     		},
     'lower_right_column' => {
     	datatype => 'int',
     	base_name => 'LowerRightColumn',
     	description => 'Represents lower right column index of chart.',
     	format => '',
     	read_only => '',
     		},
     'area' => {
     	datatype => 'string',
     	base_name => 'Area',
     	description => 'Represents chart area.',
     	format => '',
     	read_only => '',
     		},
     'is_vertical' => {
     	datatype => 'boolean',
     	base_name => 'IsVertical',
     	description => 'Represents whether to plot the series from a range of cell values by row or by column.',
     	format => '',
     	read_only => '',
     		},
     'category_data' => {
     	datatype => 'string',
     	base_name => 'CategoryData',
     	description => 'Represents chart category data.',
     	format => '',
     	read_only => '',
     		},
     'is_auto_get_serial_name' => {
     	datatype => 'boolean',
     	base_name => 'IsAutoGetSerialName',
     	description => 'Represents whether auto get serial name.',
     	format => '',
     	read_only => '',
     		},
     'title' => {
     	datatype => 'string',
     	base_name => 'Title',
     	description => 'Represents chart title.',
     	format => '',
     	read_only => '',
     		},
     'operate_type' => {
     	datatype => 'string',
     	base_name => 'OperateType',
     	description => '',
     	format => '',
     	read_only => '',
     		},    
});

__PACKAGE__->swagger_types( {
    'chart_index' => 'int',
    'chart_type' => 'string',
    'upper_left_row' => 'int',
    'upper_left_column' => 'int',
    'lower_right_row' => 'int',
    'lower_right_column' => 'int',
    'area' => 'string',
    'is_vertical' => 'boolean',
    'category_data' => 'string',
    'is_auto_get_serial_name' => 'boolean',
    'title' => 'string',
    'operate_type' => 'string' 
} );

__PACKAGE__->attribute_map( {
    'chart_index' => 'ChartIndex',
    'chart_type' => 'ChartType',
    'upper_left_row' => 'UpperLeftRow',
    'upper_left_column' => 'UpperLeftColumn',
    'lower_right_row' => 'LowerRightRow',
    'lower_right_column' => 'LowerRightColumn',
    'area' => 'Area',
    'is_vertical' => 'IsVertical',
    'category_data' => 'CategoryData',
    'is_auto_get_serial_name' => 'IsAutoGetSerialName',
    'title' => 'Title',
    'operate_type' => 'OperateType' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;