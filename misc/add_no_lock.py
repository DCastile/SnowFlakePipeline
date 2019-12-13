import os

relative_qry_folder_path = '../src_qrys/singlepoint/'
os.chdir(relative_qry_folder_path)


file_names = os.listdir()


for file_name in file_names:
    with open(file_name, 'r') as f:
        text = f.read()
        text += ' with(nolock)'

    with open(file_name, 'w') as f:
        f.write(text)
