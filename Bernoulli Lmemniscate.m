% Parâmetros da lemniscata de Bernoulli
a = 1; % Parâmetro a
theta = linspace(0, 2*pi, 1000); % Ângulos

% Equações paramétricas para a lemniscata de Bernoulli em coordenadas cartesianas
x = a * sqrt(2) * cos(theta) ./ (sin(theta).^2 + 1);
y = a * sqrt(2) * cos(theta) .* sin(theta) ./ (sin(theta).^2 + 1);
z = a * sqrt(2) * cos(theta) .* cos(theta) ./ (sin(theta).^2 + 1);

% Plot em 3D
figure;
plot3(x, y, z, 'LineWidth', 2);
title('Lemniscata de Bernoulli em 3D');
xlabel('Eixo X');
ylabel('Eixo Y');
zlabel('Eixo Z');
grid on;
axis equal;

% Salvar como imagem PNG
print('lemniscata_de_bernoulli.png', '-dpng');

disp('Imagem salva como lemniscata_de_bernoulli.png');
