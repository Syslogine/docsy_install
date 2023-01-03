# docsy_install

I kinda made this script because im lazy and i destroyed by hugo/doscy allot...

so i thought this can be easier and faster... So this is the reason why this does exist.....

1.  it create a hugo site with name `sys_docs`
2.  enter the folder
3.  creates a git init
4.  download the docsy theme as a submodule
5.  moves after this to the themes folder and install the needed npm packages
6.  and then it's a but done i guess

script to install clean hugo:docsy


```bash
bash test.sh
```

## Start

### start clean
```bash
cd sys_docs
```

```bash
hugo server
```

### start example
```bash
cd sys_docs/themes/docsy/userguide
```

```bash
npm install
```

```bash
npm fund
```

```bash
npm run serve
```
