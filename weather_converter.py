import csv

with open('weather.dat', 'r') as dat_file, open('weather.csv', 'w', newline='') as csv_file:
   csv_writer = csv.writer(csv_file)
   for line in dat_file:
       fields = line.split()
       csv_writer.writerow(fields)