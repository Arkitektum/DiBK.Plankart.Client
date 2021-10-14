import { configureStore } from '@reduxjs/toolkit';
import apiReducer from './slices/apiSlice';
import featureReducer from './slices/featureSlice';
import legendReducer from './slices/legendSlice';

export default configureStore({
   reducer: {
      api: apiReducer,
      feature: featureReducer,
      legend: legendReducer
   }
});