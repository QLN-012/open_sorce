echo "1. 사용자 정보"
echo "2. CPU 사용률"
echo "3. 메모리 사용량"
echo "4. 디스크 사용량"
echo "메뉴 번호를 입력하세요:"

read menu

if [ "$menu" -eq 1 ]; then
    id

elif [ "$menu" -eq 2 ]; then
    top

elif [ "$menu" -eq 3 ]; then
    free

elif [ "$menu" -eq 4 ]; then
    df
fi
