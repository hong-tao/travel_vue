import axios from 'axios'

let baseUrl = 'http://localhost:888/php';

// 后台登陆查询
export const merchantUserLogin = params => { return axios.get(`${baseUrl}/merchantUser.php`, {params}).then(res => res.data); };

// 旅游信息增删查改
export const searchGoods = params => { return axios.post(`${baseUrl}/list.php`, params).then(res => res.data); };
export const addGoods = params => { return axios.post(`${baseUrl}/list.php`, params).then(res => res.data); };
export const editGoods = params => { return axios.post(`${baseUrl}/list.php`, params).then(res => res.data); };
export const removeGoods = params => { return axios.post(`${baseUrl}/list.php`, params).then(res => res.data); };
export const delGoods = params => { return axios.post(`${baseUrl}/list.php`, params).then(res => res.data); };
export const shelveGoods = params => { return axios.post(`${baseUrl}/list.php`, params).then(res => res.data); };
export const shelveSelectGoods = params => { return axios.post(`${baseUrl}/list.php`, params).then(res => res.data); };

// 旅馆信息增删查改
export const searchHotel = params => { return axios.post(`${baseUrl}/hotel.php`, params).then(res => res.data); };
export const addHotel = params => { return axios.post(`${baseUrl}/hotel.php`, params).then(res => res.data); };
export const editHotel = params => { return axios.post(`${baseUrl}/hotel.php`, params).then(res => res.data); };
export const removeHotel = params => { return axios.post(`${baseUrl}/hotel.php`, params).then(res => res.data); };
export const delHotel = params => { return axios.post(`${baseUrl}/hotel.php`, params).then(res => res.data); }

// 订单信息查询
export const getOrder = params => { return axios.post(`${baseUrl}/getOrder.php`, params).then(res => res.data); };