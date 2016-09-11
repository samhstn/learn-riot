<counter>
  <h1>Counter</h1>

  <button onclick={ increment }>Increment</button>
  <button onclick={ decrement }>Decrement</button>

  <h4>{ opts.count }</h4>

  <script>

  var self = this;

  self.opts.count = self.opts.count || 0;

  increment () {
    self.opts.count++;
  }

  decrement () {
    self.opts.count--;
  }

  </script>
</counter>
