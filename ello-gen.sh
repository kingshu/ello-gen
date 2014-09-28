url="https://ello.co/api/v1/availability/invitation_code?value="

for i in $(cat words.txt); do
    for j in $(cat words.txt); do
        for k in $(cat words.txt); do
            for l in $(cat words.txt); do
                    content="$(curl -s "$url/$i-$j-$k)")"
                    torf="${content:13:1}"
                    while [ "$content" == "Enhance your calm" ]; do
                        echo "    > Waiting 10s and trying again..."
                        sleep 10

                        content="$(curl -s "$url/$i-$j-$k)")"
                        torf="${content:13:1}"
                    done

                    if [ $torf == "t" ]; then
                        echo "$i-$j-$k"
                    fi
            done
        done
    done
done
