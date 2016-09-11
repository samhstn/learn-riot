riot.tag2('app', '<rement rement="{\'dec\'}" handleclick="{decrement}"></rement> <rement rement="{\'inc\'}" handleclick="{increment}"></rement> <count count="{count}"></count>', '', '', function(opts) {
  var self = this;

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

  this.increment = function () {
    rement(inc);
  }.bind(this)

  this.decrement = function () {
    rement(dec);
  }.bind(this)
});

riot.tag2('count', '<h4>{opts.count}</h4>', '', '', function(opts) {
});

riot.tag2('rement', '<button onclick="{opts.handleclick}">{opts.rement}rement</button>', '', '', function(opts) {
});
