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

트랜잭션 해시란? 해당 트랜잭션의 고유 ID
https://brunch.co.kr/@nujabes403/15

Dapp과 Solidity 개발 환경 개요(geth는 가나슈가 대체, solc, EVM)
https://noooop.tistory.com/entry/Solidity-%EA%B0%9C%EB%B0%9C-Dapp%EA%B3%BC-Solidity-%EA%B0%9C%EC%9A%94

비동기, promise, .then
https://joshua1988.github.io/web-development/javascript/promise-for-beginners/#%ED%94%84%EB%A1%9C%EB%AF%B8%EC%8A%A4-%EC%BD%94%EB%93%9C---%EC%89%AC%EC%9A%B4-%EC%98%88%EC%A0%9C

상태변수 - 개발자가 설정. 어떤 함수의 속한 변수가 아니라 컨트랙트에 속한 변수의 의미. contract의 최상위단에 선언된 변수. https://steemit.com/kr/@etainclub/solidity-3
전역변수 - msg 같은 개념. https://solidity-kr.readthedocs.io/ko/latest/introduction-to-smart-contracts.html

테스트란?
https://ui.toast.com/fe-guide/ko_TEST

Mocha란?
https://heropy.blog/2018/03/16/mocha/

Chai란? (it문에 대한 약간의 설명)
https://medium.com/sjk5766/mocha-%EC%82%AC%EC%9A%A9%EA%B8%B0-2046b1ec1abd

트랜잭션 로그에 이벤트 데이터를 집어넣기 위해선 'emit'키워드를 사용한다. 
https://has3ong.tistory.com/393

getJSON
https://api.jquery.com/jquery.getjson/

show.bs.modal
모달이 열릴 때 바로 실행되는 이벤트입니다.
https://nowonbun.tistory.com/538

e.relatedTarget
event.relatedTarget 속성은 마우스 이동 시 입력되거나 종료되는 요소를 반환합니다
https://www.w3schools.com/jquery/event_relatedtarget.asp

parseFloat
parseFloat()은 매개변수로 주어진 값 분석하고 부동소수점 수를 반환합니다. 기호(+, -), 숫자(0-9), 소수점 또는 지수 이외의 문자를 발견하면, 그 전까지의 결과만 반환하고 문제의 문자와 그 이후는 모두 무시합니다.
https://developer.mozilla.org/ko/docs/orphaned/Web/JavaScript/Reference/Global_Objects/parseFloat

float 타입
숫자라는 것은 4나 4.0이나 같은 것입니다. 하지만 파이썬에서는 다릅니다. 이 둘은 동시에 연산을 할 수 있기는 하겠으나, 값이 같을지는 몰라도 같은 타입은 아닙니다. 4는 정수고, 4.0은 수소점이 있는 수이기 때문이죠. 저흰 전자를 int라고 부르고 후자를 float이라고 부릅니다.
https://alegruz.imweb.me/blog/?idx=244919&bmode=view

e.currentTarget
https://velog.io/@edie_ko/JavaScript-event-target%EA%B3%BC-currentTarget%EC%9D%98-%EC%B0%A8%EC%9D%B4%EC%A0%90



※ 오류해결
- geth 파라미터 오류해결
    * 'Geth로 프라이빗 노드 구축 II (노드 첫 실행, DAG 파일 생성)' 강의 메모 확인
    * --unlock -> --allow-insecure-unlock
    업데이트됨. --unlock 'value' 대신 --allow-insecure-unlock
    https://www.inflearn.com/questions/13215 , https://github.com/ethereum/go-ethereum/pull/17037         

- 트러플 5.0.0 에서의 web3 사용 
https://medium.com/rayonprotocol/web3-js-%EB%B2%84%EC%A0%84-1-0-0-%EB%B3%80%EA%B2%BD%EC%82%AC%ED%95%AD-98b427d3d819

- constructor에 public 표시 안해도 됨.
https://docs.soliditylang.org/en/v0.7.0/070-breaking-changes.html#functions-and-events
Visibility (public / external) is not needed for constructors anymore:...

- owner.transfer(msg.value); 에서 다음과 같은 오류 발생
"send" and "transfer" are only available for objects of type "address payable", not "address".

해결 : address public owner; 라고 정의되었던 것을 address payable public owner; 로 바꿈. payable만 추가.
https://ethereum.stackexchange.com/questions/63618/address-transfer-not-working
예전엔 address(uint160(owner)).transfer(msg.value); -> 이렇게 해결했었음.

    
