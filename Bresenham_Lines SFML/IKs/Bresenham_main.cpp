/*
taskkill /F /IM IKs.exe
*/
#include <iostream>
#include "SFML/Graphics.hpp"
#define Deg_To_Rad 0.0174533f
#define Rad_To_Deg 57.2958f
using std::cout;
using std::vector;

int W = 100, H = 100;

const int pixel_Size = 5;
const int res_X = 160, res_Y = 120;
std::vector<std::vector<sf::RectangleShape>> display;

void Lines_Bresenham (float x0, float y0, float x1, float y1) {
    if (x0 < 0) x0 = 0; if (res_X <= x0) x0 = res_X - 1;
    if (x1 < 0) x1 = 0; if (res_X <= x1) x1 = res_X - 1;
    if (y0 < 0) y0 = 0; if (res_Y <= y0) y0 = res_Y - 1;
    if (y1 < 0) y1 = 0; if (res_Y <= y1) y1 = res_Y - 1;
    //cout << "\n(" << res_X << ", " << res_Y << ")  ;  (" << x0 << ", " << y0 << ")  ;  (" << x1 << ", " << y1 << ")";

    float dx = abs(x0 - x1);
    float dy = abs(y0 - y1);
    float error = dx - dy;

    int sx = (x0 < x1) ? 1 : -1;
    int sy = (y0 < y1) ? 1 : -1;

    int x = x0;
    int y = y0;


    while (x != x1 || y != y1) {
        //cout << "\n" << x << ", " << y;
        display[y][x].setFillColor(sf::Color(230, 230, 230));

        float e2 = error * 2;

        if (e2 > -dy) {
            error -= dy;
            x += sx;
        }

        if (e2 < dx) {
            error += dx;
            y += sy;
        }
    }
}

int main() {
    W = res_X * pixel_Size;
    H = res_Y * pixel_Size;
    sf::RenderWindow app(sf::VideoMode(W, H), "Bresenham", sf::Style::Default, sf::ContextSettings(0, 0, 8));
    
    display.resize(res_Y, vector<sf::RectangleShape>(res_X));
    for (int y = 0; y < res_Y; y++) {
        for (int x = 0; x < res_X; x++) {
            display[y][x].setSize(sf::Vector2f(pixel_Size, pixel_Size));
            display[y][x].setPosition(pixel_Size * x, pixel_Size * y);
        }
    }

    while (app.isOpen())
    {
        sf::Event event;
        while (app.pollEvent(event)) {
            if (event.type == sf::Event::Closed) app.close();
            if (event.type == sf::Event::Resized) app.setView(sf::View(sf::FloatRect(0, 0, event.size.width, event.size.height)));

            if (event.type == sf::Event::KeyPressed)
            {
                switch (event.key.code)
                {
                //case sf::Keyboard::A: Arm1.setSize({ Arm1.getSize().x, Arm1.getSize().y - diff }); break;
                default: break;
                }
            }
        }

        for (int y = 0; y < res_Y; y++) {
            for (int x = 0; x < res_X; x++) {
                display[y][x].setFillColor(sf::Color(20*x, 10*y, (x * y) / 200));
            }
        }

        //Lines_Bresenham(15, 13, sf::Mouse::getPosition(app).x / pixel_Size, sf::Mouse::getPosition(app).y / pixel_Size);

        /*Draw*/
        {
            app.clear(sf::Color(23, 24, 25));

            for (int y = 0; y < res_Y; y++) {
                for (int x = 0; x < res_X; x++) {
                    app.draw(display[y][x]);
                }
            }

            app.display();
        }
    }


	return 0;
}