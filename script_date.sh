# Script que utiliza um horario informado ou o disponivel no date para exibir uma saudacao...

# Util para emails enviados por scripts...

# 22/03/2019

#

#

if [ $# -eq 0 ]; then

        horario=`date | awk '{print $4}'`

        hora=`echo "$horario"|cut -f1 -d:`

else

        hora=$1

fi

#


#

if [ $hora -le 12 -a $hora -ge 5 ]; then

        echo "Bom Dia! "

elif [ $hora -ge 13 -a $hora -le 17 ]; then

        echo "Boa Tarde! "

else

        echo "Boa Noite! "

fi

#
