package Chart::Plotly::Trace::Scattermapbox;
use Moose;

# VERSION

=encoding utf-8

=head1 NAME 

Chart::Plotly::Trace::Scattermapbox

=head1 SYNOPSIS

	use HTML::Show;
	use Chart::Plotly;
	use Chart::Plotly::Trace::Scattermapbox;
	my $scattermapbox = Chart::Plotly::Trace::Scattermapbox->new(x => [1 .. 5], y => [1 .. 5]);
	
	HTML::Show::show(Chart::Plotly::render_full_html(data => [$scattermapbox]));


=head1 DESCRIPTION

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#scattermapbox>

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

=item * fillcolor

Sets the fill color. Defaults to a half-transparent variant of the line color, marker color, or marker line color, whichever is available.

=cut

has fillcolor => (
    is => 'rw',
    documentation => "Sets the fill color. Defaults to a half-transparent variant of the line color, marker color, or marker line color, whichever is available.",
);

=item * marker


=cut

has marker => (
    is => 'rw',
);

=item * connectgaps

Determines whether or not gaps (i.e. {nan} or missing values) in the provided data arrays are connected.

=cut

has connectgaps => (
    is => 'rw',
    documentation => "Determines whether or not gaps (i.e. {nan} or missing values) in the provided data arrays are connected.",
);

=item * fill

Sets the area to fill with a solid color. Use with `fillcolor` if not *none*. *toself* connects the endpoints of the trace (or each segment of the trace if it has gaps) into a closed shape.

=cut

has fill => (
    is => 'rw',
    documentation => "Sets the area to fill with a solid color. Use with `fillcolor` if not *none*. *toself* connects the endpoints of the trace (or each segment of the trace if it has gaps) into a closed shape.",
);

=item * textposition

Sets the positions of the `text` elements with respects to the (x,y) coordinates.

=cut

has textposition => (
    is => 'rw',
    documentation => "Sets the positions of the `text` elements with respects to the (x,y) coordinates.",
);

=item * textfont

Sets the icon text font. Has an effect only when `type` is set to *symbol*.

=cut

has textfont => (
    is => 'rw',
    documentation => "Sets the icon text font. Has an effect only when `type` is set to *symbol*.",
);

=item * _nestedModules


=cut

has _nestedModules => (
    is => 'rw',
);

=item * line


=cut

has line => (
    is => 'rw',
);

=item * lat

Sets the latitude coordinates (in degrees North).

=cut

has lat => (
    is => 'rw',
    documentation => "Sets the latitude coordinates (in degrees North).",
);

=item * hoverinfo

Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.

=cut

has hoverinfo => (
    is => 'rw',
    documentation => "Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.",
);

=item * text

Sets text elements associated with each (lon,lat) pair If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (lon,lat) coordinates.

=cut

has text => (
    is => 'rw',
    documentation => "Sets text elements associated with each (lon,lat) pair If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (lon,lat) coordinates.",
);

=item * mode

Determines the drawing mode for this scatter trace. If the provided `mode` includes *text* then the `text` elements appear at the coordinates. Otherwise, the `text` elements appear on hover.

=cut

has mode => (
    is => 'rw',
    documentation => "Determines the drawing mode for this scatter trace. If the provided `mode` includes *text* then the `text` elements appear at the coordinates. Otherwise, the `text` elements appear on hover.",
);

=item * lon

Sets the longitude coordinates (in degrees East).

=cut

has lon => (
    is => 'rw',
    documentation => "Sets the longitude coordinates (in degrees East).",
);

=pod

=back

=cut


__PACKAGE__->meta->make_immutable();
1;
