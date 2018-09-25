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
package AsposeCellsCloud::Object::Line;

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

use AsposeCellsCloud::Object::Color;
use AsposeCellsCloud::Object::GradientFill;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

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



__PACKAGE__->class_documentation({description => '',
                                  class => 'Line',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'style' => {
    	datatype => 'string',
    	base_name => 'Style',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'is_auto' => {
    	datatype => 'boolean',
    	base_name => 'IsAuto',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'begin_arrow_length' => {
    	datatype => 'string',
    	base_name => 'BeginArrowLength',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'weight' => {
    	datatype => 'string',
    	base_name => 'Weight',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'gradient_fill' => {
    	datatype => 'GradientFill',
    	base_name => 'GradientFill',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'color' => {
    	datatype => 'Color',
    	base_name => 'Color',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'compound_type' => {
    	datatype => 'string',
    	base_name => 'CompoundType',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'weight_pt' => {
    	datatype => 'double',
    	base_name => 'WeightPt',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'is_visible' => {
    	datatype => 'boolean',
    	base_name => 'IsVisible',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'join_type' => {
    	datatype => 'string',
    	base_name => 'JoinType',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'end_arrow_length' => {
    	datatype => 'string',
    	base_name => 'EndArrowLength',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'is_automatic_color' => {
    	datatype => 'boolean',
    	base_name => 'IsAutomaticColor',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'dash_type' => {
    	datatype => 'string',
    	base_name => 'DashType',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'begin_type' => {
    	datatype => 'string',
    	base_name => 'BeginType',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'cap_type' => {
    	datatype => 'string',
    	base_name => 'CapType',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'end_type' => {
    	datatype => 'string',
    	base_name => 'EndType',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'begin_arrow_width' => {
    	datatype => 'string',
    	base_name => 'BeginArrowWidth',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'end_arrow_width' => {
    	datatype => 'string',
    	base_name => 'EndArrowWidth',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'transparency' => {
    	datatype => 'double',
    	base_name => 'Transparency',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'style' => 'string',
    'is_auto' => 'boolean',
    'begin_arrow_length' => 'string',
    'weight' => 'string',
    'gradient_fill' => 'GradientFill',
    'color' => 'Color',
    'compound_type' => 'string',
    'weight_pt' => 'double',
    'is_visible' => 'boolean',
    'join_type' => 'string',
    'end_arrow_length' => 'string',
    'is_automatic_color' => 'boolean',
    'dash_type' => 'string',
    'begin_type' => 'string',
    'cap_type' => 'string',
    'end_type' => 'string',
    'begin_arrow_width' => 'string',
    'end_arrow_width' => 'string',
    'transparency' => 'double'
} );

__PACKAGE__->attribute_map( {
    'style' => 'Style',
    'is_auto' => 'IsAuto',
    'begin_arrow_length' => 'BeginArrowLength',
    'weight' => 'Weight',
    'gradient_fill' => 'GradientFill',
    'color' => 'Color',
    'compound_type' => 'CompoundType',
    'weight_pt' => 'WeightPt',
    'is_visible' => 'IsVisible',
    'join_type' => 'JoinType',
    'end_arrow_length' => 'EndArrowLength',
    'is_automatic_color' => 'IsAutomaticColor',
    'dash_type' => 'DashType',
    'begin_type' => 'BeginType',
    'cap_type' => 'CapType',
    'end_type' => 'EndType',
    'begin_arrow_width' => 'BeginArrowWidth',
    'end_arrow_width' => 'EndArrowWidth',
    'transparency' => 'Transparency'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
