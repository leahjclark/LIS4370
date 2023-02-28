s3ex = list(name = 'A', number=1, num = 'one')
class(s3ex) = 'example'
otype(s3ex)

setClass('example',representation(name='character', number='numeric', num='character'))
s4ex <- new("example", name = "B", number = 2, num = 'two')
otype(s4ex)
