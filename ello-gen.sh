url="https://ello.co/api/v1/availability/invitation_code?value="

for i in $(cat words.txt); do
    for j in $(cat words.txt); do
        for k in $(cat words.txt); do
            content="$(curl -s "$url/$i-$j-$k)")"
            torf="${content:13:1}"
            if [ $torf == "t" ]; then
                echo $i-$j-$k
            fi
        done
    done
done
