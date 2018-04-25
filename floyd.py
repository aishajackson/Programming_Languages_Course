#!/user/bin/python
#This program implements Floyd's algorithm
#Aisha Jackson
#November 15, 2014

print "This program is going to implement Floyd's Algorithm with the major cities in the United States\n"

print "The matrix is considering the miles between each location\n"

print "The cities are: "
print "1. New York, NY"
print "2. Los Angeles, CA"
print "3. Chicago, IL"
print "4. Houston, TX"
print "5. Philadelphia, PA"
print "6. Phoenix, AZ"
print "7. San Antonio, TX"
print "8. San Diego, CA"
print "9. Dallas, TX"
print "10. San Jose, CA\n"

global startmatrix

startmatrix = (
    [    0,  2792,  790, 1627,   95, 2407, 1822, 2759, 1547, 2941  ], 
    [ 2792,     0, 2016, 1546, 2709,  372, 1353,  120, 1436, 340   ],
    [  790,  2016,    0, 1084,  759, 1753, 1199, 2077,  925, 2164  ],
    [ 1627,  1546, 1084,    0, 1548, 1174,  197, 1468,  239, 1858  ],
    [   95,  2709,  759, 1548,    0, 2342, 1742, 2695, 1467, 2910  ],
    [ 2407,   372, 1753, 1173, 2342,    0,  981,  355, 1064, 711   ],
    [ 1822,  1353, 1199,  197, 1742,  981,    0, 1275,  274, 1692  ],
    [ 2759,   120, 2077, 1468, 2695,  355, 1275,    0, 1358, 460   ],
    [ 1547,  1436,  925,  239, 1467, 1064,  274, 1358,    0, 1685  ],
    [ 2941,   340, 2164, 1858, 2910,  711, 1692,  460, 1685,    0  ] )


global minimumpath
minimumpath = [
    [  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ],
    [  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 ]
]

print "Original Weighted Matrix: "
print (startmatrix)
