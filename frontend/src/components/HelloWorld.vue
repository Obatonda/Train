<template>
  <div class="container" :class="{ 'correct': store.checkData === 'Правильно', 'incorrect': store.checkData !== 'Правильно' }">
    <div class="controls">
      <button @click="handleStart" :disabled="store.loading || hasStarted" class="start-button">
        Старт
      </button>
      <p class="user-name">{{ store.users.ru_name }}</p>
      <input v-model="message" @keyup.enter="handleCheck" placeholder="Введите ответ" class="input-field" />
      <!-- <button @click="handleCheck">ПРОВЕРКА</button> -->
    </div>
    <div class="users-list">
      <ul v-if="store.users && store.users.length">
        <li v-for="user in store.users" :key="user.id || user.name" class="user-item">
          {{ user.ru_name }}
        </li>
      </ul>
    </div>

    <p class="check-data">{{ store.checkData }}</p>
    <p v-if="store.users != ''" class="stats">Серия = {{ store.users.series }}</p>
    <p v-if="store.users != ''" class="stats">Успешных = {{ store.users.successful_attempts }}</p>
    <p v-if="store.users != ''" class="stats">Всего = {{ store.users.total_attempts }}</p>
  </div>
</template>

<script setup>
import { ref } from 'vue';
import { useStore } from '@/stores/Store';

const store = useStore();
const message = ref('');
const hasStarted = ref(false);  // Новая переменная: true после первого клика на "Старт"

// Новый обработчик для кнопки "Старт"
const handleStart = () => {
  if (!hasStarted.value) {  // Проверяем, чтобы избежать повторных вызовов
    hasStarted.value = true;  // Блокируем кнопку навсегда
    store.fetchUsers();  // Вызываем ваш метод
  }
};

const handleCheck = async () => {
  // Выполняем первый запрос и ждём его завершения
  await store.check(message.value, store.users.id);
  
  // Только после ответа от первого запроса выполняем второй
  await store.fetchUsers();
  
  // Очищаем поле ввода
  message.value = '';
};
</script>

<style scoped>
.container {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  font-family: Arial, sans-serif;
  background-color: #f9f9f9; /* Базовый фон, если ничего не установлено */
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  transition: background-color 0.3s; /* Плавный переход для фона */
}

.correct {
  background-color: lightgreen; /* Светло-зелёный для 'Правильно' */
}

.incorrect {
  background-color: lightcoral; /* Светло-красный для остальных случаев */
}

.controls {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-bottom: 20px;
}

.start-button {
  padding: 10px 20px;
  font-size: 16px;
  background-color: #4caf50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin-bottom: 10px;
  transition: background-color 0.3s;
}

.start-button:hover:not(:disabled) {
  background-color: #45a049;
}

.start-button:disabled {
  background-color: #cccccc;
  cursor: not-allowed;
}

.user-name {
  font-size: 18px;
  font-weight: bold;
  margin: 10px 0;
  color: #333;
}

.input-field {
  padding: 10px;
  font-size: 16px;
  width: 100%;
  max-width: 300px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

.users-list {
  margin-bottom: 20px;
}

.users-list ul {
  list-style-type: none;
  padding: 0;
}

.user-item {
  background-color: #fff;
  margin: 5px 0;
  padding: 10px;
  border-radius: 4px;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}

.check-data {
  font-size: 16px;
  color: #666;
  margin: 10px 0;
}

.stats {
  font-size: 14px;
  color: #555;
  margin: 5px 0;
}
</style>