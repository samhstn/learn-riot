<counter>
  <h1>Counter</h1>

  <button onclick={ increment }>Increment</button>
  <button onclick={ decrement }>Decrement</button>

  <h4>{ opts.count }</h4>

  <script>

  this.opts.count = this.opts.count || 0;

  increment () {
    this.opts.count++;
  }

  decrement () {
    this.opts.count--;
  }

  </script>
</counter>
