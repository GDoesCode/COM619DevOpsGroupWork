import SwaggerUI from 'swagger-ui-express';
import swaggerJsDoc from 'swagger-jsdoc';

export const initialiseSwagger = (app) => {
    const configuration = {
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
                    bearerAuth: {
                        type: 'http',
                        scheme: 'Admin',
                        bearerFormat: 'admin'
                    }
                }
            }
        },
        apis: ['.routes/poi.mjs']
    };
    const specification = swaggerJsDoc(configuration);

    app.use('/api-docs', SwaggerUI.serve, SwaggerUI.setup(specification));
};