function solve(N, Q, Query) {
  const originalSeats = [];
  let increment = 0;

  const result = [];

  for (let i = 0; i < N; i++) {
    originalSeats.push(i + 1);
  }

  for (let i = 0; i < Q; i++) {
    const [type, x] = Query[i];
    if (type === 1) {
      increment++;
    }

    if (type === 2) {
      result.push(originalSeats[x + increment - 1]);
    }
  }

  return result;
}

solve(6, 5, [
  [2, 3],
  [1, 3],
  [2, 3],
  [1, 2],
  [2, 4],
]);

console.log(
  solve(18, 5, [
    [1, 1],
    [1, 1],
    [2, 6],
    [1, 6],
    [2, 8],
  ])
);
