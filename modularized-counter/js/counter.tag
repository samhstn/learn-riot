<counter>
  <h1>Counter</h1>

  <button onclick={ increment }>Increment</button>
  <button onclick={ decrement }>Decrement</button>

  <h4>{ opts.count }</h4>

  <script>

  var self = this;

  console.log('count', self);

  self.opts.count = counter.getCount();

  getCount () {
    return counter.getCount();
  }

  increment () {
    self.opts.count = counter.increment();
    self.update();
  }

  decrement () {
    self.opts.count = counter.decrement();
    self.update();
  }

  </script>
</counter>
