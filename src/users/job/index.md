# Submitting a Job

## Create a Job

Before creating a job, you may want to [transfer](./files) some script(s) and
dataset to the cluster.

1. Go to the menu item "Job Templates" on the left side.
2. Select a suitable template for your job (Common Job). Here are some details
   for frequently-used templates:
    - **Common Job**: cover most of the need of running bare scripts.
    - **Singularity**: be able to run jobs with custom containers.
    - **PyTorch**: expose PyTorch library for the job to use.
3. Fill up the job detail:
    - Template Information:
        - Job Name: the job name. Must be alphanumeric including underscore.
        - Workspace: the directory that the job will start. Log files will be
          also generated here.
    - Resource Options:
        - Queue: choose your allowed queue.
        - Exclusive: whether to disallow other jobs running on the same node.
          **Keep the box empty**.
        - Node: the number of computers to run the job; usually `1`.
        - CPU Cores Per Node: the number of CPU cores per computer to run. Must
          be under the limit.
        - GPU per Node: either `0` or `1`.
            - GPU Per Node: the number of GPU per computer to run; usually `1`.
            - GPU Resource Type: `gpu:STU_GPU` if you are a student (MIG).
              `gpu:Full_GPU` if you are lecturer/researcher.
        - Memory Used: the memory per job in `MB`. Must be under the limit.
        - Wall Time: the maximum duration the job allowed to run. Must be under
          the limit.
4. Click "Submit" to create the job and submit it to the cluster.

<video controls loading="lazy" src="./create-basic.webm" style="aspect-ratio: 16 / 9; width: 100%;">
</video>

## Monitor a Job

After submitting a job, the job will go through a queue and being run by a node.

Most of monitoring will be in the page of the menu item "Job Monitoring" on the
left side. After entering, there will be 3 sections.

![Queue type](./queue-types.webp)

- Running: jobs currently being run by nodes will be shown here.
- Waiting: jobs being held in a queue.
- Completed: history of jobs already run.

> [!TIP]
>
> To inspect why your job is currently queueing, go to "Waiting" tab, click on
> the waiting job's scheduler ID, and inspect on the value of `Reason` variable.
> In normal circumstances, the value should be `normal`.

Assuming the job is out of queue and running, you can monitor it by:

1. Click "Running" tab. There will be your jobs that are running (if already
   passed the queue).
2. Click on **the job name** to see further details of the running job. There
   will be tabs on each aspect of the detail.
    - Log: shows all `stdout` from the running job. Useful for tracking the
      current state of the job.
    - Resource: all resource used for running the job.

<video controls loading="lazy" src="./monitor.webm" style="aspect-ratio: 16 / 9; width: 100%;">
</video>

After the job has finished running:

1. Click "Completed" tab. You will see the history of completed jobs
2. Click on the job name to see further details of that job.
3. Click "Log" tab to show completed `stdout` from that job.

## Copy a Job

In case you want to rerun the job or modify a few job details, you can quickly
copy the detail reference from the previous job, so you do not have to recreate
a new job from scratch again.

1. Go to either "Running", "Waiting", or "Completed" tab; the one that has
   the job.
2. Click "Action" button on the right side of the job you intend to copy.
3. Click "Copy", this will recreate another job with filled details.
4. Edit the detail, and then click "Submit" to send a new job.

<video controls loading="lazy" src="./copy.webm" style="aspect-ratio: 16 / 9; width: 100%;">
</video>
