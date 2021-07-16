# Cow food expenses data record: Eid ul Adha, 2021

date_input = input("Do you want to enter date? Y or N: ")

if "Y".lower() == date_input:
    date = input("Enter Date: ")
    with open("cow_expense.txt", "a") as f:
        f.write("\n")
        write_date = ("Date:{:>15}".format(date))
        f.write(write_date)
else:
    print("Thank You")

while True:
    amount = input("Enter  Amount: ")
    item = input("Enter Item: ")
    f = open("cow_expense.txt", "a")
    f.write("\n")
    write_file = ("Item:{:^20} Amount:{:^20}".format(item, amount))
    f.write(write_file)
    f.close()
    enter_again = input("Do you want to continue? Y or N: ")
    if "Y".lower() == enter_again:
        continue
    else:
        break
