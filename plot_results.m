
file = fopen('../world/data.csv');
tline = fgetl(file);
figure();

while ischar(tline)
    C2 = textscan(tline,'%f32 %f32 %f32 %f32 %f32','Delimiter',';');
    clf
    plot(C2{2}, C2{3},'bo', C2{4}, C2{5},'ro');
    grid on
    viscircles([0,0], 1.0,'LineStyle',':', 'Color', 'k');
    axis([-1.2 1.2 -1.2 1.2]);
    axis square;
    tline = fgetl(file);
    pause(0.00000001);
    hold on
end
fclose(file);
hold off
