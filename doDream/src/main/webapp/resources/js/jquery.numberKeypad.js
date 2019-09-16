/* == jquery keypad plugin == Version: 1.0.1, License: MIT License (MIT) */
var $padActive = false; // is active keypad visible :: global

(function ($) {
    // 셔플함수
    $.shuffle = function(arr) {
      for(var j, x, i = arr.length; i; j = parseInt(Math.random() * i), x = arr[--i], arr[i] = arr[j], arr[j] = x);
      return arr;
    }

    $.fn.numberKeypad = function (options) {
        var $this = this;
        var $wrapper; // parent container

        return $this.each(function (i, elem) {
            var self = $(elem);
            var strItem = '';
            var tmpArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
            $.shuffle(tmpArr);

// 집에가서 여기 작성하시오
// 여기여기
// 여기여기

            var settings = $.extend({
                wrap: 'body',
                arrKeys: [1, 2, 3, 4, 5, 6, 7, 8, 9, 'x', 0, 'ok'],
                login: false // custom page style :: padding
            }, options);

            // parent container bind
            $wrapper = $(settings.wrap);

            // create keypad element string
            settings.arrKeys.forEach(function (e, i) {
                if (i % 3 === 0) {
                    strItem += '<div class="item d-flex justify-content-between">'
                }

                switch (e) {
                    case 'x':
                        strItem += '<a href="javascript:;" class="back"><span>x</span></a>'
                        break;
                    case 'ok':
                        strItem += '<a href="javascript:;" class="ok">OK</a>'
                        break;
                    default:
                        strItem += '<a href="javascript:;" class="n">' + e + '</a>'
                        break;
                }

                if (i % 3 === 2) {
                    strItem += '</div>'
                }
            });

            var makeUnqId = ID(); // insert attribute unique for data-id
            var $keyItems = $(strItem);
            var $keypad = $("<div>", {
                'class': "keypad",
                'data-idx': makeUnqId
            }).appendTo($wrapper);

            // append items in keypad layer
            $keypad.html($keyItems);

            // mobile fake hover
            $keypad.find("a").on('touchstart mouseenter', function () {
                $(this).addClass('hover');
            }).on('touchend mouseleave', function () {
                $(this).removeClass('hover');
            }).on('click', function () {
                $(this).mouseleave();
            });

            // click number event
            $keypad.find("a.n").on("click", function (e) {
                e.preventDefault();

                var $val = $(this).text();
                var $maxLength = self.attr("maxlength");
                if ( self.val().length >= $maxLength ) {
                  return false;
                }
                self.val(self.val() + $val);
            });

            // click back event
            $keypad.find("a.back").on("click", function (e) {
                e.preventDefault();
                self.val(self.val().slice(0, self.val().length - 1));
            });

            // click ok event
            $keypad.find("a.ok").on("click", function (e) {
                e.preventDefault();

                if (settings.login) {
                    $wrapper.css("padding-bottom", '40px');
                } else {
                    $wrapper.css("padding-bottom", 0);
                }
                $keypad.fadeOut(200, function () {
					$padActive = false;
                    $(this).find(".keypad").hide();
                });
            });

            // set responsive position
            $.fn_reposition = function (el, isOpen) {
                var $el = $(el);
                var $idx = $el.data('idx');
                var $keyWrap = $("div.keypad[data-idx='" + $idx + "']");

                if (!isOpen) {
                    fnSetKeypadHeight($el, $keyWrap);
                    return;
                } else {
                    // after focusing, init keypad
                    $(settings.wrap +">div.keypad").hide();
                }
                if ($(window).width() < 768) {
                    if ($keyWrap.is(":visible") || isOpen) {
                        if (isOpen) {
                            $keyWrap.show();
                            fnSetKeypadHeight($el, $keyWrap);
                        }
                    }
                } else {
                    if ($keyWrap.is(":visible") || isOpen) {
                        if (isOpen) {
                            $keyWrap.show();
                            fnSetKeypadHeight($el, $keyWrap);
                        } else {
                            if (settings.login) {
                                $wrapper.css("padding-bottom", '40px');
                            } else {
                                $wrapper.css("padding-bottom", 0);
                            }
                        }
                    }
                }
            }

            // window resize event :: debounce reposition
            $(window).resize(debounce(function () {
                $.fn_reposition(self);
            }));


            /* dom click > keypad hide */
            var handler = function(event){
                // if the target is a descendent of container do nothing
                if($(event.target).is("input, .keypad, .keypad *")) return;

                // remove event handler from document
                // $(document).off("click", handler);

                // dostuff
                $("div.keypad").hide();
            }

            $(document).on("click", handler);

            // input focus event
            self.attr("readonly", true)
                .attr("data-idx", makeUnqId)
                .on("focus", function () {
                    $padActive = true;
                    $.fn_reposition(self, true);
                    self.blur();
                });

            function fnSetKeypadHeight($el, $keyWrap) {
                var os = $el.offset();
                var os_t = os.top;
                var os_l = os.left;

                if (!$padActive) return;
                if ($(window).width() < 768) {
                    $keyWrap.css({
                        top: 'auto',
                        left: 'calc(50% - 125px)'
                    }).addClass('on');

                    var $getPb = $keyWrap.height() - ($wrapper.height() - os_t) + ($el.outerHeight() * 2);
                    if ($getPb > 0) {
                        $wrapper.css("padding-bottom", $getPb);
                    }
                    $('html, body').stop().animate({
                        scrollTop: os_t - ($el.outerHeight() * 2)
                    }, 300);
                } else {
                    //$keyWrap.css("height", $wrapper.height());
                    $keyWrap.css({
                        top: os_t + $el.outerHeight() + 10,
                        left: (settings.login) ? os_l - ($keyWrap.width() / 2) : os_l - 10
                    }).addClass('on');
                }
            }
        });
    };

    var debounce = function (func) {
        var timer;
        return function (event) {
            if (timer) clearTimeout(timer);
            timer = setTimeout(func, 300, event);
        };
    }

    var ID = function () {
        // Math.random should be unique because of its seeding algorithm.
        // Convert it to base 36 (numbers + letters), and grab the first 9 characters
        // after the decimal.
        return '_' + Math.random().toString(36).substr(2, 9);
    };
}(jQuery));
