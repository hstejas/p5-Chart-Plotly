package Chart::Plotly::Trace::Scattergl::Error_x;
use Moose;
use MooseX::ExtraArgs;
use Moose::Util::TypeConstraints qw(enum union);
if (!defined Moose::Util::TypeConstraints::find_type_constraint('PDL')) {
    Moose::Util::TypeConstraints::type('PDL');
}



# VERSION

# ABSTRACT: This attribute is one of the possible options for the trace scattergl.

=encoding utf-8

=head1 SYNOPSIS

# EXAMPLE: examples/traces/scattergl.pl

=head1 DESCRIPTION

This attribute is part of the possible options for the trace scattergl.

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#scattergl>

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

=head1 ATTRIBUTES

=over

=cut

=item * array

Sets the data corresponding the length of each error bar. Values are plotted relative to the underlying data.

=cut

has array => (
    is => "rw",
    isa => "ArrayRef|PDL",
    documentation => "Sets the data corresponding the length of each error bar. Values are plotted relative to the underlying data.",
);

=item * arrayminus

Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.

=cut

has arrayminus => (
    is => "rw",
    isa => "ArrayRef|PDL",
    documentation => "Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.",
);

=item * arrayminussrc

Sets the source reference on plot.ly for  arrayminus .

=cut

has arrayminussrc => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the source reference on plot.ly for  arrayminus .",
);

=item * arraysrc

Sets the source reference on plot.ly for  array .

=cut

has arraysrc => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the source reference on plot.ly for  array .",
);

=item * color

Sets the stoke color of the error bars.

=cut

has color => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the stoke color of the error bars.",
);

=item * copy_ystyle


=cut

has copy_ystyle => (
    is => "rw",
    isa => "Bool",
);

=item * symmetric

Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.

=cut

has symmetric => (
    is => "rw",
    isa => "Bool",
    documentation => "Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.",
);

=item * thickness

Sets the thickness (in px) of the error bars.

=cut

has thickness => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the thickness (in px) of the error bars.",
);

=item * traceref


=cut

has traceref => (
    is => "rw",
    isa => "Int",
);

=item * tracerefminus


=cut

has tracerefminus => (
    is => "rw",
    isa => "Int",
);

=item * value

Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.

=cut

has value => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.",
);

=item * valueminus

Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars

=cut

has valueminus => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars",
);

=item * visible

Determines whether or not this set of error bars is visible.

=cut

has visible => (
    is => "rw",
    isa => "Bool",
    documentation => "Determines whether or not this set of error bars is visible.",
);

=item * width

Sets the width (in px) of the cross-bar at both ends of the error bars.

=cut

has width => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the width (in px) of the cross-bar at both ends of the error bars.",
);

=pod

=back

=cut


__PACKAGE__->meta->make_immutable();
1;
