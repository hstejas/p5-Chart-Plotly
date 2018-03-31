use Chart::Plotly;
use Chart::Plotly::Trace::Scatter;
use Chart::Plotly::Plot;

my $x = [1 .. 15];
my $y = [map {rand 10 } @$x];
my $scatter = Chart::Plotly::Trace::Scatter->new(x => $x, y => $y);
my $plot = Chart::Plotly::Plot->new();
$plot->add_trace($scatter);
$plot->layout({annotations=> [
    {
      x=> 2,
      y=> 5,
      xref=> 'x',
      yref=> 'y',
      text=> 'Annotation Text',
      showarrow=> true,
      arrowhead=> 7,
      ax=> 0,
      ay=> -40
    }
  ]});

Chart::Plotly::show_plot($plot);

