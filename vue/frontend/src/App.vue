<template>
  <div id="app">
    <div class="container">
      <div class="button" @click="handleClickGETButton">GET</div>
      <div class="message">{{ messageGET }}</div>
    </div>
    <div class="container">
      <div class="button" @click="handleClickPOSTButton">POST</div>
      <div class="message">{{ messagePOST }}</div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
const BASE_URL = 'http://localhost:3000';

export default {
  data() {
    return {
      csrfToken: '',
      messageGET: "---",
      messagePOST: "---",
    };
  },
  async created() {
    axios.defaults.withCredentials = true;
    const url = this.getUrl('get_csrf_token');

    await this.request('get', url).then(res => {
      this.csrfToken = res.headers['x-csrf-token'];
      console.log(this.csrfToken)
    }).catch(res => {
      console.log(res);
    });
  },
  methods: {
    async handleClickGETButton() {
      this.messageGET = "Waiting...";
      const url = this.getUrl('get_api');

      await this.request('get', url).then(res => {
        this.messageGET = "Success";
        console.log(res);
      }).catch(res => {
        this.messageGET = "Error";
        console.log(res);
      });
    },

    async handleClickPOSTButton() {
      this.messagePOST = "Waiting...";
      const params = { key: 'value' };
      const url = this.getUrl('post_api');

      await this.request('post', url, params).then(res => {
        this.messagePOST = "Success";
        console.log(res);
      }).catch(res => {
        this.messagePOST = "Error";
        console.log(res);
      });
    },

    getUrl(...paths) {
      return `${BASE_URL}/${paths.join('/')}`;
    },

    async request(method, url, ...args) {
      return await axios.create({
        headers: {
          'X-CSRF-Token': this.csrfToken,
        },
      })[method](url, ...args);
    },
  },
}
</script>

<style>
.container {
  display: flex;
  gap: 20px;
  margin-bottom: 20px;
}
.button {
  width: 80px;
  height: 40px;
  font-size: 20px;
  border-radius: 5px;
  text-align: center;
  line-height: 40px;
  background-color: blue;
  color: white;
  box-sizing: border-box;
  user-select: none;
  cursor: pointer;
}
.button:hover {
  border: 2px solid blue;
  background-color: white;
  color: blue;
}
.message {
  height: 40px;
  line-height: 40px;
  font-size: 20px;
}
</style>
