from pylab import *
import sys
import time

# load robot file
filename = 'drawFace6.mp'
if len(sys.argv) == 2:
    filename = sys.argv[1]

with open(filename) as f:
    lines = f.read().splitlines()

# build sequence of XY
seq = []
x = []
y = []
in_seq = False

for line in lines:
    if 'Pen up' in line:
        in_seq = False
        # end of a sequence
        if len(x):
            seq.append([[v for v in x],[v for v in y]])
            x = []
            y = []
    elif 'Pen down' in line:
        # begin new sequence
        in_seq = True
    elif in_seq and 'MoveC' in line:
        # new point
        xy = line.split('X')[1].split('Y')
        x.append(float(xy[0]))
        y.append(float(xy[1]))
        
close('all')
F = figure()
xmM = [v for xy in seq for v in xy[0]]
ymM = [v for xy in seq for v in xy[1]]
xm,xM = min(xmM), max(xmM)
ym,yM = min(ymM), max(ymM)
a = .05
ax = gca()
ax.axis([xm-a*(xM-xm), xM+a*(xM-xm), ym-a*(yM-ym), yM+a*(yM-ym)])
ax.invert_yaxis()
ax.set_aspect('equal')
tight_layout()

print '{} chains, {} points total'.format(len(seq), len(xmM))
lines = []
for x,y in seq:
    lines.append(plot([],[])[0])
    for i in xrange(len(x)):
        lines[-1].set_data(x[:i],y[:i])
        pause(.0000001)
        draw()
    pause(1)
    #plot(x,y)
show()
