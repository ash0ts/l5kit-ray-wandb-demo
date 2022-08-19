# L5kit + Ray + Wandb

This project is organized in a collection of steps ranging the different tasks and personas one may see in an ML enabled organization for the task of Autonomous Vehicle Prediction, Planning, and Simultation.

We utilize [Ray](https://docs.ray.io/en/master/index.html) and [Wandb](https://wandb.ai/) to scale our experiments across appropriate infrasturcure and across our ML organization respecitvely with ease

## Dataset
The dataset is provided [by Woven Planet (formerly Level 5)](https://woven-planet.github.io/l5kit/index.html#)

### L5kit
The purpose of this framework is to enable engineers and researchers to experiment with data-driven approaches to planning and simulation problems using real world driving data and contribute to state-of-the-art solutions.

You can use this framework to build systems which:

Turn prediction, planning and simulation problems into data problems and train them on real data.

Use neural networks to model key components of the Autonomous Vehicle (AV) stack.

Use historical observations to predict future movement of cars around an AV.

Plan behavior of an AV in order to imitate human driving.

Study the improvement in performance of these systems as the amount of data increases.


## Setup

There exists

s1 -> Notebooks to be run first aka collecting, organzing, and logging all essential data and configurations needed for the demo
s2 -> Notebooks to be run after data has been saved, which will either visualize, predict, simulate, or plan (based on the task). These are split into:
.1 -> Training
.2 -> Evaluation and Promotion to Model Registry
(TIME PENDING) s3 -> Serve the models from s2 generally or build programmatic reports based on all the currently logged data

Each notebook is self contained in that it will install all the needed requirements and as long as the execution order is preserved then the code should run as is. You will need to adjust the `num_workers` attribute on your Ray runs to match the available CPUs (TODO: make this automatic).