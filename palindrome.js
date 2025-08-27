
function isPrime(num) {
  if (num <= 1) return false;
  for (let i = 2; i <= Math.sqrt(num); i++) {
    if (num % i === 0) return false;
  }
  return true;
}

// Example usage
const n = 29;
console.log(`${n} is ${isPrime(n) ? "Prime ✅" : "Not Prime ❌"}`);
