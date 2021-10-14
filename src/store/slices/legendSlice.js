import { createSlice } from '@reduxjs/toolkit';

const initialState = {
   name: null,
   visible: true
};

export const legendSlice = createSlice({
   name: 'legend',
   initialState,
   reducers: {
      toggleLegend: (state, action) => {
         return { ...state, ...action.payload };
      }
   }
});

export const { toggleLegend } = legendSlice.actions;

export default legendSlice.reducer;