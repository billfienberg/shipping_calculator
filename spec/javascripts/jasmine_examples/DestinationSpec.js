describe("Hide", function() {
  beforeEach(function() {
    var el = document.createElement("p");
    el.className = "el";
    document.appendChild(el);
  });

  it("should be able to hide an element", function() {
    expect(el.style.display).toEqual("");
    el.hide();
    expect(el.style.display).toEqual("none");
  });
});
