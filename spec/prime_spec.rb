require 'integer'
require 'prime'

RSpec.describe Prime do
  
  it "generates an array with first 10 prime numbers" do
    nums = Prime.get(10)
    expect(nums).to eq [2,3,5,7,11,13,17,19,23,29]
  end

  it "gives you the next prime number if provided with a prime number" do
    num = Prime.send(:get_next_prime,nil)
    expect(num).to eq 2
    
    num = Prime.send(:get_next_prime,7)
    expect(num).to eq 11
    
    num = Prime.send(:get_next_prime,11)
    expect(num).to eq 13
  end

  it "generates a multiplication table for n prime numbers" do
    $stdout = StringIO.new('','w')
    result  = Prime.generate_prime_table(10)
    table   = <<-end_text
           2     3     5     7    11    13    17    19    23    29
     2     4     6    10    14    22    26    34    38    46    58
     3     6     9    15    21    33    39    51    57    69    87
     5    10    15    25    35    55    65    85    95   115   145
     7    14    21    35    49    77    91   119   133   161   203
    11    22    33    55    77   121   143   187   209   253   319
    13    26    39    65    91   143   169   221   247   299   377
    17    34    51    85   119   187   221   289   323   391   493
    19    38    57    95   133   209   247   323   361   437   551
    23    46    69   115   161   253   299   391   437   529   667
    29    58    87   145   203   319   377   493   551   667   841
    end_text
    expect($stdout.string.gsub(/[\s\r\n]+/,' ')).to eq table.gsub(/[\s\r\n]+/,' ')
    $stdout = STDOUT
  end

end


