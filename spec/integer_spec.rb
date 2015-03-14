require 'integer'

RSpec.describe Integer do
  
  it "is_prime? returns true if the number is a prime number" do
    expect(2.is_prime?).to eq true
    expect(3.is_prime?).to eq true
    expect(7.is_prime?).to eq true
    expect(5.is_prime?).to eq true
  end

  it "is_prime? returns false if the number is a not a prime number" do
    expect(1.is_prime?).to eq false
    expect(4.is_prime?).to eq false
    expect(6.is_prime?).to eq false
    expect(9.is_prime?).to eq false
  end

  it "is_divisible_by? returns true if the number is fully divisible by another" do
    expect(4.is_divisible_by? 2).to eq true
    expect(2.is_divisible_by? 1).to eq true
    expect(9.is_divisible_by? 3).to eq true
    expect(8.is_divisible_by? 4).to eq true
  end

  it "is_divisible_by? returns false if the number is not fully divisible by another" do
    expect(3.is_divisible_by? 2).to eq false
    expect(5.is_divisible_by? 2).to eq false
    expect(7.is_divisible_by? 3).to eq false
    expect(9.is_divisible_by? 2).to eq false
  end

   
end

