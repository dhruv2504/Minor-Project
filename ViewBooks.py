from tkinter import *
import PIL
from PIL import ImageTk, Image
from tkinter import messagebox
# import pymysql

# Add your own database name and password here to reflect in the code
import mysql.connector
from mysql.connector import Error

try:
    connection = mysql.connector.connect(host="localhost",
                                         database="db",
                                         user="root",
                                         password="aryabhatt2488",
                                         auth_plugin='mysql_native_password'
                                         )
    if connection.is_connected():
        db_Info = connection.get_server_info()
        print("Connected to MySQL Server version ", db_Info)
        cursor = connection.cursor(buffered=True)
        cursor.execute("select database();")
        record = cursor.fetchall()
        print("You're connected to database: ", record)

except Error as e:
    print("Error while connecting to MySQL", e)


def View():
    # Enter Table Names here
    bookTable = "books"

    root = Tk()
    root.title("Library")
    root.minsize(width=400, height=400)
    root.geometry("600x500")

    Canvas1 = Canvas(root)
    Canvas1.config(bg="#12a4d9")
    Canvas1.pack(expand=True, fill=BOTH)

    headingFrame1 = Frame(root, bg="#FFBB00", bd=5)
    headingFrame1.place(relx=0.25, rely=0.1, relwidth=0.5, relheight=0.13)

    headingLabel = Label(headingFrame1, text="View Books", bg='black', fg='white', font=('Courier', 15))
    headingLabel.place(relx=0, rely=0, relwidth=1, relheight=1)

    labelFrame = Frame(root, bg='black')
    labelFrame.place(relx=0.1, rely=0.3, relwidth=0.8, relheight=0.5)
    y = 0.25

    Label(labelFrame, text="%-10s%-40s%-30s%-20s" % ('BID', 'Title', 'Author', 'Status'), bg='black', fg='white').place(
        relx=0.07, rely=0.1)
    Label(labelFrame, text="----------------------------------------------------------------------------", bg='black',
          fg='white').place(relx=0.05, rely=0.2)
    getBooks = "select * from " + bookTable
    cursor.execute(getBooks)
    connection.commit()
    try:

        for i in cursor:
            Label(labelFrame, text="%-10s%-30s%-30s%-20s" % (i[0], i[1], i[2], i[3]), bg='black', fg='white').place(
                relx=0.07, rely=y)
            y += 0.1
        messagebox.showinfo("succed to fetch files from database")
    except:
        messagebox.showinfo("Failed to fetch files from database")

    quitBtn = Button(root, text="Quit", bg='#f7f1e3', fg='black', command=root.destroy)
    quitBtn.place(relx=0.4, rely=0.9, relwidth=0.18, relheight=0.08)

    root.mainloop()
