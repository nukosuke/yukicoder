function Main(input) {
  const data = input.split('\n').shift().split(' ').map(Number);
  const diff = data[1] - data[0];
  console.log(diff > 0 ? '+'+diff : diff);
}

// Don't edit this line!
Main(require("fs").readFileSync("/dev/stdin", "utf8"));
