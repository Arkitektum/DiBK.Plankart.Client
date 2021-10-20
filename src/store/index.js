import { configureStore } from '@reduxjs/toolkit';
import apiReducer from './slices/apiSlice';
import legendReducer from './slices/legendSlice';

export default configureStore({
   reducer: {
      api: apiReducer,
      legend: legendReducer,
   }
});