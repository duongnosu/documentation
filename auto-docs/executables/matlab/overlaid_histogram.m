import numpy as np
x0 = np.random.randn(500)
x1 = np.random.randn(500)+1
signin('TestBot', 'r1neazxo9w')
trace1 = struct(...
  'x', x0, ...
  'opacity', 0.75, ...
  'type', 'histogram');
trace2 = struct(...
  'x', x1, ...
  'opacity', 0.75, ...
  'type', 'histogram');
data = {trace1, trace2};
layout = struct('barmode', 'overlay');
response = plotly(data, struct('layout', layout, 'auto_open', false, 'fileopt', 'overwrite', 'filename', 'overlaid-histogram'));
plot_url = response.url