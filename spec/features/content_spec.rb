require "rails_helper"

feature "Navbar" do

  it "has a link to the Homepage", points: 1 do
    visit "/"

    click_on "Omnicalc"

    expect(page).to have_selector("h1", text: /Welcome/i)
  end

  it "has a link to the Word Count form", points: 1 do
    visit "/"

    click_on "Word Count"

    expect(page).to have_selector("h1", text: /word count calculation/i)
  end

  it "has a link to the Loan Payment form", points: 1 do
    visit "/"

    click_on "Loan Payment"

    expect(page).to have_selector("h1", text: /loan payment calculation/i)
  end

  it "has a link to the Time Between form", points: 1 do
    visit "/"

    click_on "Time Between"

    expect(page).to have_selector("h1", text: /time between calculation/i)
  end

  it "has a link to the Descriptive Statistics form", points: 1 do
    visit "/"

    click_on "Descriptive Statistics"

    expect(page).to have_selector("h1", text: /descriptive statistics calculation/i)
  end

end

feature "Word Count form" do

  it "has a label for the Text field", points: 1 do
    visit "/word_count/new.html"

    expect(page).to have_css("label", text: /text/i)
  end

  it "has a textarea field", points: 1 do
    visit "/word_count/new.html"

    expect(page).to have_css("textarea")
  end

  it "has a label for the Special Word field", points: 1 do
    visit "/word_count/new.html"

    expect(page).to have_css("label", text: /special word/i)
  end

  it "has an input field", points: 1 do
    visit "/word_count/new.html"

    expect(page).to have_css("input")
  end

  it "submits to the word count results page", points: 1 do
    visit "/word_count/new.html"

    click_on "Calculate!"

    expect(page).to have_css("h1", text: /word count results/i)
  end

end

feature "Word Count results" do

  it "contains a description term with the word 'Text'", points: 1 do
    visit "/word_count/results.html"

    expect(page).to have_css("dt", text: /text/i)
  end

  it "contains a description term with the phrase 'Word Count'", points: 1 do
    visit "/word_count/results.html"

    expect(page).to have_css("dt", text: /word count/i)
  end

  it "contains a description term with the phrase 'Character Count (with spaces)''", points: 1 do
    visit "/word_count/results.html"

    expect(page).to have_css("dt", text: /character count \(without spaces\)/i)
  end

  it "contains a description term with the phrase 'Character Count (without spaces)''", points: 1 do
    visit "/word_count/results.html"

    expect(page).to have_css("dt", text: /character count \(without spaces\)/i)
  end

  it "contains a description term with the phrase 'Occurrences of'", points: 1 do
    visit "/word_count/results.html"

    expect(page).to have_css("dt", text: /occurrences of/i)
  end

  it "contains five description definitions", points: 2 do
    visit "/word_count/results.html"

    expect(page).to have_tag("dd", count: 5)
  end

end

feature "Loan Payment form" do

  it "has three input fields", points: 2 do
    visit "/loan_payment/new.html"

    expect(page).to have_tag("input", count: 3)
  end

  it "has a label for the APR field", points: 1 do
    visit "/loan_payment/new.html"

    expect(page).to have_css("label", text: /apr/i)
  end

  it "has a label for the Years field", points: 1 do
    visit "/loan_payment/new.html"

    expect(page).to have_css("label", text: /years/i)
  end

  it "has a label for the Principal field", points: 1 do
    visit "/loan_payment/new.html"

    expect(page).to have_css("label", text: /principal/i)
  end

  it "submits to the loan payment results page", points: 1 do
    visit "/loan_payment/new.html"

    click_on "Calculate!"

    expect(page).to have_css("h1", text: /loan payment results/i)
  end

end

feature "Loan Payment results" do

  it "contains a description term with the word 'APR'", points: 1 do
    visit "/loan_payment/results.html"

    expect(page).to have_css("dt", text: /apr/i)
  end

  it "contains a description term with the phrase 'Number of years'", points: 1 do
    visit "/loan_payment/results.html"

    expect(page).to have_css("dt", text: /number of years/i)
  end

  it "contains a description term with the word 'Principal'", points: 1 do
    visit "/loan_payment/results.html"

    expect(page).to have_css("dt", text: /principal/i)
  end

  it "contains a description term with the phrase 'Monthly Payment'", points: 1 do
    visit "/loan_payment/results.html"

    expect(page).to have_css("dt", text: /monthly payment/i)
  end

  it "contains four description definitions", points: 2 do
    visit "/loan_payment/results.html"

    expect(page).to have_tag("dd", count: 4)
  end

end

feature "Time Between form" do

  it "has two input fields", points: 2 do
    visit "/time_between/new.html"

    expect(page).to have_tag("input", count: 2)
  end

  it "has a label for the Starting Time field", points: 1 do
    visit "/time_between/new.html"

    expect(page).to have_css("label", text: /starting time/i)
  end

  it "has a label for the Ending Time field", points: 1 do
    visit "/time_between/new.html"

    expect(page).to have_css("label", text: /ending time/i)
  end


  it "submits to the Time Between results page", points: 1 do
    visit "/time_between/new.html"

    click_on "Calculate!"

    expect(page).to have_css("h1", text: /time between results/i)
  end

end

feature "Time Between results" do

  it "contains a description term with the phrase 'Starting Time'", points: 1 do
    visit "/time_between/results.html"

    expect(page).to have_css("dt", text: /starting time/i)
  end

  it "contains a description term with the phrase 'Ending Time'", points: 1 do
    visit "/time_between/results.html"

    expect(page).to have_css("dt", text: /ending time/i)
  end

  it "contains a description term with the word 'Seconds'", points: 1 do
    visit "/time_between/results.html"

    expect(page).to have_css("dt", text: /seconds/i)
  end

  it "contains a description term with the word 'Minutes'", points: 1 do
    visit "/time_between/results.html"

    expect(page).to have_css("dt", text: /minutes/i)
  end

  it "contains a description term with the word 'Hours'", points: 1 do
    visit "/time_between/results.html"

    expect(page).to have_css("dt", text: /hours/i)
  end

  it "contains a description term with the word 'Days'", points: 1 do
    visit "/time_between/results.html"

    expect(page).to have_css("dt", text: /days/i)
  end

  it "contains a description term with the word 'Weeks'", points: 1 do
    visit "/time_between/results.html"

    expect(page).to have_css("dt", text: /weeks/i)
  end

  it "contains a description term with the word 'Years'", points: 1 do
    visit "/time_between/results.html"

    expect(page).to have_css("dt", text: /years/i)
  end

  it "contains eight description definitions", points: 2 do
    visit "/time_between/results.html"

    expect(page).to have_tag("dd", count: 8)
  end

end

feature "Descriptive Statistics form" do

  it "has a label for the Numbers field", points: 1 do
    visit "/stats/new.html"

    expect(page).to have_css("label", text: /numbers/i)
  end

  it "has a textarea field", points: 1 do
    visit "/stats/new.html"

    expect(page).to have_tag("textarea")
  end

  it "submits to the Time Between results page", points: 1 do
    visit "/stats/new.html"

    click_on "Calculate!"

    expect(page).to have_css("h1", text: /descriptive statistics results/i)
  end

end

feature "Descriptive Statistics results" do

  it "contains a description term with the word 'Numbers'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /numbers/i)
  end

  it "contains a description term with the phrase 'Sorted Numbers'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /sorted numbers/i)
  end

  it "contains a description term with the word 'Count'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /count/i)
  end

  it "contains a description term with the word 'Minimum'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /minimum/i)
  end

  it "contains a description term with the word 'Maximum'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /maximum/i)
  end

  it "contains a description term with the word 'Range'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /range/i)
  end

  it "contains a description term with the word 'Sum'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /sum/i)
  end

  it "contains a description term with the word 'Mean'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /mean/i)
  end

  it "contains a description term with the word 'Variance'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /variance/i)
  end

  it "contains a description term with the word 'Standard Deviation'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /standard deviation/i)
  end

  it "contains a description term with the word 'Mode'", points: 1 do
    visit "/stats/results.html"

    expect(page).to have_css("dt", text: /mode/i)
  end

  it "contains twelve description definitions", points: 2 do
    visit "/stats/results.html"

    expect(page).to have_tag("dd", count: 12)
  end

end
