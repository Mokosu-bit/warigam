function start() {
  jsonGet();
}

async function jsonGet() {
  try {

    const url = location.href;
    const res = await axios.get(url + '.json');
    // jsonを文字列化してparse
    const items = JSON.parse(JSON.stringify(res.data));
    const keyArray = Object.keys(items);
    const users = []
    keyArray.forEach(function(element){
      users.push(items[element].name);
    });
    console.log(users);
  } catch (err) {
    console.error(err);
  }
}

function slot() {
  jsonGet();
}

document.addEventListener('turbolinks:load', function() {
  // クリックイベントを登録
  btn.onclick = () => { slot(); }; // document.getElementById('btn');を省略
})
