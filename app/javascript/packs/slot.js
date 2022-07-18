var roulette;

async function jsonGet() {
  try {

    const url = location.href;
    const res = await axios.get(url + '.json');
    // jsonを文字列化してparse
    const items = JSON.parse(JSON.stringify(res.data));
    const keyArray = Object.keys(items);
    const users = []
    keyArray.forEach(function(element){
      var name = items[element].name;
      let len = 4;
      if(name.length > len) {
        var name = name.substring(0, len)+'';
      }
      users.push(name);
    });
    // ルーレットを開始
    function start() {
      roulette = setInterval(function() {
        var idx = users[Math.floor(Math.random() * users.length)]; 
        // ルーレット
        document.getElementById("roulette").innerHTML = idx;
      }, 100);
    }
    start();
  } catch (err) {
    console.error(err);
  }
}


// ルーレットを停止
function stop() {
  if(roulette) {
    clearInterval(roulette);
    console.log(document.getElementById("roulette").innerHTML);
  }
}

async function loop() {
  try {
    const url = location.href;
    const res = await axios.get(url.replace('/rooms','.json'));
    const items = JSON.parse(JSON.stringify(res.data));
    const membersCounts = Object.values(items)[3];
    // jsonを文字列化してparse
    let count = 0;
    const countUp = () => {
      if(count < membersCounts) {
        jsonGet();
      }
      stop();
      count++;
    }
    const intervalId = setInterval(() => {
      countUp();
      if(count > membersCounts) {　
        clearInterval(intervalId);　//intervalIdをclearIntervalで指定している
      }}, 5000);
  } catch (err) {
    console.log(err);
  }
}
document.addEventListener('turbolinks:load', function() {
  // クリックイベントを登録
  st.onclick = () => {
    loop();
  };
})
