import { createSlice } from '@reduxjs/toolkit';

const initialState = {
   legend: {
      name: null,
      visible: true
   },
   sidebar: {
      visible: true
   }
};

export const mapSlice = createSlice({
   name: 'map',
   initialState,
   reducers: {
      toggleSidebar: (state, action) => {
         return { 
            ...state, 
            sidebar: {
               ...state.sidebar, ...action.payload
            }
         };
      },
      toggleLegend: (state, action) => {
         return { 
            ...state, 
            legend: {
               ...state.legend, ...action.payload
            }
         };
      }
   }
});

export const { toggleSidebar, toggleLegend } = mapSlice.actions;

export default mapSlice.reducer;