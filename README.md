# dApp 개발

이곳은 이더리움 dApp개발을 배운 후 기록을 남기는 공간입니다.

https://www.inflearn.com/course/blockchain-%EC%9D%B4%EB%8D%94%EB%A6%AC%EC%9B%80-dapp/dashboard


Geth 란?
http://wiki.hash.kr/index.php/%EA%B2%8C%EC%8A%A4

Geth를 사용하는 이유, 초기화하는 이유
https://opentutorials.org/course/2869/20676

DAG 란? 방향성 비순환 그래프.
http://wiki.hash.kr/index.php/%EB%B0%A9%ED%96%A5%EC%84%B1_%EB%B9%84%EC%88%9C%ED%99%98_%EA%B7%B8%EB%9E%98%ED%94%84

에폭(epoch)이란? 블록 50개
http://wiki.hash.kr/index.php/%EC%97%90%ED%8F%AD

web3.fromWei(we3.js의 공식문서)
https://web3js.readthedocs.io/en/v1.2.11/web3-utils.html

※ 오류해결
- geth 파라미터 오류해결
    * 'Geth로 프라이빗 노드 구축 II (노드 첫 실행, DAG 파일 생성)' 강의 메모 확인
    * --unlock -> --allow-insecure-unlock
    업데이트됨. --unlock 'value' 대신 --allow-insecure-unlock
    https://www.inflearn.com/questions/13215 , https://github.com/ethereum/go-ethereum/pull/17037              
    
