# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"B600.00","system":"readv2"},{"code":"BBh2.00","system":"readv2"},{"code":"BBh..00","system":"readv2"},{"code":"B60..00","system":"readv2"},{"code":"BBh0.00","system":"readv2"},{"code":"B60y.00","system":"readv2"},{"code":"B600700","system":"readv2"},{"code":"B60z.00","system":"readv2"},{"code":"B600z00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('non-hodgkin-lymphoma-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["non-hodgkin-lymphoma-mreticulosarcoma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["non-hodgkin-lymphoma-mreticulosarcoma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["non-hodgkin-lymphoma-mreticulosarcoma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
