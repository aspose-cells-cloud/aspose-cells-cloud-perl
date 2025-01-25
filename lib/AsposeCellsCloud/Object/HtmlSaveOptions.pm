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

package AsposeCellsCloud::Object::HtmlSaveOptions;

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
use AsposeCellsCloud::Object::ImageOrPrintOptions;
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


__PACKAGE__->class_documentation({description => 'Represents options of saving .html file.',
                                  class => 'HtmlSaveOptions',
                                  required => [], # TODO
}                                 );


__PACKAGE__->method_documentation({
     'export_page_headers' => {
     	datatype => 'boolean',
     	base_name => 'ExportPageHeaders',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'export_page_footers' => {
     	datatype => 'boolean',
     	base_name => 'ExportPageFooters',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'export_row_column_headings' => {
     	datatype => 'boolean',
     	base_name => 'ExportRowColumnHeadings',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'show_all_sheets' => {
     	datatype => 'boolean',
     	base_name => 'ShowAllSheets',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'image_options' => {
     	datatype => 'ImageOrPrintOptions',
     	base_name => 'ImageOptions',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'save_as_single_file' => {
     	datatype => 'boolean',
     	base_name => 'SaveAsSingleFile',
     	description => 'Indicates whether save the html as single file. The default value is false.',
     	format => '',
     	read_only => '',
     		},
     'export_hidden_worksheet' => {
     	datatype => 'boolean',
     	base_name => 'ExportHiddenWorksheet',
     	description => 'Indicates whether save the html as single file. The default value is false.',
     	format => '',
     	read_only => '',
     		},
     'export_grid_lines' => {
     	datatype => 'boolean',
     	base_name => 'ExportGridLines',
     	description => 'Indicating whether exporting the gridlines.The default value is false.',
     	format => '',
     	read_only => '',
     		},
     'presentation_preference' => {
     	datatype => 'boolean',
     	base_name => 'PresentationPreference',
     	description => 'Indicating if html or mht file is presentation preference.The default value is             false.if you want to get more beautiful presentation,please set the value to                true.',
     	format => '',
     	read_only => '',
     		},
     'cell_css_prefix' => {
     	datatype => 'string',
     	base_name => 'CellCssPrefix',
     	description => 'Gets and sets the prefix of the css name,the default value is "".',
     	format => '',
     	read_only => '',
     		},
     'table_css_id' => {
     	datatype => 'string',
     	base_name => 'TableCssId',
     	description => 'Gets and sets the prefix of the type css name such as tr,col,td and so on, they                are contained in the table element which has the specific TableCssId attribute.                The default value is "".',
     	format => '',
     	read_only => '',
     		},
     'is_full_path_link' => {
     	datatype => 'boolean',
     	base_name => 'IsFullPathLink',
     	description => 'Indicating whether using full path link in sheet00x.htm,filelist.xml and tabstrip.htm.                The default value is false.',
     	format => '',
     	read_only => '',
     		},
     'export_worksheet_css_separately' => {
     	datatype => 'boolean',
     	base_name => 'ExportWorksheetCSSSeparately',
     	description => 'Indicating whether export the worksheet css separately.The default value is false.',
     	format => '',
     	read_only => '',
     		},
     'export_similar_border_style' => {
     	datatype => 'boolean',
     	base_name => 'ExportSimilarBorderStyle',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'merge_empty_td_forcely' => {
     	datatype => 'boolean',
     	base_name => 'MergeEmptyTdForcely',
     	description => 'Indicates whether merging empty TD element forcely when exporting file to html.                The size of html file will be reduced significantly after setting value to true.                The default value is false. If you want to import the html file to excel or export                perfect grid lines when saving file to html, please keep the default value.',
     	format => '',
     	read_only => '',
     		},
     'export_cell_coordinate' => {
     	datatype => 'boolean',
     	base_name => 'ExportCellCoordinate',
     	description => 'Indicates whether exporting excel coordinate of nonblank cells when saving file                to html. The default value is false. If you want to import the output html to                excel, please keep the default value.',
     	format => '',
     	read_only => '',
     		},
     'export_extra_headings' => {
     	datatype => 'boolean',
     	base_name => 'ExportExtraHeadings',
     	description => 'Indicates whether exporting extra headings when the length of text is longer                than max display column. The default value is false. If you want to import the                html file to excel, please keep the default value.',
     	format => '',
     	read_only => '',
     		},
     'export_headings' => {
     	datatype => 'boolean',
     	base_name => 'ExportHeadings',
     	description => 'Indicates whether exporting headings when saving file to html.The default value                is false. If you want to import the html file to excel, please keep the default                value.',
     	format => '',
     	read_only => '',
     		},
     'export_formula' => {
     	datatype => 'boolean',
     	base_name => 'ExportFormula',
     	description => 'Indicates whether exporting formula when saving file to html. The default value                is true. If you want to import the output html to excel, please keep the default                value',
     	format => '',
     	read_only => '',
     		},
     'add_tooltip_text' => {
     	datatype => 'boolean',
     	base_name => 'AddTooltipText',
     	description => 'Indicates whether adding tooltip text when the data can`t be fully displayed.',
     	format => '',
     	read_only => '',
     		},
     'export_bogus_row_data' => {
     	datatype => 'boolean',
     	base_name => 'ExportBogusRowData',
     	description => 'Indicating whether exporting bogus bottom row data. The default value is true.If you want to import the html or mht file to excel, please keep the default value.',
     	format => '',
     	read_only => '',
     		},
     'exclude_unused_styles' => {
     	datatype => 'boolean',
     	base_name => 'ExcludeUnusedStyles',
     	description => 'Indicating whether excluding unused styles.The default value is false.If you  want to import the html or mht file to excel, please keep the default value.',
     	format => '',
     	read_only => '',
     		},
     'export_document_properties' => {
     	datatype => 'boolean',
     	base_name => 'ExportDocumentProperties',
     	description => 'Indicating whether exporting document properties.The default value is true.If  you want to import the html or mht file to excel, please keep the default value.',
     	format => '',
     	read_only => '',
     		},
     'export_worksheet_properties' => {
     	datatype => 'boolean',
     	base_name => 'ExportWorksheetProperties',
     	description => 'Indicating whether exporting worksheet properties.The default value is true.If  you want to import the html or mht file to excel, please keep the default value.',
     	format => '',
     	read_only => '',
     		},
     'export_workbook_properties' => {
     	datatype => 'boolean',
     	base_name => 'ExportWorkbookProperties',
     	description => 'Indicating whether exporting workbook properties.The default value is true.If  you want to import the html or mht file to excel, please keep the default value.',
     	format => '',
     	read_only => '',
     		},
     'export_frame_scripts_and_properties' => {
     	datatype => 'boolean',
     	base_name => 'ExportFrameScriptsAndProperties',
     	description => 'Indicating whether exporting frame scripts and document properties. The default  value is true.If you want to import the html or mht file to excel, please keep the default value.',
     	format => '',
     	read_only => '',
     		},
     'attached_files_directory' => {
     	datatype => 'string',
     	base_name => 'AttachedFilesDirectory',
     	description => 'The directory that the attached files will be saved to.  Only for saving to html stream.',
     	format => '',
     	read_only => '',
     		},
     'attached_files_url_prefix' => {
     	datatype => 'string',
     	base_name => 'AttachedFilesUrlPrefix',
     	description => 'Specify the Url prefix of attached files such as image in the html file. Only for saving to html stream.',
     	format => '',
     	read_only => '',
     		},
     'encoding' => {
     	datatype => 'string',
     	base_name => 'Encoding',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'export_active_worksheet_only' => {
     	datatype => 'boolean',
     	base_name => 'ExportActiveWorksheetOnly',
     	description => 'Indicates if exporting the whole workbook to html file.',
     	format => '',
     	read_only => '',
     		},
     'export_chart_image_format' => {
     	datatype => 'string',
     	base_name => 'ExportChartImageFormat',
     	description => 'Get or set the format of chart image before exporting',
     	format => '',
     	read_only => '',
     		},
     'export_images_as_base64' => {
     	datatype => 'boolean',
     	base_name => 'ExportImagesAsBase64',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'hidden_col_display_type' => {
     	datatype => 'string',
     	base_name => 'HiddenColDisplayType',
     	description => 'Hidden column(the width of this column is 0) in excel,before save this into               html format, if HtmlHiddenColDisplayType is "Remove",the hidden column would               ont been output, if the value is "Hidden", the column would been output,but was hidden,the default value is "Hidden"',
     	format => '',
     	read_only => '',
     		},
     'hidden_row_display_type' => {
     	datatype => 'string',
     	base_name => 'HiddenRowDisplayType',
     	description => 'Hidden row(the height of this row is 0) in excel,before save this into html               format, if HtmlHiddenRowDisplayType is "Remove",the hidden row would ont               been output, if the value is "Hidden", the row would been output,but was               hidden,the default value is "Hidden"',
     	format => '',
     	read_only => '',
     		},
     'html_cross_string_type' => {
     	datatype => 'string',
     	base_name => 'HtmlCrossStringType',
     	description => 'Indicates if a cross-cell string will be displayed in the same way as MS               Excel when saving an Excel file in html format.  By default the value is               Default, so, for cross-cell strings, there is little difference between the               html files created by Aspose.Cells and MS Excel. But the performance for               creating large html files,setting the value to Cross would be several times               faster than setting it to Default or Fit2Cell.',
     	format => '',
     	read_only => '',
     		},
     'is_exp_image_to_temp_dir' => {
     	datatype => 'boolean',
     	base_name => 'IsExpImageToTempDir',
     	description => 'Indicates if export image files to temp directory.  Only for saving to html  stream.',
     	format => '',
     	read_only => '',
     		},
     'page_title' => {
     	datatype => 'string',
     	base_name => 'PageTitle',
     	description => 'The title of the html page.  Only for saving to html stream.',
     	format => '',
     	read_only => '',
     		},
     'parse_html_tag_in_cell' => {
     	datatype => 'boolean',
     	base_name => 'ParseHtmlTagInCell',
     	description => 'Parse html tag in cell,like ,as cell value,or as html tag,default is true',
     	format => '',
     	read_only => '',
     		},
     'cell_name_attribute' => {
     	datatype => 'string',
     	base_name => 'CellNameAttribute',
     	description => '',
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
    'export_page_headers' => 'boolean',
    'export_page_footers' => 'boolean',
    'export_row_column_headings' => 'boolean',
    'show_all_sheets' => 'boolean',
    'image_options' => 'ImageOrPrintOptions',
    'save_as_single_file' => 'boolean',
    'export_hidden_worksheet' => 'boolean',
    'export_grid_lines' => 'boolean',
    'presentation_preference' => 'boolean',
    'cell_css_prefix' => 'string',
    'table_css_id' => 'string',
    'is_full_path_link' => 'boolean',
    'export_worksheet_css_separately' => 'boolean',
    'export_similar_border_style' => 'boolean',
    'merge_empty_td_forcely' => 'boolean',
    'export_cell_coordinate' => 'boolean',
    'export_extra_headings' => 'boolean',
    'export_headings' => 'boolean',
    'export_formula' => 'boolean',
    'add_tooltip_text' => 'boolean',
    'export_bogus_row_data' => 'boolean',
    'exclude_unused_styles' => 'boolean',
    'export_document_properties' => 'boolean',
    'export_worksheet_properties' => 'boolean',
    'export_workbook_properties' => 'boolean',
    'export_frame_scripts_and_properties' => 'boolean',
    'attached_files_directory' => 'string',
    'attached_files_url_prefix' => 'string',
    'encoding' => 'string',
    'export_active_worksheet_only' => 'boolean',
    'export_chart_image_format' => 'string',
    'export_images_as_base64' => 'boolean',
    'hidden_col_display_type' => 'string',
    'hidden_row_display_type' => 'string',
    'html_cross_string_type' => 'string',
    'is_exp_image_to_temp_dir' => 'boolean',
    'page_title' => 'string',
    'parse_html_tag_in_cell' => 'boolean',
    'cell_name_attribute' => 'string',
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
    'export_page_headers' => 'ExportPageHeaders',
    'export_page_footers' => 'ExportPageFooters',
    'export_row_column_headings' => 'ExportRowColumnHeadings',
    'show_all_sheets' => 'ShowAllSheets',
    'image_options' => 'ImageOptions',
    'save_as_single_file' => 'SaveAsSingleFile',
    'export_hidden_worksheet' => 'ExportHiddenWorksheet',
    'export_grid_lines' => 'ExportGridLines',
    'presentation_preference' => 'PresentationPreference',
    'cell_css_prefix' => 'CellCssPrefix',
    'table_css_id' => 'TableCssId',
    'is_full_path_link' => 'IsFullPathLink',
    'export_worksheet_css_separately' => 'ExportWorksheetCSSSeparately',
    'export_similar_border_style' => 'ExportSimilarBorderStyle',
    'merge_empty_td_forcely' => 'MergeEmptyTdForcely',
    'export_cell_coordinate' => 'ExportCellCoordinate',
    'export_extra_headings' => 'ExportExtraHeadings',
    'export_headings' => 'ExportHeadings',
    'export_formula' => 'ExportFormula',
    'add_tooltip_text' => 'AddTooltipText',
    'export_bogus_row_data' => 'ExportBogusRowData',
    'exclude_unused_styles' => 'ExcludeUnusedStyles',
    'export_document_properties' => 'ExportDocumentProperties',
    'export_worksheet_properties' => 'ExportWorksheetProperties',
    'export_workbook_properties' => 'ExportWorkbookProperties',
    'export_frame_scripts_and_properties' => 'ExportFrameScriptsAndProperties',
    'attached_files_directory' => 'AttachedFilesDirectory',
    'attached_files_url_prefix' => 'AttachedFilesUrlPrefix',
    'encoding' => 'Encoding',
    'export_active_worksheet_only' => 'ExportActiveWorksheetOnly',
    'export_chart_image_format' => 'ExportChartImageFormat',
    'export_images_as_base64' => 'ExportImagesAsBase64',
    'hidden_col_display_type' => 'HiddenColDisplayType',
    'hidden_row_display_type' => 'HiddenRowDisplayType',
    'html_cross_string_type' => 'HtmlCrossStringType',
    'is_exp_image_to_temp_dir' => 'IsExpImageToTempDir',
    'page_title' => 'PageTitle',
    'parse_html_tag_in_cell' => 'ParseHtmlTagInCell',
    'cell_name_attribute' => 'CellNameAttribute',
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