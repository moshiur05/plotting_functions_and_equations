from matplotlib import pyplot as plt

x = []
y = []

i = float(input())
while i != 'end' :
	x.append(float(i))
	y.append(float(input()))
	i = input()

plt.plot(x,y)
plt.show()