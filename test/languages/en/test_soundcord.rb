# encoding: utf-8

require 'test/unit'
require 'soundcord'

class SoundCordTest < Test::Unit::TestCase
  def test_initiations_en
    SoundCord.load_language 'en'

    assert_equal "RL", "aerial".phonetize
    assert_equal "RP", "wrap".phonetize
    assert_equal "SN", "xeno".phonetize
    assert_equal "TFR", "whatever".phonetize
    assert_equal "NM", "gnome".phonetize
    assert_equal "NF", "knife".phonetize
    assert_equal "NMNK", "pneumonic".phonetize
  end
  def test_unusual_combinations_en
    SoundCord.load_language 'en'

    assert_equal "0TR", "theater".phonetize
    assert_equal "TX", "touch".phonetize
    assert_equal "XL", "shell".phonetize
    assert_equal "KRX", "crutch".phonetize
    assert_equal "FS", "phase".phonetize
    assert_equal "BKR", "beggar".phonetize
  end
  def test_terminations_en
    SoundCord.load_language 'en'

    assert_equal "LM", "lmb".phonetize
  end
  def test_middle_en
    SoundCord.load_language 'en'

    # couldn't remember a better word with SCH in the middle
    assert_equal "PRSK", "porsche".phonetize
  end
  def test_duplicate_exceptions_en
    SoundCord.load_language 'en'

    assert_equal "GKLS", "goggles".phonetize
  end
  def test_special_chars_en
    SoundCord.load_language 'en'

    assert_equal true, "Qeyla".homophone?("keyla")
    assert_equal true, "Courtiney".homophone?("kourtiney")
    assert_equal true, "Quartz".homophone?("kuarts")
    assert_equal true, "falue".homophone?("value")
    assert_equal true, "data".homophone?("tada")
  end
  def test_second_follwed_by_en
    SoundCord.load_language 'en'

    assert_equal "JM", "ogema".phonetize
  end
  def test_vowels_pronunciation_insignificance_en
    SoundCord.load_language 'en'

    assert_equal "MSX", "messiah".phonetize
    assert_equal "ML", "mehlia".phonetize
  end
  def test_find_in_collection_en
    SoundCord.load_language 'en'

    list = %w( mail male main Maine mane )
    expected = %w( main Maine mane )
    assert_equal expected, list.homophones("main")
  end
end