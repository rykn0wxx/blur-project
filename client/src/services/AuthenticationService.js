import Api from '@/services/Api'

export default {
  register (cred) {
    return Api.base().post('users', cred)
  },
  login (cred) {
    return Api.base().post('user_token', cred)
  }
}
