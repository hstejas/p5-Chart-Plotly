package Chart::Plotly::Trace::Indicator::Gauge;
use Moose;
use MooseX::ExtraArgs;
use Moose::Util::TypeConstraints qw(enum union);
if (!defined Moose::Util::TypeConstraints::find_type_constraint('PDL')) {
    Moose::Util::TypeConstraints::type('PDL');
}

use Chart::Plotly::Trace::Indicator::Gauge::Axis;
use Chart::Plotly::Trace::Indicator::Gauge::Bar;
use Chart::Plotly::Trace::Indicator::Gauge::Steps;
use Chart::Plotly::Trace::Indicator::Gauge::Threshold;


# VERSION

# ABSTRACT: This attribute is one of the possible options for the trace indicator.

=encoding utf-8

=head1 SYNOPSIS

# EXAMPLE: examples/traces/indicator.pl

=head1 DESCRIPTION

This attribute is part of the possible options for the trace indicator.

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#indicator>

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

=item * axis


=cut

has axis => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Indicator::Gauge::Axis",
);

=item * bar


=cut

has bar => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Indicator::Gauge::Bar",
);

=item * bgcolor

Sets the gauge background color.

=cut

has bgcolor => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the gauge background color.",
);

=item * bordercolor

Sets the color of the border enclosing the gauge.

=cut

has bordercolor => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the color of the border enclosing the gauge.",
);

=item * borderwidth

Sets the width (in px) of the border enclosing the gauge.

=cut

has borderwidth => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the width (in px) of the border enclosing the gauge.",
);

=item * description


=cut

has description => (
    is => "ro",
    default => "The gauge of the Indicator plot.",
);

=item * shape

Set the shape of the gauge

=cut

has shape => (
    is => "rw",
    isa => enum(["angular","bullet"]),
    documentation => "Set the shape of the gauge",
);

=item * steps


=cut

has steps => (
    is => "rw",
    isa => "ArrayRef|ArrayRef[Chart::Plotly::Trace::Indicator::Gauge::Steps]",
);

=item * threshold


=cut

has threshold => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Indicator::Gauge::Threshold",
);

=pod

=back

=cut


__PACKAGE__->meta->make_immutable();
1;
