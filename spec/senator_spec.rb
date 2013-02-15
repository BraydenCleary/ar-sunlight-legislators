# require 'rspec'
# require 'date'
# require_relative '../app/models/senator'

# describe Senator, "attributes" do

#   before(:all) do
#     raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:Senators).should be_true
#     Senator.delete_all
#   end

#   it "should be two" do
#     @rep1 = Senator.create({:state => 'MD', :district => 1})
#     @rep2 = Senator.create({:state => 'MD', :district => 1})
#     @rep2.should_not be_valid
#   end

#   it "should have unique facebook_id" do 
#     @rep1 = Senator.create({:facebook_id => 'something.facebook.com'})
#     @rep2 = Senator.create({:facebook_id => 'something.facebook.com'})
#     @rep2.should_not be_valid
#   end

#   it "should have 10 digit phone number" do
#     @rep1 = Senator.create({:phone => '410-303-0534'})
#     @rep2 = Senator.create({:phone => 'fdsksldfj3432'})
#     @rep1.should be_valid
#     @rep2.should_not be_valid
#   end

# end
