var queryString = {};
location
    .search
    .substr(1)
    .split('&')
    .forEach(function(item) {
        var s = item.split('='),
            k = s[0],
            v = s[1] && decodeURIComponent(s[1]);
        (k in queryString) ? queryString[k].push(v) : queryString[k] = [v];
    });