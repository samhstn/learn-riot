<app>

<button-list-item
  each={ name, i in buttons }
  red={name}
  toggle={toggle}
  index={i}
></button-list-item>

<script>

  var self = this;

  self.buttons = [ false, false, false, false, false ];

  toggle (i) {
    self.buttons = self.buttons.map(function (el, j) {
      return i === j ? !el : el;
    });
    self.update();
  }

</script>
</app>
