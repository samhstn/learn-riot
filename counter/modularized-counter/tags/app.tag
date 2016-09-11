<app>

<rement rement={dec} handleclick={decrement}></rement>
<rement rement={inc} handleclick={increment}></rement>
<count count={count}></count>

<script>
  var self = this;

  self.dec = 'dec'
  self.inc = 'inc'

  self.count = self.count || 0;

  function rement (rement) {
    self.count = rement();
    self.update();
  };

  var inc = function () {
    return ++self.count;
  };

  var dec = function () {
    return --self.count;
  }

  increment () {
    rement(inc);
  }

  decrement () {
    rement(dec);
  }
</script>
</app>
