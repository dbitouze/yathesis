int factorielle(int n)
{
  if (n > 2) return n * factorielle(n - 1);
  return n;
}

