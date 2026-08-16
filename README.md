# Super Tennis Disassembly

This project aims to create a full matching disassembly of the **Sega Master System** game "**Super Tennis**", also known as "**グレートテニス**" ("Great Tennis").

It targets the two revisions known to me:
- **Revision 0** (Japan):
  - SHA256: `459f1c453fb1e230f7ab67d607ef08bbfb630d53ef56192b5695a912b5f17c5f`
  - SHA1: `e7f3529689cd29be3fa02f94266e4ee8e0795d7d`
  - MD5: `be6eac7ce416c86a818ff13b228b39c5`
  - CRC32: `95cbf3dd`
  - SMS sum: `6fa6`
- **Revision 1** (USA, Europe):
  - SHA256: `5fb097b508a482c29f12c2203a0a98a0dd7ce9873e7ef12fb7e0aeea250a99e2`
  - SHA1: `67787f3f29a5b5e74b5f6a636428da4517a0f992`
  - MD5: `2db9404fe79593fd2379921ca822103a`
  - CRC32: `914514e3`
  - SMS sum: `88d4`

The source is written in [WLA DX](https://github.com/vhelin/wla-dx) dialect, a multi-platform assembler.

## Environment

You will need Docker to build the image:
```shell
./docker/build-image.sh
```

## Assembly

After building the image, you may assemble the ROMs:
```shell
./docker/run.sh ./compile.sh
```

The artifacts will be produced in `build/`. For each generated `.sms` file, you will also have a corresponding `.sym` file, which can be fed to debuggers such as [Gearsystem](https://github.com/drhelius/gearsystem).

## Acknowledgment

This project takes inspiration from [a similar disassembly effort](https://github.com/lhsazevedo/akmw).

## Disclaimer

This project is an independent disassembly of a Sega Master System game, created for research, educational, and preservation purposes. It is not affiliated with or endorsed by Sega or the original developers. All original game assets, trademarks, and copyrights remain the property of their respective owners.
