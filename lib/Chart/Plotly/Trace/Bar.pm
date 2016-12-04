package Chart::Plotly::Trace::Bar;
use Moose;

# VERSION

=encoding utf-8

=head1 NAME 

Chart::Plotly::Trace::Bar

=head1 SYNOPSIS

	use HTML::Show;
	use Chart::Plotly;
	use Chart::Plotly::Trace::Bar;
	my $bar = Chart::Plotly::Trace::Bar->new(x => [1 .. 5], y => [1 .. 5]);
	
	HTML::Show::show(Chart::Plotly::render_full_html(data => [$bar]));


=head1 DESCRIPTION

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#bar>

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

=item * _deprecated


=cut

has _deprecated => (
    is => 'rw',
);

=item * base

Sets where the bar base is drawn (in position axis units). In *stack* or *relative* barmode, traces that set *base* will be excluded and drawn in *overlay* mode instead.

=cut

has base => (
    is => 'rw',
    documentation => "Sets where the bar base is drawn (in position axis units). In *stack* or *relative* barmode, traces that set *base* will be excluded and drawn in *overlay* mode instead.",
);

=item * dx

Sets the x coordinate step. See `x0` for more info.

=cut

has dx => (
    is => 'rw',
    documentation => "Sets the x coordinate step. See `x0` for more info.",
);

=item * dy

Sets the y coordinate step. See `y0` for more info.

=cut

has dy => (
    is => 'rw',
    documentation => "Sets the y coordinate step. See `y0` for more info.",
);

=item * error_x


=cut

has error_x => (
    is => 'rw',
);

=item * error_y


=cut

has error_y => (
    is => 'rw',
);

=item * marker


=cut

has marker => (
    is => 'rw',
);

=item * offset

Shifts the position where the bar is drawn (in position axis units). In *group* barmode, traces that set *offset* will be excluded and drawn in *overlay* mode instead.

=cut

has offset => (
    is => 'rw',
    documentation => "Shifts the position where the bar is drawn (in position axis units). In *group* barmode, traces that set *offset* will be excluded and drawn in *overlay* mode instead.",
);

=item * orientation

Sets the orientation of the bars. With *v* (*h*), the value of the each bar spans along the vertical (horizontal).

=cut

has orientation => (
    is => 'rw',
    documentation => "Sets the orientation of the bars. With *v* (*h*), the value of the each bar spans along the vertical (horizontal).",
);

=item * r

For polar chart only.Sets the radial coordinates.

=cut

has r => (
    is => 'rw',
    documentation => "For polar chart only.Sets the radial coordinates.",
);

=item * t

For polar chart only.Sets the angular coordinates.

=cut

has t => (
    is => 'rw',
    documentation => "For polar chart only.Sets the angular coordinates.",
);

=item * text

Sets text elements associated with each (x,y) pair. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates.

=cut

has text => (
    is => 'rw',
    documentation => "Sets text elements associated with each (x,y) pair. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates.",
);

=item * width

Sets the bar width (in position axis units).

=cut

has width => (
    is => 'rw',
    documentation => "Sets the bar width (in position axis units).",
);

=item * x

Sets the x coordinates.

=cut

has x => (
    is => 'rw',
    documentation => "Sets the x coordinates.",
);

=item * x0

Alternate to `x`. Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and `dx` the step.

=cut

has x0 => (
    is => 'rw',
    documentation => "Alternate to `x`. Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and `dx` the step.",
);

=item * y

Sets the y coordinates.

=cut

has y => (
    is => 'rw',
    documentation => "Sets the y coordinates.",
);

=item * y0

Alternate to `y`. Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and `dy` the step.

=cut

has y0 => (
    is => 'rw',
    documentation => "Alternate to `y`. Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and `dy` the step.",
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
