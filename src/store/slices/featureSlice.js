import { createSlice } from '@reduxjs/toolkit';

const initialState = {
   id: null,
   select: true
};

export const featureSlice = createSlice({
   name: 'feature',
   initialState,
   reducers: {
      selectFeature: (state, action) => {
         return { ...state, ...action.payload };
      }
   }
});

export const { selectFeature } = featureSlice.actions;

export default featureSlice.reducer;