const app = require('express')();

app.use('/healthz', (req, res, next) => {
   res.status(200).json({
       status: 'pass'
   });
});

app.use('/*', (req, res, next) => {
    res.status(404).json({
        error: 'Not found',
        code: 'not-found',
        path: req.originalUrl,
        component: 'default-backend'
    });
});

app.listen(80);
