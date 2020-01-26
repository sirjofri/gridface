DIRS=`{ls -F | grep '/' | sed 's:/::g'}

all:V: $DIRS/.dict

%/.dict:
	echo -n > $target
	NAMEDIRS=`{cd $stem; ls -F | grep '/' | sed 's:/::g'}
	for(file in `{cd $stem; ls $NAMEDIRS}){
		ifs='/@'
		fargs=`{echo $file}
		echo `\n{echo $fargs(3)^/$fargs(2) $file | tr -d '\
	'} >> $target
	}
