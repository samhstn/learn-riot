<button-list-item>

  <button onclick={toggle} class={red: opts.red}>{opts.index + 1}</button>

<style scoped>

  button {
    display: block;
    margin: 1% auto;
    height: 50px;
    width: 50px;
    font-size: 2em;
    background-color: blue;
  }

  .red {
    background-color: red;
  }

</style>

<script>

  var self = this;

  toggle () {
    self.parent.toggle(opts.index);
  }

</script>
</button-list-item>
