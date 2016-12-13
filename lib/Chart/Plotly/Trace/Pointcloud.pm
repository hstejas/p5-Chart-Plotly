package Chart::Plotly::Trace::Pointcloud;
use Moose;

use Chart::Plotly::Trace::Attribute::Marker;


# VERSION

=encoding utf-8

=head1 NAME 

Chart::Plotly::Trace::Pointcloud

=head1 SYNOPSIS

	use HTML::Show;
	use Chart::Plotly;
	use Chart::Plotly::Trace::Pointcloud;
	my $pointcloud = Chart::Plotly::Trace::Pointcloud->new(x => [1 .. 5], y => [1 .. 5]);
	
	HTML::Show::show(Chart::Plotly::render_full_html(data => [$pointcloud]));


=head1 DESCRIPTION

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#pointcloud>

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
	if ($self->can('type') && (!defined $hash{'type'})) {
		$hash{type} = $self->type();
	}
	return \%hash;
}



=head1 ATTRIBUTES

=over

=cut

=item * indices

A sequential value, 0..n, supply it to avoid creating this array inside plotting. If specified, it must be a typed `Int32Array` array. Its length must be equal to or greater than the number of points. For the best performance and memory use, create one large `indices` typed array that is guaranteed to be at least as long as the largest number of points during use, and reuse it on each `Plotly.restyle()` call.

=cut

has indices => (
    is => 'rw',
    documentation => "A sequential value, 0..n, supply it to avoid creating this array inside plotting. If specified, it must be a typed `Int32Array` array. Its length must be equal to or greater than the number of points. For the best performance and memory use, create one large `indices` typed array that is guaranteed to be at least as long as the largest number of points during use, and reuse it on each `Plotly.restyle()` call.",
);

=item * marker


=cut

has marker => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Marker"
);

=item * text

Sets text elements associated with each (x,y) pair to appear on hover. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates.

=cut

has text => (
    is => 'rw',
    isa => "Str",
    documentation => "Sets text elements associated with each (x,y) pair to appear on hover. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates.",
);

=item * x

Sets the x coordinates.

=cut

has x => (
    is => 'rw',
    documentation => "Sets the x coordinates.",
);

=item * xbounds

Specify `xbounds` in the shape of `[xMin, xMax] to avoid looping through the `xy` typed array. Use it in conjunction with `xy` and `ybounds` for the performance benefits.

=cut

has xbounds => (
    is => 'rw',
    documentation => "Specify `xbounds` in the shape of `[xMin, xMax] to avoid looping through the `xy` typed array. Use it in conjunction with `xy` and `ybounds` for the performance benefits.",
);

=item * xy

Faster alternative to specifying `x` and `y` separately. If supplied, it must be a typed `Float32Array` array that represents points such that `xy[i * 2] = x[i]` and `xy[i * 2 + 1] = y[i]`

=cut

has xy => (
    is => 'rw',
    documentation => "Faster alternative to specifying `x` and `y` separately. If supplied, it must be a typed `Float32Array` array that represents points such that `xy[i * 2] = x[i]` and `xy[i * 2 + 1] = y[i]`",
);

=item * y

Sets the y coordinates.

=cut

has y => (
    is => 'rw',
    documentation => "Sets the y coordinates.",
);

=item * ybounds

Specify `ybounds` in the shape of `[yMin, yMax] to avoid looping through the `xy` typed array. Use it in conjunction with `xy` and `xbounds` for the performance benefits.

=cut

has ybounds => (
    is => 'rw',
    documentation => "Specify `ybounds` in the shape of `[yMin, yMax] to avoid looping through the `xy` typed array. Use it in conjunction with `xy` and `xbounds` for the performance benefits.",
);

=item * name

Sets the trace name

=cut

has name => (
    is => 'rw',
    isa => "Str",
    documentation => "Sets the trace name",
);


=head2 type

Trace type.

=cut

sub type {
	my @components = split(/::/, __PACKAGE__);
	return lc($components[-1]);
}

=pod

=back

=cut


__PACKAGE__->meta->make_immutable();
1;
