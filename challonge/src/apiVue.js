import axios from "axios";

export async function getUsers() {
  return new Promise((resolve, reject) => {
    axios
      .get(`${process.env.VUE_APP_API_BASE_URL}/Utilisateurs`)
      .then((res) => {
        resolve(res.data);
      })
      .catch((err) => {
        reject(err);
      });
  });
}

export async function registerUser(data) {
  console.log(data);
  return new Promise((resolve, reject) => {
    axios
      .post(`${process.env.VUE_APP_API_BASE_URL}/register`, {
        data,
      })
      .then((res) => {
        resolve(res.data);
      })
      .catch((err) => {
        reject(err);
      });
  });
}
