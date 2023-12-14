// <!-- Copyright [2023] [NodeNinjas]
 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
 
//     http://www.apache.org/licenses/LICENSE-2.0
 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License. -->

import SwaggerUI from "swagger-ui-express";
import swaggerJSDoc from "swagger-jsdoc";
import basicAuth from "express-basic-auth";

export const configureSwagger = (app) => {
    const basicAuthMiddleware = basicAuth({
        users: { 'Admin': 'admin' },
        challenge: false
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
                        type: 'http',
                        scheme: 'basic'
                    }
                }
            }
        },
        apis: ['./routes/*.mjs']
    };

    const swaggerSpec = swaggerJSDoc(options);
    app.use('/swagger', SwaggerUI.serve, SwaggerUI.setup(swaggerSpec));
    app.use(basicAuthMiddleware);
};