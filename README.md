# DNSer Docs

[![nuxt-content](/docs/public/cover_dark.png "@nuxt/content image")](https://content.nuxtjs.org)

DNSer is a decentralized and universal Top-Level Domain (TLD) checker that allows users to obtain information about both ICANN and Handshake TLDs. With DNSer, you can easily fetch the availability, status, and WHOIS information of TLDs. The tool is designed for seamless integration with various frameworks such as NextJS, Svelte, Nuxt, Vue, React, Deno, and more. It can be used on different platforms, including CLI, browsers, and mobile devices.

DNSer offers a live API for Handshake TLDs (https://api-dnser.pencil.li/api/tld/hns) and ICANN TLDs (https://api-dnser.pencil.li/api/tld/icann). It is also available on Docker and can be integrated with NPM. DNSer is open source and hosted on GitHub, allowing you to submit a PR to add your TLDs to the list.

The main code snippet provided demonstrates how to fetch Handshake domain data using axios, a popular promise-based HTTP client for JavaScript. The function fetchHnsDomainData takes a domain name as input and makes multiple API calls to gather various domain-related information. The fetched data is then combined and returned as a single object.

## Documentation

This documentation uses [Docus](https://github.com/nuxt-themes/docus).

## 💻 Development

- Install dependencies using `pnpm install`
- Start using `pnpm dev`
- Build using `pnpm build`

## Sources

[Icons](https://iconify.design/)

## License

Pylar AI creative ML License 0.0.4

Copyright (c) 2023 Miguel Gargallo

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to use the Software solely for non-commercial purposes and to show the code or result for scientific purposes. Any commercial use, including without limitation the rights to sell, copy, modify, merge, publish, distribute, sublicense, or use the Software as part of a commercial product, is strictly prohibited.

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
