import { request } from '@/utils/request'

export function page(params) {
  return request({
    url: '/api/knowledge',
    method: 'get',
    params
  })
}

export function createKnowledge(data) {
  return request({
    url: '/api/knowledge/create',
    method: 'post',
    data
  })
}

export function getKnowledge(params) {
  return request({
    url: '/api/knowledge/detail',
    method: 'get',
    params
  })
}