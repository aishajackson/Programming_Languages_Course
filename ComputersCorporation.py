#Computers Corporation Program
#Aisha Jackson
#November 12, 2014

from Tkinter import *

#set up the viewer
root=Tk()
root.title("Reasonable Computers Coporation")
root.geometry("400x700")
Var1=IntVar()
Var2=IntVar()
Var3=IntVar()
Var4=IntVar()
Var5=IntVar()
Var6=IntVar()
Var7=IntVar()
totalvalue=0

#set up the buttons/checkbozes
Printer=Checkbutton(root,text="Printer\n$30.00",variable=Var1,onvalue=30\
                ,offvalue=0,height=5,width=20)
Monitor=Checkbutton(root,text="Monitor\n$170.00",variable=Var2,onvalue=170\
                 ,offvalue=0,height=5,width=20)
Modem=Checkbutton(root,text="Modem\n$88.00",variable=Var3,onvalue=88\
                          ,offvalue=0,height=5,width=20)
Ehd=Checkbutton(root,text="External Hard Drive\n$52.00",variable=Var4,onvalue=52\
                         ,offvalue=0,height=5,width=20)
Scanner=Checkbutton(root,text="Scanner\n$250.00",variable=Var5,onvalue=250\
                       ,offvalue=0,height=5,width=20)
Mouse=Checkbutton(root,text="Mouse\n$9.00",variable=Var6,onvalue=9\
                    ,offvalue=0,height=5,width=20)


#calculate the total
total_lbl = Label(root)
def click():
    total = 500
    for var in (Var1, Var2, Var3, Var4, Var5, Var6, Var7):
        total += var.get()
        #display the total
    total_lbl.config(text="${}.00".format(total))
    #total button
somebutton=Button(root, text="Total", command=click)


Printer.pack()
Monitor.pack()
Modem.pack()
Ehd.pack()
Scanner.pack()
Mouse.pack()
somebutton.pack()


total_lbl.pack()


root.mainloop()
