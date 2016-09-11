riot.tag2('app', '<button-list-item each="{name, i in buttons}" red="{name}" toggle="{toggle}" index="{i}"></button-list-item>', '', '', function(opts) {

  var self = this;

  self.buttons = [ false, false, false, false, false ];

  this.toggle = function (i) {
    self.buttons = self.buttons.map(function (el, j) {
      return i === j ? !el : el;
    });
    self.update();
  }.bind(this)

});

riot.tag2('button-list-item', '<button onclick="{toggle}" class="{opts.red ? \'red\' : \'blue\'}">{opts.index + 1}</button>', 'button-list-item button,[riot-tag="button-list-item"] button,[data-is="button-list-item"] button{ display: block; margin: 1% auto; height: 50px; width: 50px; font-size: 2em; } button-list-item .red,[riot-tag="button-list-item"] .red,[data-is="button-list-item"] .red{ background-color: red; } button-list-item .blue,[riot-tag="button-list-item"] .blue,[data-is="button-list-item"] .blue{ background-color: blue; }', '', function(opts) {

  var self = this;

  this.toggle = function () {
    self.parent.toggle(opts.index);
  }.bind(this)

});
