# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"B62y800","system":"readv2"},{"code":"BBgC.11","system":"readv2"},{"code":"B602300","system":"readv2"},{"code":"BBgH.00","system":"readv2"},{"code":"B620300","system":"readv2"},{"code":"B62y500","system":"readv2"},{"code":"B62y200","system":"readv2"},{"code":"B601800","system":"readv2"},{"code":"B602100","system":"readv2"},{"code":"BBgC.12","system":"readv2"},{"code":"B601200","system":"readv2"},{"code":"B62y100","system":"readv2"},{"code":"B620800","system":"readv2"},{"code":"B62y600","system":"readv2"},{"code":"B601500","system":"readv2"},{"code":"BBk5.00","system":"readv2"},{"code":"B601100","system":"readv2"},{"code":"B602200","system":"readv2"},{"code":"B62y300","system":"readv2"},{"code":"B621500","system":"readv2"},{"code":"B602500","system":"readv2"},{"code":"B620100","system":"readv2"},{"code":"B620500","system":"readv2"},{"code":"BBgL.00","system":"readv2"},{"code":"B601300","system":"readv2"},{"code":"B621800","system":"readv2"},{"code":"B600100","system":"readv2"},{"code":"B600300","system":"readv2"},{"code":"B620200","system":"readv2"},{"code":"B621300","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('non-hodgkin-lymphoma-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["mlymphocytic-non-hodgkin-lymphoma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["mlymphocytic-non-hodgkin-lymphoma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["mlymphocytic-non-hodgkin-lymphoma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
