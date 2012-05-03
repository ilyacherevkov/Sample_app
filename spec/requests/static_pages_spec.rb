# coding: utf-8
require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Главная" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'JobMate') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Главная' }
  end

  describe "Помощь" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Помощь') }
    it { should have_selector('title', text: full_title('Помощь')) }
  end

  describe "О нас" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'О нас') }
    it { should have_selector('title', text: full_title('О нас')) }
  end

  describe "Контакты" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Контакты') }
    it { should have_selector('title', text: full_title('Контакты')) }
  end
end