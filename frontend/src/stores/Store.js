import { defineStore } from 'pinia';
import axios from 'axios';


export const useStore = defineStore('Store', {

  state: () => ({
    checkData: '',
    users: '',     
    loading: false, 
    error: null,   
  }),


  actions: {
    async fetchUsers() {
      this.loading = true;  
      this.error = null;  
      try {
        const response = await axios.get('http://127.0.0.1:8000/');
        this.users = response.data;  
      } catch (err) {
        this.error = err.message;  
      } finally {
        this.loading = false;  
      }
    },

    async check(message, id) {
      this.loading = true;
      this.error = null;
      try {
        const response = await axios.get('http://127.0.0.1:8000/check/', { 
        params: { message, id }        
        });
        this.checkData = response.data;  
      } catch (err) {
        this.error = err.message || 'Ошибка проверки';
      } finally {
        this.loading = false;    
      }
    },
  },
});