import { defineStore } from 'pinia';

export const useCounterStore = defineStore('counter', {
  state: () => ({
    count: 0,
    user: null,
  }),
  actions: {
    increment() {
      this.count++;
    },
    async fetchUser() {
      // Используем Axios
      const response = await axios.get('/api/user');
      this.user = response.data;
    },
  },
});