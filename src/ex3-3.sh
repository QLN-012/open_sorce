echo "첫 번째 과목 점수를 입력:"
read score1

echo "두 번째 과목 점수를 입력:"
read score2

if [ "$score1" -ge 90 ]; then
    echo "과목 등급: A"
else
    echo "과목 등급: B"
fi

if [ "$score2" -ge 90 ]; then
    echo "과목 등급: A"
else
    echo "과목 등급: B"
fi

sum=$(expr "$score1" + "$score2")

if [ "$sum" -ge 180 ]; then
    echo "평균 등급: A"
else
    echo "평균 등급: B"
fi
