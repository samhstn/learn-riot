<counter>

  <div id='heading'></div>
  <div class='crement'></div>
  <div id='count'></div>

  <script>

    var self = this;

    self.opts.count = counter.getCount();

    crement (func) {
      self.opts.count = func();
      console.log('s: ', self.opts.count);
      self.update();
    }

    increment () {
      crement(counter.increment);
    }

    decrement () {
      crement(counter.decrement);
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
