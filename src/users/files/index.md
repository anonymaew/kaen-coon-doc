# Files Operations

LiCO allows access to the tree view of file directories, making it easy for file
operations on web interface. 

1. Click ![console icon](./console-icon.webp) button on the upper right navigation bar.
2. If the file tree does not appear, click ![expanding tab](./expanding-tab.webp)
   on the lower left side.
3. The file tree should appear on the left side.

<video controls loading="lazy" src="./files.webm" style="aspect-ratio: 16 / 9; width: 100%;">
</video>

## Creating/Uploading files

Click on ![create directory and file icon](./create-icon.webp) to either create a
directory or a file on that path.

We can drag and drop files/directories from your computer to the file tree
window as well. The file(s) will automatically transfer from your computer to
the cluster.

## Editing files

1. Right-click on the file inside the file tree.
2. Select "Edit".
3. The web will show a buffer window. Edit it.
4. Click "Save" to save the change.

> [!TIP]
>
> It is more convenient to edit the file(s) in your computer with your desired
> IDE and later overwrite the file(s) on the cluster by uploading.

## Deleting files

1. Select the file(s) to be deleted from the file tree.
2. Click ![delete icon](./delete-icon.webp) button.
3. Confirm deletion.

## Advanced

Since the cluster is based on Slurm, files can be transferred directly via `scp`
or `rsync` programs as another remote server.

```bash
scp -r your/project/directory your_username@10.198.253.15:~/your/working/directory
```

```bash
rsync -avPh your/project/directory your_username@10.198.253.15:~/your/working/directory
```

Interactive files editing on the cluster can also be done with `ssh` with given
credentials.
