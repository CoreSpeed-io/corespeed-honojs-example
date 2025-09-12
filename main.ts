import { Hono } from 'hono'
import * as zypher from "@corespeed/zypher";

const app = new Hono()

app.get('/', (c) => {
  return c.text('Hello Hono!')
})

Deno.serve(app.fetch)
