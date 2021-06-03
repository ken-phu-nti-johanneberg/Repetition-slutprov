def show_content(file_path)
    begin
        file_lines = File.readlines("#{file_path}")
    rescue Errno::ENOENT => e
        puts "Det finns inte en sådan fil"
        puts "Försök igen"
        file_path = gets.chomp
        retry
    end
    puts file_lines
end

show_content("en_fil_som_inte_finns.txt")