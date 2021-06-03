# Dokumentation

def add_to_file(file, string)
    if File.file?(file) == true
        lista = File.open(file, "a")
        lista.close
    else
        lista = File.open(file, "w")
    end
    
    if  string.class == String
        lista = File.open(file, "a")
        lista.puts(string)
        lista.close
        puts File.readlines(file)
    else
        puts "Du måste skriva in en sträng försök igen"
        puts "Så här ser listan ut just nu:"
        puts File.readlines(file)
    end
end

add_to_file("test.txt", 6)

# Vad är undantagshantering i A-nivå