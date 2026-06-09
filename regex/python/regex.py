import re

ok = "Understand? OK or NOT"
ok_regex = "OK"
print(re.findall(ok_regex, ok))

pdf = "readme.md \
    document.pdf \
    image.png \
    music.mp4 \
    manual.pdf"
pdf_regex = "\\w+\\.pdf"
print(re.findall(pdf_regex, pdf))

