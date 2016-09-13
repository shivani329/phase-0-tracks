// take a word
// get length 
// length -1 is the end of the string
// iterate backwards (use a loop)
// return the string

function reverse(x) {
  var o = '';
  for (var i = x.length - 1; i >= 0; i--)
    o += x[i];
  console.log(o);
}

var result=reverse("hello, it's me");

var one=1;

if (one==1)
{
	console.log("the condition is true");
}