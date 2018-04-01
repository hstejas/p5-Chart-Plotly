package Chart::Plotly::Trace::Histogram2d;
use Moose;
use MooseX::ExtraArgs;
use Moose::Util::TypeConstraints qw(enum union);
if (!defined Moose::Util::TypeConstraints::find_type_constraint('PDL')) {
    Moose::Util::TypeConstraints::type('PDL');
}

use Chart::Plotly::Trace::Histogram2d::Colorbar;
use Chart::Plotly::Trace::Histogram2d::Hoverlabel;
use Chart::Plotly::Trace::Histogram2d::Marker;
use Chart::Plotly::Trace::Histogram2d::Stream;
use Chart::Plotly::Trace::Histogram2d::Xbins;
use Chart::Plotly::Trace::Histogram2d::Ybins;


# VERSION

# ABSTRACT: The sample data from which statistics are computed is set in `x` and `y` (where `x` and `y` represent marginal distributions, binning is set in `xbins` and `ybins` in this case) or `z` (where `z` represent the 2D distribution and binning set, binning is set by `x` and `y` in this case). The resulting distribution is visualized as a heatmap.

=encoding utf-8

=head1 SYNOPSIS

# EXAMPLE: examples/traces/histogram2d.pl

=head1 DESCRIPTION

The sample data from which statistics are computed is set in `x` and `y` (where `x` and `y` represent marginal distributions, binning is set in `xbins` and `ybins` in this case) or `z` (where `z` represent the 2D distribution and binning set, binning is set by `x` and `y` in this case). The resulting distribution is visualized as a heatmap.

Screenshot of the above example:

=begin HTML

<p>
<img src="https://raw.githubusercontent.com/pablrod/p5-Chart-Plotly/master/examples/traces/histogram2d.png" alt="Screenshot of the above example">
</p>

=end HTML

=begin markdown

![Screenshot of the above example](https://raw.githubusercontent.com/pablrod/p5-Chart-Plotly/master/examples/traces/histogram2d.png)

=end markdown

=begin HTML

<p>
<iframe src="https://raw.githubusercontent.com/pablrod/p5-Chart-Plotly/master/examples/traces/histogram2d.html" style="border:none;" width="80%" height="520"></iframe>
</p>

=end HTML

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#histogram2d>

=head1 DISCLAIMER

This is an unofficial Plotly Perl module. Currently I'm not affiliated in any way with Plotly. 
But I think plotly.js is a great library and I want to use it with perl.

=head1 METHODS

=cut

=head2 TO_JSON

Serialize the trace to JSON. This method should be called only by L<JSON> serializer.

=cut

sub TO_JSON {
    my $self = shift; 
    my $extra_args = $self->extra_args // {};
    my $meta = $self->meta;
    my %hash = %$self;
    for my $name (sort keys %hash) {
        my $attr = $meta->get_attribute($name);
        if (defined $attr) {
            my $value = $hash{$name};
            my $type = $attr->type_constraint;
            if ($type && $type->equals('Bool')) {
                $hash{$name} = $value ? \1 : \ 0;
            }
        }
    }
    %hash = (%hash, %$extra_args);
    delete $hash{'extra_args'};
    if ($self->can('type') && (!defined $hash{'type'})) {
        $hash{type} = $self->type();
    }
    return \%hash;
}

=head2 type

Trace type.

=cut

sub type {
	my @components = split(/::/, __PACKAGE__);
	return lc($components[-1]);
}

=head1 ATTRIBUTES

=over

=cut

=item * autobinx

Determines whether or not the x axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in xbins.

=cut

has autobinx => (
    is => "rw",
    isa => "Bool",
    documentation => "Determines whether or not the x axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in xbins.",
);

=item * autobiny

Determines whether or not the y axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in ybins.

=cut

has autobiny => (
    is => "rw",
    isa => "Bool",
    documentation => "Determines whether or not the y axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in ybins.",
);

=item * autocolorscale

Determines whether or not the colorscale is picked using the sign of the input z values.

=cut

has autocolorscale => (
    is => "rw",
    isa => "Bool",
    documentation => "Determines whether or not the colorscale is picked using the sign of the input z values.",
);

=item * colorbar


=cut

has colorbar => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Histogram2d::Colorbar",
);

=item * colorscale

Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)', [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in z space, use zmin and zmax

=cut

has colorscale => (
    is => "rw",
    documentation => "Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)', [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in z space, use zmin and zmax",
);

=item * customdata

Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements

=cut

has customdata => (
    is => "rw",
    isa => "ArrayRef|PDL",
    documentation => "Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements",
);

=item * customdatasrc

Sets the source reference on plot.ly for  customdata .

=cut

has customdatasrc => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the source reference on plot.ly for  customdata .",
);

=item * histfunc

Specifies the binning function used for this histogram trace. If *count*, the histogram values are computed by counting the number of values lying inside each bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the average, the minimum or the maximum of the values lying inside each bin respectively.

=cut

has histfunc => (
    is => "rw",
    isa => enum(["count","sum","avg","min","max"]),
    documentation => "Specifies the binning function used for this histogram trace. If *count*, the histogram values are computed by counting the number of values lying inside each bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the average, the minimum or the maximum of the values lying inside each bin respectively.",
);

=item * histnorm

Specifies the type of normalization used for this histogram trace. If **, the span of each bar corresponds to the number of occurrences (i.e. the number of data points lying inside the bins). If *percent* / *probability*, the span of each bar corresponds to the percentage / fraction of occurrences with respect to the total number of sample points (here, the sum of all bin HEIGHTS equals 100% / 1). If *density*, the span of each bar corresponds to the number of occurrences in a bin divided by the size of the bin interval (here, the sum of all bin AREAS equals the total number of sample points). If *probability density*, the area of each bar corresponds to the probability that an event will fall into the corresponding bin (here, the sum of all bin AREAS equals 1).

=cut

has histnorm => (
    is => "rw",
    isa => enum(["","percent","probability","density","probability density"]),
    documentation => "Specifies the type of normalization used for this histogram trace. If **, the span of each bar corresponds to the number of occurrences (i.e. the number of data points lying inside the bins). If *percent* / *probability*, the span of each bar corresponds to the percentage / fraction of occurrences with respect to the total number of sample points (here, the sum of all bin HEIGHTS equals 100% / 1). If *density*, the span of each bar corresponds to the number of occurrences in a bin divided by the size of the bin interval (here, the sum of all bin AREAS equals the total number of sample points). If *probability density*, the area of each bar corresponds to the probability that an event will fall into the corresponding bin (here, the sum of all bin AREAS equals 1).",
);

=item * hoverinfo

Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.

=cut

has hoverinfo => (
    is => "rw",
    isa => "Maybe[ArrayRef]",
    documentation => "Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.",
);

=item * hoverinfosrc

Sets the source reference on plot.ly for  hoverinfo .

=cut

has hoverinfosrc => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the source reference on plot.ly for  hoverinfo .",
);

=item * hoverlabel


=cut

has hoverlabel => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Histogram2d::Hoverlabel",
);

=item * ids

Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.

=cut

has ids => (
    is => "rw",
    isa => "ArrayRef|PDL",
    documentation => "Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.",
);

=item * idssrc

Sets the source reference on plot.ly for  ids .

=cut

has idssrc => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the source reference on plot.ly for  ids .",
);

=item * legendgroup

Sets the legend group for this trace. Traces part of the same legend group hide/show at the same time when toggling legend items.

=cut

has legendgroup => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the legend group for this trace. Traces part of the same legend group hide/show at the same time when toggling legend items.",
);

=item * marker


=cut

has marker => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Histogram2d::Marker",
);

=item * name

Sets the trace name. The trace name appear as the legend item and on hover.

=cut

has name => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the trace name. The trace name appear as the legend item and on hover.",
);

=item * nbinsx

Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.

=cut

has nbinsx => (
    is => "rw",
    isa => "Int",
    documentation => "Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.",
);

=item * nbinsy

Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.

=cut

has nbinsy => (
    is => "rw",
    isa => "Int",
    documentation => "Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.",
);

=item * opacity

Sets the opacity of the trace.

=cut

has opacity => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the opacity of the trace.",
);

=item * reversescale

Reverses the colorscale.

=cut

has reversescale => (
    is => "rw",
    isa => "Bool",
    documentation => "Reverses the colorscale.",
);

=item * selectedpoints

Array containing integer indices of selected points. Has an effect only for traces that support selections. Note that an empty array means an empty selection where the `unselected` are turned on for all points, whereas, any other non-array values means no selection all where the `selected` and `unselected` styles have no effect.

=cut

has selectedpoints => (
    is => "rw",
    isa => "Any",
    documentation => "Array containing integer indices of selected points. Has an effect only for traces that support selections. Note that an empty array means an empty selection where the `unselected` are turned on for all points, whereas, any other non-array values means no selection all where the `selected` and `unselected` styles have no effect.",
);

=item * showlegend

Determines whether or not an item corresponding to this trace is shown in the legend.

=cut

has showlegend => (
    is => "rw",
    isa => "Bool",
    documentation => "Determines whether or not an item corresponding to this trace is shown in the legend.",
);

=item * showscale

Determines whether or not a colorbar is displayed for this trace.

=cut

has showscale => (
    is => "rw",
    isa => "Bool",
    documentation => "Determines whether or not a colorbar is displayed for this trace.",
);

=item * stream


=cut

has stream => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Histogram2d::Stream",
);

=item * uid


=cut

has uid => (
    is => "rw",
    isa => "Str",
);

=item * visible

Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).

=cut

has visible => (
    is => "rw",
    documentation => "Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).",
);

=item * x

Sets the sample data to be binned on the x axis.

=cut

has x => (
    is => "rw",
    isa => "ArrayRef|PDL",
    documentation => "Sets the sample data to be binned on the x axis.",
);

=item * xaxis

Sets a reference between this trace's x coordinates and a 2D cartesian x axis. If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x coordinates refer to `layout.xaxis2`, and so on.

=cut

has xaxis => (
    is => "rw",
    documentation => "Sets a reference between this trace's x coordinates and a 2D cartesian x axis. If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x coordinates refer to `layout.xaxis2`, and so on.",
);

=item * xbins


=cut

has xbins => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Histogram2d::Xbins",
);

=item * xcalendar

Sets the calendar system to use with `x` date data.

=cut

has xcalendar => (
    is => "rw",
    isa => enum(["gregorian","chinese","coptic","discworld","ethiopian","hebrew","islamic","julian","mayan","nanakshahi","nepali","persian","jalali","taiwan","thai","ummalqura"]),
    documentation => "Sets the calendar system to use with `x` date data.",
);

=item * xgap

Sets the horizontal gap (in pixels) between bricks.

=cut

has xgap => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the horizontal gap (in pixels) between bricks.",
);

=item * xsrc

Sets the source reference on plot.ly for  x .

=cut

has xsrc => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the source reference on plot.ly for  x .",
);

=item * y

Sets the sample data to be binned on the y axis.

=cut

has y => (
    is => "rw",
    isa => "ArrayRef|PDL",
    documentation => "Sets the sample data to be binned on the y axis.",
);

=item * yaxis

Sets a reference between this trace's y coordinates and a 2D cartesian y axis. If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y coordinates refer to `layout.xaxis2`, and so on.

=cut

has yaxis => (
    is => "rw",
    documentation => "Sets a reference between this trace's y coordinates and a 2D cartesian y axis. If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y coordinates refer to `layout.xaxis2`, and so on.",
);

=item * ybins


=cut

has ybins => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Histogram2d::Ybins",
);

=item * ycalendar

Sets the calendar system to use with `y` date data.

=cut

has ycalendar => (
    is => "rw",
    isa => enum(["gregorian","chinese","coptic","discworld","ethiopian","hebrew","islamic","julian","mayan","nanakshahi","nepali","persian","jalali","taiwan","thai","ummalqura"]),
    documentation => "Sets the calendar system to use with `y` date data.",
);

=item * ygap

Sets the vertical gap (in pixels) between bricks.

=cut

has ygap => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the vertical gap (in pixels) between bricks.",
);

=item * ysrc

Sets the source reference on plot.ly for  y .

=cut

has ysrc => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the source reference on plot.ly for  y .",
);

=item * z

Sets the aggregation data.

=cut

has z => (
    is => "rw",
    isa => "ArrayRef|PDL",
    documentation => "Sets the aggregation data.",
);

=item * zauto

Determines the whether or not the color domain is computed with respect to the input data.

=cut

has zauto => (
    is => "rw",
    isa => "Bool",
    documentation => "Determines the whether or not the color domain is computed with respect to the input data.",
);

=item * zhoverformat

Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. See: https://github.com/d3/d3-format/blob/master/README.md#locale_format

=cut

has zhoverformat => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. See: https://github.com/d3/d3-format/blob/master/README.md#locale_format",
);

=item * zmax

Sets the upper bound of color domain.

=cut

has zmax => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the upper bound of color domain.",
);

=item * zmin

Sets the lower bound of color domain.

=cut

has zmin => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the lower bound of color domain.",
);

=item * zsmooth

Picks a smoothing algorithm use to smooth `z` data.

=cut

has zsmooth => (
    is => "rw",
    documentation => "Picks a smoothing algorithm use to smooth `z` data.",
);

=item * zsrc

Sets the source reference on plot.ly for  z .

=cut

has zsrc => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the source reference on plot.ly for  z .",
);

=pod

=back

=cut


__PACKAGE__->meta->make_immutable();
1;
