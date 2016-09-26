<app>

<button onclick={increment}>increment</button>

<h1>Uncompiled count: {opts.count}</h1>

<count count={opts.count}></count>

  <script>

    var self = this;
    self.opts.count = self.opts.count || 0;

    increment () {
      self.opts.count = ++self.opts.count;
      console.log('count: ', self.opts.count);
      self.update();
    }

  </script>
</app>
