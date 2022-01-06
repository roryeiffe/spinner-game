import pygame

pygame.init()
screen = pygame.display.set_mode((width, height))
pygame.display.set_caption("TUFF")
screen.fill(background_color)
pygame.display.update()

pygame.init()
(width, height) = (200, 200)
pos = (100,100)
pygame.draw.circle(screen, (  0, 255,   0) , pos, 20)