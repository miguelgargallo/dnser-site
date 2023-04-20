export default defineAppConfig({
  github: {
    owner: 'pencil-li',
    repo: 'dnser-docs',
    branch: 'main'
  },
  docus: {
    title: 'DNSER Docs',
    description: 'DNS Made Easy for Developers at Scale',
    image: 'https://raw.githubusercontent.com/Pencil-li/dnser-docs/main/public/cover.png',
    url: 'https://github.com/pencil-li/dnser-docs',
    socials: {
      twitter: '@pencildomains',
      github: 'pencil-li/dnser-docs'
    },
    github: {
      dir: '/content',
      root: '/content',
      edit: true,
      releases: true,
      owner: 'pencil-li',
      repo: 'dnser-docs',
      branch: 'main'
    },
    cover: {
      src: '/cover.jpg',
      alt: 'Content made easy for Vue developers'
    },
    aside: {
      level: 1
    },
    layout: {
      fluid: true
    },
    header: {
      logo: 'Logo',
      exclude: ['/v1', '/content-v1', '/fr', '/ja', '/ru']
    },
    footer: {
      /* iconLinks: [
        {
          label: 'NPM',
          href: 'https://npmjs.com/dnser',
          icon: 'IconNuxt'
        },
        {
          label: 'Vue Telescope',
          href: 'https://vuetelescope.com',
          icon: 'IconVueTelescope'
        }
      ] */
    }
  }
})
