function movieList = loadMovieList()

fid = fopen('data/movie_ids.txt');

n = 1682; 

movieList = cell(n, 1);
for i = 1:n
    line = fgets(fid);
    [idx, movieName] = strtok(line, ' ');
    movieList{i} = strtrim(movieName);
end
fclose(fid);
end