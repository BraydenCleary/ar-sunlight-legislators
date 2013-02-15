require 'rspec'
require 'date'
require_relative '../app/models/legislators'

describe Legislator, "attributes" do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:Legislators).should be_true
    Legislator.delete_all
  end

  it "should reject non-unique districts from same state" do
    @rep1 = Legislator.create({:state => 'MD', :district => 1})
    @rep2 = Legislator.create({:state => 'MD', :district => 1})
    @rep2.should_not be_valid
  end

  it "should have unique facebook_id" do 
    @rep1 = Legislator.create({:facebook_id => 'something.facebook.com'})
    @rep2 = Legislator.create({:facebook_id => 'something.facebook.com'})
    @rep2.should_not be_valid
  end

  it "should have 10 digit phone number" do
    @rep1 = Legislator.create({:phone => '410-303-0534'})
    @rep2 = Legislator.create({:phone => 'fdsksldfj3432'})
    @rep1.should be_valid
    @rep2.should_not be_valid
  end

end
