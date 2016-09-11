<button-list-item>

  <button onclick={toggle} class={opts.red ? 'red' : 'blue'}>{opts.index + 1}</button>

<style scoped>

  button {
    display: block;
    margin: 1% auto;
    height: 50px;
    width: 50px;
    font-size: 2em;
  }

  .red {
    background-color: red;
  }

  .blue {
    background-color: blue;
  }

</style>

<script>

  var self = this;

  toggle () {
    self.parent.toggle(opts.index);
  }

</script>
</button-list-item>
