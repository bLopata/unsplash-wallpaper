const http = require('http');
const axios = require('axios');
const fs = require('fs');
const path = require('path');
const $ = require('cheerio');

async function randy() {
  const res = await axios.request({
    responseType: 'arraybuffer',
    url: 'http://source.unsplash.com/random',
    method: 'get',
    headers: {
      'Content-Type': 'image/jpeg'
    },
    followRedirects: true
  });

  const _dat = path.join(__dirname, `image1.jpg`);
  const save = fs.writeFileSync(_dat, res.data);
  return save;
}

async function main() {
  try {
    return await randy();

  } catch (ex) {
    console.log('Error! Error! RUUUUUNNN TOOO THEEEE HIIIIIILLLLS', ex)
  }
}
main();