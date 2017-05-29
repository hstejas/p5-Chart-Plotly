package Chart::Plotly::Trace::Heatmap;
use Moose;
use MooseX::ExtraArgs;

use Chart::Plotly::Trace::Attribute::Colorbar;


# VERSION

=encoding utf-8

=head1 NAME 

Chart::Plotly::Trace::Heatmap

=head1 SYNOPSIS

# EXAMPLE: examples/traces/heatmap.pl

=head1 DESCRIPTION

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#heatmap>

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
	my %hash = (%$self, %$extra_args); 
    delete $hash{'extra_args'};
	if ($self->can('type') && (!defined $hash{'type'})) {
		$hash{type} = $self->type();
	}
	return \%hash;
}



=head1 ATTRIBUTES

=over

=cut

=item * autocolorscale

Determines whether or not the colorscale is picked using the sign of the input z values.

=cut

has autocolorscale => (
    is => 'rw',
    isa => "Bool",
    documentation => "Determines whether or not the colorscale is picked using the sign of the input z values.",
);

=item * colorbar


=cut

has colorbar => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Colorbar"
);

=item * colorscale

Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)', [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in z space, use zmin and zmax

=cut

has colorscale => (
    is => 'rw',
    documentation => "Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)', [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in z space, use zmin and zmax",
);

=item * connectgaps

Determines whether or not gaps (i.e. {nan} or missing values) in the `z` data are filled in.

=cut

has connectgaps => (
    is => 'rw',
    isa => "Bool",
    documentation => "Determines whether or not gaps (i.e. {nan} or missing values) in the `z` data are filled in.",
);

=item * dx

Sets the x coordinate step. See `x0` for more info.

=cut

has dx => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the x coordinate step. See `x0` for more info.",
);

=item * dy

Sets the y coordinate step. See `y0` for more info.

=cut

has dy => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the y coordinate step. See `y0` for more info.",
);

=item * reversescale

Reverses the colorscale.

=cut

has reversescale => (
    is => 'rw',
    isa => "Bool",
    documentation => "Reverses the colorscale.",
);

=item * showscale

Determines whether or not a colorbar is displayed for this trace.

=cut

has showscale => (
    is => 'rw',
    isa => "Bool",
    documentation => "Determines whether or not a colorbar is displayed for this trace.",
);

=item * text

Sets the text elements associated with each z value.

=cut

has text => (
    is => 'rw',
    documentation => "Sets the text elements associated with each z value.",
);

=item * transpose

Transposes the z data.

=cut

has transpose => (
    is => 'rw',
    isa => "Bool",
    documentation => "Transposes the z data.",
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
    isa => "Any",
    documentation => "Alternate to `x`. Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and `dx` the step.",
);

=item * xgap

Sets the horizontal gap (in pixels) between bricks.

=cut

has xgap => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the horizontal gap (in pixels) between bricks.",
);

=item * xtype

If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when `x` is not provided).

=cut

has xtype => (
    is => 'rw',
    documentation => "If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when `x` is not provided).",
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
    isa => "Any",
    documentation => "Alternate to `y`. Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and `dy` the step.",
);

=item * ygap

Sets the vertical gap (in pixels) between bricks.

=cut

has ygap => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the vertical gap (in pixels) between bricks.",
);

=item * ytype

If *array*, the heatmap's y coordinates are given by *y* (the default behavior when `y` is provided) If *scaled*, the heatmap's y coordinates are given by *y0* and *dy* (the default behavior when `y` is not provided)

=cut

has ytype => (
    is => 'rw',
    documentation => "If *array*, the heatmap's y coordinates are given by *y* (the default behavior when `y` is provided) If *scaled*, the heatmap's y coordinates are given by *y0* and *dy* (the default behavior when `y` is not provided)",
);

=item * z

Sets the z data.

=cut

has z => (
    is => 'rw',
    documentation => "Sets the z data.",
);

=item * zauto

Determines the whether or not the color domain is computed with respect to the input data.

=cut

has zauto => (
    is => 'rw',
    isa => "Bool",
    documentation => "Determines the whether or not the color domain is computed with respect to the input data.",
);

=item * zmax

Sets the upper bound of color domain.

=cut

has zmax => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the upper bound of color domain.",
);

=item * zmin

Sets the lower bound of color domain.

=cut

has zmin => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the lower bound of color domain.",
);

=item * zsmooth

Picks a smoothing algorithm use to smooth `z` data.

=cut

has zsmooth => (
    is => 'rw',
    documentation => "Picks a smoothing algorithm use to smooth `z` data.",
);

=item * name

Sets the trace name

=cut

has name => (
    is => 'rw',
    isa => "Str",
    documentation => "Sets the trace name",
);

=pod

=back

=cut


=head2 type

Trace type.

=cut

sub type {
	my @components = split(/::/, __PACKAGE__);
	return lc($components[-1]);
}


__PACKAGE__->meta->make_immutable();
1;
