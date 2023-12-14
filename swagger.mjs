import SwaggerUI from "swagger-ui-express";
import swaggerJSDoc from "swagger-jsdoc";
import basicAuth from "express-basic-auth";

export const configureSwagger = (app) => {
    const basicAuthMiddleware = basicAuth({
        users: { 'Admin': 'admin' },
        challenge: true
    });

    const options = {
        definition: {
            openapi: '3.0.0',
            info: {
                title: 'NodeNinjas',
                version: '0.0.1',
                description: 'NodeNinjas API'
            },
            servers: [
                {
                    url: 'https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com'
                },
                {
                    url: 'http://localhost:8080'
                }
            ],
            components: {
                securitySchemes: {
                    basicAuth: {
                        type: basic
                    }
                }
            }
        },
        apis: ['.routes/poi.mjs']
    };

    const swaggerSpec = swaggerJSDoc(options);
    app.use('/swagger', SwaggerUI.serve, SwaggerUI.setup(swaggerSpec));
    app.use(basicAuthMiddleware);
};