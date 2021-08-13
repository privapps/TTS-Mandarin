from gp2py import TextNormal
def is_cn_char(char):
    return char >= u'\u4e00' and char <= u'\u9fa5'
def cn_char_only(txt):
    last_char_is_cn = False
    chars = []
    for char in txt:
        if is_cn_char(char):
            chars.append(char)
            last_char_is_cn = True
        elif last_char_is_cn:
            chars.append(',')
            last_char_is_cn = False
    return "".join(chars)
import argparse
if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-t','--text', type=str)
    parser.add_argument('-v','--voice', type=int, default=1)

    args = parser.parse_args()
    voice = args.voice

    fixed = cn_char_only(args.text)

    tn = TextNormal('gp.vocab','py.vocab',add_sp1=True,fix_er=True)
    py_list,gp_list = tn.gp2py(fixed)
    dest_file='processed.txt'
    with open(dest_file, 'w') as writer:
        for i, (py,gp) in enumerate(zip(py_list,gp_list)):
            writer.write("{:06d}|{}|{} |{}\n".format(i, py, gp,voice))

