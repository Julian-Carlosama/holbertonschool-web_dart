int fact(int f) {
  return f == 1
      ? 1
      : f <= 0
          ? 0
          : (f * fact(f - 1));
}
