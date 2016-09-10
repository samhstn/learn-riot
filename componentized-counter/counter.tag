<counter>

  <div id='heading'></div>
  <div class='crement'></div>
  <div id='count'></div>

  <script>

    var self = this;

    self.opts.count = counter.getCount();

    increment () {
      self.opts.count = counter.increment();
      console.log('s: ', self.opts.count);
      self.update();
    }

    decrement () {
      self.opts.count = counter.decrement();
      console.log('s: ', self.opts.count);
      self.update();
    }

    riot.compile('tags/heading.html', function () {
      riot.mount('div#heading', 'heading', {
        title: 'Counter'
      })[0];      
    });

    riot.compile('tags/crement.html', function () {
      riot.mount('div.crement', 'crement', {
        crement: [{
            crement: 'in',
            onclick: self.increment
          },
          {
            crement: 'de',
            onclick: self.decrement
          }
        ]
      })[0];
    });

    riot.compile('tags/count.html', function () {
      riot.mount('div#count', 'count', {
        count: self.opts.count
      })[0];
    });

  </script>

</counter>
