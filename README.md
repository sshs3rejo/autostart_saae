# autostart_saae

Instalador de atalho de inicialização para o sistema do SAAE no Windows.

Um arquivo `.bat` que coloca, ou remove, um atalho na pasta de inicialização do usuário — para que o sistema abra sozinho quando o computador ligar. Pensado para as máquinas de balcão do SAAE, onde ninguém deveria precisar clicar em nada pela manhã.

## Uso

**Instalar** o atalho:

```bat
autostart_saae.bat
```

**Remover**:

```bat
autostart_saae.bat --remove
```

## Como funciona

O script escreve um arquivo `.url` (atalho de Internet) em:

```
%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
```

Como é `.url` e não `.exe`, o Windows abre o navegador padrão no endereço configurado na inicialização. O ícone é definido manualmente via `shell32.dll,146` — o mesmo ícone de globo do sistema.

O parâmetro `--remove` apaga o `.url`, desfazendo a instalação sem deixar resíduo.

## Detalhe operacional

O endereço do sistema está **fixo no script**. Se o servidor mudar de IP, é preciso editar a linha `URL=` e reinstalar. Vale trocar por um domínio interno antes de distribuir para várias máquinas — assim o endereço muda em um lugar só.

## Licença

MIT
