require 'rspec'
require 'date'
require_relative '../app/models/representative'

describe Representative, "attributes" do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:representatives).should be_true
    Representative.delete_all
  end

  it "should reject non-unique districts from same state" do
    @rep1 = Representative.create({:state => 'MD', :district => 1})
    @rep2 = Representative.create({:state => 'MD', :district => 1})
    @rep2.should_not be_valid
  end

  it "should have unique facebook_id" do 
    @rep1 = Representative.create({:facebook_id => 'something.facebook.com'})
    @rep2 = Representative.create({:facebook_id => 'something.facebook.com'})
    @rep2.should_not be_valid
  end

  it "should have 10 digit phone number" do
    @rep1 = Representative.create({:phone => '410-303-0534'})
    @rep2 = Represntative.create({:phone => 'fdsksldfj3432'})
    @rep1.should be_valid
    @rep2.should_not be_valid
  end

end
