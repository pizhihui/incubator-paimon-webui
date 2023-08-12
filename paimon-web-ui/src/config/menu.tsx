/* Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License. */

import i18n from '@src/locales/i18n.ts'

export interface MenuItem {
    itemKey: string
    text: string
    name: string
    icon?: React.ReactNode
    path: string
    items?: MenuItem[]
    component?: React.ComponentType<any>
}

const MENU_CONFIG: MenuItem[] = [
    {
        itemKey: '1',
        text: i18n.t('header.playground'),
        name: 'playground',
        path: '/playground',
        items: [
            {
                itemKey: '11',
                text: 'Playground1111',
                name: 'playground1111',
                path: '/playground/men1'
            }
        ]
    },
    {
        itemKey: '2',
        text: 'Metadata',
        name: 'metadata',
        path: '/metadata'
    },
    {
        itemKey: '3',
        text: 'CDC Ingestion',
        name: 'cdcingestion',
        path: '/system'
    },
    {
        itemKey: '4',
        text: 'System',
        name: 'system',
        path: '/system'
    }
]

export default MENU_CONFIG;
