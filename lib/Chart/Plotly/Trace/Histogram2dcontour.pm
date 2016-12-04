package Chart::Plotly::Trace::Histogram2dcontour;
use Moose;

# VERSION

=encoding utf-8

=head1 NAME 

Chart::Plotly::Trace::Histogram2dcontour

=head1 SYNOPSIS

	use HTML::Show;
	use Chart::Plotly;
	use Chart::Plotly::Trace::Histogram2dcontour;
	my $histogram2dcontour = Chart::Plotly::Trace::Histogram2dcontour->new(x => [1 .. 5], y => [1 .. 5]);
	
	HTML::Show::show(Chart::Plotly::render_full_html(data => [$histogram2dcontour]));


=head1 DESCRIPTION

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#histogram2dcontour>

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
	my %hash = %$self; 
	$hash{type} = $self->type();
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
    is => 'rw',
    documentation => "Determines whether or not the x axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in xbins.",
);

=item * autobiny

Determines whether or not the y axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in ybins.

=cut

has autobiny => (
    is => 'rw',
    documentation => "Determines whether or not the y axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in ybins.",
);

=item * autocolorscale

Determines whether or not the colorscale is picked using the sign of the input z values.

=cut

has autocolorscale => (
    is => 'rw',
    documentation => "Determines whether or not the colorscale is picked using the sign of the input z values.",
);

=item * autocontour

Determines whether or not the contour level attributes are picked by an algorithm. If *true*, the number of contour levels can be set in `ncontours`. If *false*, set the contour level attributes in `contours`.

=cut

has autocontour => (
    is => 'rw',
    documentation => "Determines whether or not the contour level attributes are picked by an algorithm. If *true*, the number of contour levels can be set in `ncontours`. If *false*, set the contour level attributes in `contours`.",
);

=item * colorbar


=cut

has colorbar => (
    is => 'rw',
);

=item * colorscale

Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)', [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in z space, use zmin and zmax

=cut

has colorscale => (
    is => 'rw',
    documentation => "Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)', [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in z space, use zmin and zmax",
);

=item * contours


=cut

has contours => (
    is => 'rw',
);

=item * histfunc

Specifies the binning function used for this histogram trace. If *count*, the histogram values are computed by counting the number of values lying inside each bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the average, the minimum or the maximum of the values lying inside each bin respectively.

=cut

has histfunc => (
    is => 'rw',
    documentation => "Specifies the binning function used for this histogram trace. If *count*, the histogram values are computed by counting the number of values lying inside each bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the average, the minimum or the maximum of the values lying inside each bin respectively.",
);

=item * histnorm

Specifies the type of normalization used for this histogram trace. If **, the span of each bar corresponds to the number of occurrences (i.e. the number of data points lying inside the bins). If *percent*, the span of each bar corresponds to the percentage of occurrences with respect to the total number of sample points (here, the sum of all bin area equals 100%). If *density*, the span of each bar corresponds to the number of occurrences in a bin divided by the size of the bin interval (here, the sum of all bin area equals the total number of sample points). If *probability density*, the span of each bar corresponds to the probability that an event will fall into the corresponding bin (here, the sum of all bin area equals 1).

=cut

has histnorm => (
    is => 'rw',
    documentation => "Specifies the type of normalization used for this histogram trace. If **, the span of each bar corresponds to the number of occurrences (i.e. the number of data points lying inside the bins). If *percent*, the span of each bar corresponds to the percentage of occurrences with respect to the total number of sample points (here, the sum of all bin area equals 100%). If *density*, the span of each bar corresponds to the number of occurrences in a bin divided by the size of the bin interval (here, the sum of all bin area equals the total number of sample points). If *probability density*, the span of each bar corresponds to the probability that an event will fall into the corresponding bin (here, the sum of all bin area equals 1).",
);

=item * line


=cut

has line => (
    is => 'rw',
);

=item * marker


=cut

has marker => (
    is => 'rw',
);

=item * nbinsx

Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.

=cut

has nbinsx => (
    is => 'rw',
    documentation => "Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.",
);

=item * nbinsy

Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.

=cut

has nbinsy => (
    is => 'rw',
    documentation => "Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.",
);

=item * ncontours

Sets the maximum number of contour levels. The actual number of contours will be chosen automatically to be less than or equal to the value of `ncontours`. Has an effect only if `autocontour` is *true*.

=cut

has ncontours => (
    is => 'rw',
    documentation => "Sets the maximum number of contour levels. The actual number of contours will be chosen automatically to be less than or equal to the value of `ncontours`. Has an effect only if `autocontour` is *true*.",
);

=item * reversescale

Reverses the colorscale.

=cut

has reversescale => (
    is => 'rw',
    documentation => "Reverses the colorscale.",
);

=item * showscale

Determines whether or not a colorbar is displayed for this trace.

=cut

has showscale => (
    is => 'rw',
    documentation => "Determines whether or not a colorbar is displayed for this trace.",
);

=item * x

Sets the sample data to be binned on the x axis.

=cut

has x => (
    is => 'rw',
    documentation => "Sets the sample data to be binned on the x axis.",
);

=item * xbins


=cut

has xbins => (
    is => 'rw',
);

=item * y

Sets the sample data to be binned on the y axis.

=cut

has y => (
    is => 'rw',
    documentation => "Sets the sample data to be binned on the y axis.",
);

=item * ybins


=cut

has ybins => (
    is => 'rw',
);

=item * z

Sets the aggregation data.

=cut

has z => (
    is => 'rw',
    documentation => "Sets the aggregation data.",
);

=item * zauto

Determines the whether or not the color domain is computed with respect to the input data.

=cut

has zauto => (
    is => 'rw',
    documentation => "Determines the whether or not the color domain is computed with respect to the input data.",
);

=item * zmax

Sets the upper bound of color domain.

=cut

has zmax => (
    is => 'rw',
    documentation => "Sets the upper bound of color domain.",
);

=item * zmin

Sets the lower bound of color domain.

=cut

has zmin => (
    is => 'rw',
    documentation => "Sets the lower bound of color domain.",
);

=item * name

Sets the trace name

=cut

has name => (
    is => 'rw',
    documentation => "Sets the trace name",
);

=pod

=back

=cut


__PACKAGE__->meta->make_immutable();
1;
