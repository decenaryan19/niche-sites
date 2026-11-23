// Copy buttons for contact rows
document.querySelectorAll('[data-copy]').forEach(function (b) {
  b.addEventListener('click', function () {
    var v = b.getAttribute('data-copy');
    var done = function () { var t = b.textContent; b.textContent = 'Copied'; setTimeout(function () { b.textContent = t; }, 1400); };
    if (navigator.clipboard) navigator.clipboard.writeText(v).then(done, function () {});
  });
});
document.querySelectorAll('[data-year]').forEach(function (e) { e.textContent = new Date().getFullYear(); });
