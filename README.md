# Liquid Glass Voice Lab

Experiência visual interativa que combina o protótipo WebGL original do projeto com ondas luminosas inspiradas na resposta visual da Siri. O shader GLSL, a refração, a aberração cromática, o desfoque, a camada escura, o brilho e os controles do protótipo foram preservados.

## O que já está incluído

- Shader WebGL original do protótipo (não substituído por animação genérica).
- Lente Liquid Glass com refração, zoom, aberração cromática e desfoque.
- Ondas luminosas com animação contínua e resposta às frequências/energia do microfone.
- Fundo em degradê e carregamento de imagem própria.
- Arrastar com um dedo e redimensionar com dois dedos.
- Controles de escala, posição, largura, altura, cantos, lente, borda, onda e sensibilidade do microfone.
- PWA: manifest, service worker, cache básico e ícones derivados da arte original fornecida.
- Interface responsiva para celular e desktop.

## Testar localmente

O microfone exige HTTPS ou `localhost`. Para um teste local simples, rode um servidor estático na pasta do projeto, por exemplo:

```bash
python -m http.server 8000
```

Depois abra `http://localhost:8000` no navegador. O Python é necessário apenas para esse teste local no computador; no iPhone, depois da publicação no GitHub Pages, não é necessário instalar nada.

## Publicar no GitHub Pages

1. Entre em https://github.com e crie um repositório novo chamado `liquid-glass-voice-lab`.
2. Escolha **Public** (ou confirme que seu plano/configuração permite Pages em repositório privado).
3. Extraia o ZIP no computador.
4. Entre no repositório e clique em **Add file → Upload files**.
5. Envie o conteúdo desta pasta (não envie a pasta ZIP): `index.html`, `manifest.webmanifest`, `sw.js`, `README.md` e a pasta `assets`.
6. Clique em **Commit changes**.
7. Abra **Settings → Pages**.
8. Em **Build and deployment**, escolha **Deploy from a branch**.
9. Selecione a branch `main` e a pasta `/(root)`, depois clique em **Save**.
10. Aguarde a publicação e abra o endereço mostrado pelo GitHub Pages. Normalmente será `https://SEU-USUARIO.github.io/liquid-glass-voice-lab/`.

## Instalar no iPhone

1. Abra o endereço HTTPS do GitHub Pages no **Safari** (não dentro do navegador de outro aplicativo).
2. Aguarde a página carregar completamente.
3. Toque em **Compartilhar** no Safari.
4. Escolha **Adicionar à Tela de Início**.
5. Confirme em **Adicionar**. O ícone usa a arte original enviada para este projeto.
6. Abra o app pelo novo ícone.
7. Toque em **Ativar microfone** e permita o acesso quando o iOS solicitar.

O microfone só funciona em contexto seguro (HTTPS) e enquanto a página/app estiver aberta e com a permissão concedida. O processamento de áudio é feito localmente no navegador; o projeto não envia o áudio para um servidor.

## Observações técnicas

- O projeto é estático: não precisa de Node.js, dependências, build ou backend para publicação.
- O service worker faz cache do shell do aplicativo para acelerar novas aberturas e permitir carregar os arquivos já armazenados. A primeira visita precisa de internet para baixar o app.
- Ao publicar atualizações, o service worker pode levar um momento para substituir o cache anterior. Se uma versão antiga continuar aparecendo, feche e reabra o app ou limpe os dados do site no Safari.
- O iOS pode impor limitações próprias ao áudio em segundo plano; mantenha o app em primeiro plano para usar a reação ao microfone.
- Os arquivos de referência usados como contexto visual estão descritos no pedido original. Este pacote preserva o shader que já estava no protótipo recebido.


## Interface Ambient (atualização)

A tela inicial agora prioriza o efeito em modo imersivo. Use o botão **CONFIGURAÇÕES** na parte inferior para abrir o painel de personalização; o botão × fecha o painel e, no celular, também é possível arrastá-lo para baixo. O painel mantém os controles do shader, incluindo imagem de fundo e microfone.

Ao publicar esta atualização, o cache do service worker foi elevado para v2 para que os dispositivos baixem a nova interface.
