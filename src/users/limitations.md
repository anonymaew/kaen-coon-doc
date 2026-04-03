# Limitations

Here are current resource limitations for each user roles.

|   Resource  | Student | Researcher/Lecturer |
|-------------|---------|---------------------|
| CPU/Job     | 3 cores |            16 cores |
| Memory/Job  |     TBD |              36 GiB |
| [Wall Time] | 3 Hours |              5 Days |
| GPU/Job     | 1 [MIG] |         1 Full Card |

[Wall Time]: ../introduction/glossary.html#wall-time
[MIG]: ../introduction/glossary.html#mig

> [!IMPORTANT]
> 
> Make sure that your job's resource requests do not exceed the given
> limitation. **The job might be stuck forever** in `Queueing` if the requested
> resource exceed the limitation of your quotas.
