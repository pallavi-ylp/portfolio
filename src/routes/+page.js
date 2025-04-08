import { error } from '@sveltejs/kit';

export const ssr = false;

export async function load() {
  try {
    return {
      status: 200
    };
  } catch (e) {
    throw error(500, 'Error initializing chat application');
  }
}