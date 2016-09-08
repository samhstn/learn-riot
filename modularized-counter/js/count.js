(function (exports) {
  'use strict';

  var count = count || 0;

  exports.counter = {
    getCount: function () {
      return count;
    },
    increment: function () {
      return count ++;
    },
    decrement: function () {
      return count--;
    }
  };
})(window);
