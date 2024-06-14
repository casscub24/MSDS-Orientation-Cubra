print("hello world")

#question number 1
def sum_of_multiples(limit):
    total_sum = 0
    for number in range(limit):
        if number % 3 == 0 or number % 5 == 0:
            total_sum += number
    return total_sum

# Set the limit to 1000
limit = 1000

# Calculate the sum
result = sum_of_multiples(limit)

# Print the result
print(f"The sum of all multiples of 3 or 5 below {limit} is: {result}")


# question 2
def sum_of_even_fibonacci(limit):
    a, b = 0, 1
    total_sum = 0
    while b <= limit:
        if b % 2 == 0:
            total_sum += b
        a, b = b, a + b
    return total_sum

# Set the limit to 4,000,000
limit = 4000000

# Calculate the sum
result = sum_of_even_fibonacci(limit)

# Print the result
print(f"The sum of the even-valued terms in the Fibonacci sequence below {limit} is: {result}")



#question 3
def largest_prime_factor(n):
    # Start with the smallest prime number
    factor = 2
    # Divide n by factor until it is no longer divisible
    while factor * factor <= n:
        if n % factor:
            factor += 1
        else:
            n //= factor
    return n

# The number for which we want to find the largest prime factor
number = 600851475143

# Calculate the largest prime factor
result = largest_prime_factor(number)

# Print the result
print(f"The largest prime factor of {number} is: {result}")









