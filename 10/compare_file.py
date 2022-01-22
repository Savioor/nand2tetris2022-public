

def compr(linesA, linesB):
    for i,lins in enumerate(zip(linesA, linesB)):
        linA,linB  = lins
        compr_lines(linA, linB, i)
    assert len(linesA) == len(linesB)
    # print("PASSED TEST!")
    return True
def compr_lines(linA, linB, i):
    wordsA, wordsB = linA.replace(">","> ").replace("<"," <").split(), linB.replace(">","> ").replace("<"," <").split()
    assert len(wordsA) == len(wordsB), "error at line "+ str(i) +f"\n{linA}\n{linB}"
    for wA, wB in zip(wordsA, wordsB):
        assert wA.strip() == wB.strip(), "error at line "+ str(i)+f"\n{linA}\n{linB}"