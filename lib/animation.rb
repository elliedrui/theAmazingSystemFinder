

class Animation

  @anim_text_ing = ["scraping","loading","fetching", "pinging"]
  @anim_text_er = ["scraper","loader", "fetcher",]
  @anim_char_array = ["-","\\","|","/","-"]

  def self.scraperforchris
    system "clear"
    ing_sample = @anim_text_ing.sample
    er_sample = @anim_text_er.sample
    7.times do
      @anim_char_array.each do |animation|
        puts "#{ing_sample} #{er_sample}..........#{animation}"
        sleep(0.03)
        system "clear"
      end
    end
  end

  def self.loading_anim
    loading_sample = @anim_text_er.sample
    system "clear"
    7.times do
      @anim_char_array.each do |animation|
        puts "loading #{loading_sample}..........#{animation}"
        sleep(0.06)
        system "clear"
      end
    end
  end

  def self.exit_anim
    system "clear"
    exiting_sample = @anim_text_er.sample
    7.times do
      @anim_char_array.each do |animation|
        puts "exiting #{exiting_sample}..........#{animation}"
        sleep(0.06)
        system "clear"
      end
    end
  end
  


end
