scores=""
sum=0
count=0
menu=0

while [ "$menu" -ne 5 ]
do
    echo "1. 과목 성적 추가"
    echo "2. 입력된 모든 점수 보기"
    echo "3. 평균 점수 확인"
    echo "4. 평균 등급 확인"
    echo "5. 종료"
    echo "메뉴 번호를 입력하세요:"

    read menu

    if [ "$menu" -eq 1 ]; then
        echo "점수를 입력하세요:"
        read score

        scores="$scores $score"
        sum=$(expr "$sum" + "$score")
        count=$(expr "$count" + 1)

    elif [ "$menu" -eq 2 ]; then
        echo "입력된 점수:"
        echo "$scores"

    elif [ "$menu" -eq 3 ]; then
        echo "평균 점수:"
        echo "$sum / $count" | bc -l

    elif [ "$menu" -eq 4 ]; then
        standard=$(expr "$count" \* 90)

        if [ "$sum" -ge "$standard" ]; then
            echo "평균 등급: A"
        else
            echo "평균 등급: B"
        fi

    elif [ "$menu" -eq 5 ]; then
        echo "종료합니다."
    fi
done
