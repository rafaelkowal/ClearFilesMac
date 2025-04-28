# 🧹 Limpar Arquivos Ocultos do Mac no Pendrive

Este script em batch (`.bat`) foi criado para **remover arquivos ocultos** que o macOS cria automaticamente em dispositivos USB (como pendrives).  
Esses arquivos incluem:

- `.DS_Store`
- Arquivos com prefixo `._*` (duplicados de arquivos e metadados)

---

## 📋 O que o script faz?

- Lista todos os pendrives conectados ao computador.
- Permite que você escolha a unidade desejada.
- Exibe os arquivos ocultos encontrados no pendrive.
- Pergunta se deseja remover os arquivos.
- Remove os arquivos ocultos do Mac de forma segura.

---

## 🛠️ Como usar

1. **Baixe** ou **clone** este repositório.
2. **Execute** o script `limpar_arquivos_mac.bat` como **Administrador** (botão direito > Executar como administrador).
3. **Siga as instruções** no terminal:
   - Escolha a letra correspondente ao seu pendrive.
   - Confirme se deseja apagar os arquivos ocultos.

---

## ⚠️ Atenção

- O script **não remove seus arquivos pessoais** (fotos, vídeos, documentos etc.).
- Apenas arquivos ocultos gerados pelo macOS serão apagados.
- Use com atenção para evitar apontar para a unidade errada.

---

## 📄 Exemplo de execução

```plaintext
Pendrives detectados:
-------------------
Description         DeviceID    Size            VolumeName
Removable Disk      E:          16000000000     MEU_PENDRIVE
Removable Disk      F:          31906070528     DriveExt

Digite a letra do pendrive (ex: E, F, G...): E

Verificando arquivos ocultos na unidade E:...

Arquivo(s) oculto(s) encontrados:
.DS_Store
._meuarquivo.jpg

Deseja remover TODOS os arquivos ocultos do Mac? (S/N): S

Limpeza concluída! Arquivos do Mac removidos.
```

---

## 📦 Sobre

Este projeto é útil para quem utiliza pendrives em Macs e depois conecta em Windows, evitando "sujeiras" de arquivos invisíveis.

- **Autor**: Rafael Kowal
- **Licença**: MIT

