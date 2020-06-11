const mume = require("@shd101wyy/mume");
const { resolve } = require('path');
const { readdir, stat }  = require('fs').promises;

async function* getFiles(dir) {
  const fileNames = await readdir(dir);
  for (const fileName of fileNames) {
    const path = resolve(dir, fileName);
    if ((await stat(path)).isDirectory()) {
      if (!path.endsWith('src') && !path.endsWith('.git')) {
        yield* getFiles(path)
      }
    } else {
      if (path.endsWith('.md')) {
        yield path 
      }
    }
  }
}


async function compile(path) {
  await mume.init();

  const engine = new mume.MarkdownEngine({
    filePath: path,
    config: {
      previewTheme: "github-light.css",
      // revealjsTheme: "white.css"
      codeBlockTheme: "default.css",
      printBackground: true,
      enableScriptExecution: false, // <= for running code chunks
      mathRenderingOption: "MathJax"
    },
  });

  await engine.htmlExport({ offline: false, runAllCodeChunks: true });
}

(async () => {
  for await (const f of getFiles('../')) {
    console.log('Compiling file: ', f);
    compile(f);
  }
  return process.exit()
})()
