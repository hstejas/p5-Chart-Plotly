package Chart::Plotly::Trace::Treemap::Pathbar;
use Moose;
use MooseX::ExtraArgs;
use Moose::Util::TypeConstraints qw(enum union);
if (!defined Moose::Util::TypeConstraints::find_type_constraint('PDL')) {
    Moose::Util::TypeConstraints::type('PDL');
}

use Chart::Plotly::Trace::Treemap::Pathbar::Textfont;


# VERSION

# ABSTRACT: This attribute is one of the possible options for the trace treemap.

=encoding utf-8

=head1 SYNOPSIS

# EXAMPLE: examples/traces/treemap.pl

=head1 DESCRIPTION

This attribute is part of the possible options for the trace treemap.

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#treemap>

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

=item * edgeshape

Determines which shape is used for edges between `barpath` labels.

=cut

has edgeshape => (
    is => "rw",
    isa => enum([">","<","|","/","\\"]),
    documentation => "Determines which shape is used for edges between `barpath` labels.",
);

=item * side

Determines on which side of the the treemap the `pathbar` should be presented.

=cut

has side => (
    is => "rw",
    isa => enum(["top","bottom"]),
    documentation => "Determines on which side of the the treemap the `pathbar` should be presented.",
);

=item * textfont


=cut

has textfont => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Treemap::Pathbar::Textfont",
);

=item * thickness

Sets the thickness of `pathbar` (in px). If not specified the `pathbar.textfont.size` is used with 3 pixles extra padding on each side.

=cut

has thickness => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the thickness of `pathbar` (in px). If not specified the `pathbar.textfont.size` is used with 3 pixles extra padding on each side.",
);

=item * visible

Determines if the path bar is drawn i.e. outside the trace `domain` and with one pixel gap.

=cut

has visible => (
    is => "rw",
    isa => "Bool",
    documentation => "Determines if the path bar is drawn i.e. outside the trace `domain` and with one pixel gap.",
);

=pod

=back

=cut


__PACKAGE__->meta->make_immutable();
1;
