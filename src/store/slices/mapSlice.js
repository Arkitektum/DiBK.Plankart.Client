import { createSlice } from '@reduxjs/toolkit';

const initialState = {
   loading: false
};

export const mapSlice = createSlice({
   name: 'map',
   initialState,
   reducers: {
      map: (state, action) => {
         return { ...state, ...action.payload };
      }
   }
});

export const { toggleLoading } = mapSlice.actions;

export default mapSlice.reducer;