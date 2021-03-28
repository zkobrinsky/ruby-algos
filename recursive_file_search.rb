require 'pry'

def search(full_filepath, filename)
    puts("checking: " + full_filepath)

    if full_filepath.include? filename
        puts("found: "+filename+" in "+full_filepath)
        true
    elsif !File.directory? full_filepath
        false
    else
        for f in Dir.children(full_filepath)
            found = search(File.join(full_filepath, f), filename)
            return true if found
        end
        false
    end
end

# readme.txt does not exist... change filename argument to match your desired file
search("/mnt/c/Users/zachk/dev", "readme.txt")