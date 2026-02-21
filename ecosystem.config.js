export default {
    apps: [
        {
            name: 'saaz-backend',
            script: 'server.js',
            cwd: './backend',
            env: {
                NODE_ENV: 'production',
                PORT: 5000
            }
        },
        {
            name: 'saaz-frontend',
            script: 'npm',
            args: 'start',
            cwd: './frontend',
            env: {
                NODE_ENV: 'production',
                PORT: 3000
            }
        }
    ]
};
