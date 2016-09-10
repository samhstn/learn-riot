<demo>

<button onclick={increment}>increment</button>

  <div id='count'></div>

  <script>

    var self = this;

    self.opts.count = self.opts.count || 0;

    increment () {
      self.opts.count = ++self.opts.count;
      console.log('count: ', self.opts.count);
      self.update();
    }

    riot.compile('count.html', function () {
      riot.mount('div#count', 'count', {
        count: self.opts.count
      })[0];      
    });

  </script>
</demo>
