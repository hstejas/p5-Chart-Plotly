package Chart::Plotly::Trace::Sunburst::Marker::Colorbar;
use Moose;
use MooseX::ExtraArgs;
use Moose::Util::TypeConstraints qw(enum union);
if (!defined Moose::Util::TypeConstraints::find_type_constraint('PDL')) {
    Moose::Util::TypeConstraints::type('PDL');
}

use Chart::Plotly::Trace::Sunburst::Marker::Colorbar::Tickfont;
use Chart::Plotly::Trace::Sunburst::Marker::Colorbar::Tickformatstop;
use Chart::Plotly::Trace::Sunburst::Marker::Colorbar::Title;


# VERSION

# ABSTRACT: This attribute is one of the possible options for the trace sunburst.

=encoding utf-8

=head1 SYNOPSIS

# EXAMPLE: examples/traces/sunburst.pl

=head1 DESCRIPTION

This attribute is part of the possible options for the trace sunburst.

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#sunburst>

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

=item * bgcolor

Sets the color of padded area.

=cut

has bgcolor => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the color of padded area.",
);

=item * bordercolor

Sets the axis line color.

=cut

has bordercolor => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the axis line color.",
);

=item * borderwidth

Sets the width (in px) or the border enclosing this color bar.

=cut

has borderwidth => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the width (in px) or the border enclosing this color bar.",
);

=item * dtick

Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *n* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*

=cut

has dtick => (
    is => "rw",
    isa => "Any",
    documentation => "Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *n* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*",
);

=item * exponentformat

Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.

=cut

has exponentformat => (
    is => "rw",
    isa => enum(["none","e","E","power","SI","B"]),
    documentation => "Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.",
);

=item * len

Sets the length of the color bar This measure excludes the padding of both ends. That is, the color bar length is this length minus the padding on both ends.

=cut

has len => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the length of the color bar This measure excludes the padding of both ends. That is, the color bar length is this length minus the padding on both ends.",
);

=item * lenmode

Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.

=cut

has lenmode => (
    is => "rw",
    isa => enum(["fraction","pixels"]),
    documentation => "Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.",
);

=item * nticks

Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.

=cut

has nticks => (
    is => "rw",
    isa => "Int",
    documentation => "Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.",
);

=item * outlinecolor

Sets the axis line color.

=cut

has outlinecolor => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the axis line color.",
);

=item * outlinewidth

Sets the width (in px) of the axis line.

=cut

has outlinewidth => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the width (in px) of the axis line.",
);

=item * separatethousands

If "true", even 4-digit integers are separated

=cut

has separatethousands => (
    is => "rw",
    isa => "Bool",
    documentation => "If \"true\", even 4-digit integers are separated",
);

=item * showexponent

If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.

=cut

has showexponent => (
    is => "rw",
    isa => enum(["all","first","last","none"]),
    documentation => "If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.",
);

=item * showticklabels

Determines whether or not the tick labels are drawn.

=cut

has showticklabels => (
    is => "rw",
    isa => "Bool",
    documentation => "Determines whether or not the tick labels are drawn.",
);

=item * showtickprefix

If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.

=cut

has showtickprefix => (
    is => "rw",
    isa => enum(["all","first","last","none"]),
    documentation => "If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.",
);

=item * showticksuffix

Same as `showtickprefix` but for tick suffixes.

=cut

has showticksuffix => (
    is => "rw",
    isa => enum(["all","first","last","none"]),
    documentation => "Same as `showtickprefix` but for tick suffixes.",
);

=item * thickness

Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.

=cut

has thickness => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.",
);

=item * thicknessmode

Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.

=cut

has thicknessmode => (
    is => "rw",
    isa => enum(["fraction","pixels"]),
    documentation => "Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.",
);

=item * tick0

Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.

=cut

has tick0 => (
    is => "rw",
    isa => "Any",
    documentation => "Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.",
);

=item * tickangle

Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.

=cut

has tickangle => (
    is => "rw",
    documentation => "Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.",
);

=item * tickcolor

Sets the tick color.

=cut

has tickcolor => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the tick color.",
);

=item * tickfont


=cut

has tickfont => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Sunburst::Marker::Colorbar::Tickfont",
);

=item * tickformat

Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*

=cut

has tickformat => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*",
);

=item * tickformatstops


=cut

has tickformatstops => (
    is => "rw",
    isa => "ArrayRef|ArrayRef[Chart::Plotly::Trace::Sunburst::Marker::Colorbar::Tickformatstop]",
);

=item * ticklen

Sets the tick length (in px).

=cut

has ticklen => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the tick length (in px).",
);

=item * tickmode

Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).

=cut

has tickmode => (
    is => "rw",
    isa => enum(["auto","linear","array"]),
    documentation => "Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).",
);

=item * tickprefix

Sets a tick label prefix.

=cut

has tickprefix => (
    is => "rw",
    isa => "Str",
    documentation => "Sets a tick label prefix.",
);

=item * ticks

Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.

=cut

has ticks => (
    is => "rw",
    isa => enum(["outside","inside",""]),
    documentation => "Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.",
);

=item * ticksuffix

Sets a tick label suffix.

=cut

has ticksuffix => (
    is => "rw",
    isa => "Str",
    documentation => "Sets a tick label suffix.",
);

=item * ticktext

Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.

=cut

has ticktext => (
    is => "rw",
    isa => "ArrayRef|PDL",
    documentation => "Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.",
);

=item * ticktextsrc

Sets the source reference on plot.ly for  ticktext .

=cut

has ticktextsrc => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the source reference on plot.ly for  ticktext .",
);

=item * tickvals

Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.

=cut

has tickvals => (
    is => "rw",
    isa => "ArrayRef|PDL",
    documentation => "Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.",
);

=item * tickvalssrc

Sets the source reference on plot.ly for  tickvals .

=cut

has tickvalssrc => (
    is => "rw",
    isa => "Str",
    documentation => "Sets the source reference on plot.ly for  tickvals .",
);

=item * tickwidth

Sets the tick width (in px).

=cut

has tickwidth => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the tick width (in px).",
);

=item * title


=cut

has title => (
    is => "rw",
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Sunburst::Marker::Colorbar::Title",
);

=item * x

Sets the x position of the color bar (in plot fraction).

=cut

has x => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the x position of the color bar (in plot fraction).",
);

=item * xanchor

Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.

=cut

has xanchor => (
    is => "rw",
    isa => enum(["left","center","right"]),
    documentation => "Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.",
);

=item * xpad

Sets the amount of padding (in px) along the x direction.

=cut

has xpad => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the amount of padding (in px) along the x direction.",
);

=item * y

Sets the y position of the color bar (in plot fraction).

=cut

has y => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the y position of the color bar (in plot fraction).",
);

=item * yanchor

Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.

=cut

has yanchor => (
    is => "rw",
    isa => enum(["top","middle","bottom"]),
    documentation => "Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.",
);

=item * ypad

Sets the amount of padding (in px) along the y direction.

=cut

has ypad => (
    is => "rw",
    isa => "Num",
    documentation => "Sets the amount of padding (in px) along the y direction.",
);

=pod

=back

=cut


__PACKAGE__->meta->make_immutable();
1;
