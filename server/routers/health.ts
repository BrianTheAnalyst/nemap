import { procedure, router } from '../_core/trpc';

export const healthRouter = router({
  check: procedure.query(async () => {
    return {
      status: 'ok',
      timestamp: new Date(),
    };
  }),
});
