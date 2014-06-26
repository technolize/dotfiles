// .slate.js

S.bind("return:alt", function(win) {
    S.shell("usr/bin/open -n -a iTerm");
});

S.bind('i:alt', function (win) {
    if (!win) return;
    win.doOperation(S.operation('focus', { app: 'iTerm' }));
});

S.bind('c:alt', function (win) {
    if (!win) return;
    win.doOperation(S.operation('focus', { app: 'Google Chrome' }));
});

