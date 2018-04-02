---
title: Slicing multi-dimensional spaces
author: Thomas Torsney-Weir
---

## Multi-dimensional spaces?

* Domain areas
* Why visualization?
* Issues of visualization
* Related methods

## Slicing

* What is slicing?
* Advanatages of slicing
* What is missing from HyperSlice?

## Outline of the thesis

1. Motivation
2. 1D slices: Sliceplorer [@Torsney-Weir:2017a]
3. 2D slices: HyperSliceplorer [@Torsney-Weir:2018]
4. Rendering time [@Torsney-Weir:2017]
5. Conclusion

<aside class="notes">

Here is how my thesis was organized and I also list the papers that each 
chapter is based on

</aside>

## Outline for the talk

* Continuous multi-D tasks
* Computing slices
* Projections of slices
* The future

<aside class="notes">

But for the talk, I want to highlight some of the key developments in slicing
that I developed

</aside>

# Continuous multi-D tasks

Section 2.4 of the thesis

### Outline

* **Continuous multi-D tasks**
* Computing slices
* Projections of slices
* The future

## Benefits of tasks

* Give a basis for evaluation
* Allow us to identify gaps
* Help designer to create effective visualizations

## Discrete data

Many task hierarchies for discrete data

<aside class="notes">
There are none for continuous data! These task taxonomies focus on single 
point picking or sets of points, not a continuous transition
</aside>

## Developing the taxonomy

1. Select an existing taxonomy ([@Amar:2005])
2. Consider how each element changes with multi-dimensional data
3. Use this for comparing visualization techniques
4. Refine the taxonomy with new datasets/applications

This is just the start!

<aside class="notes">
The idea is for this taxonomy to be continuously refined as new datasets 
and domain examples emerge
</aside>

## Taxonomy

![](/images/task_taxonomy.png)

<aside class="notes">
The task "sort" didn't have a clear analog to the continuous world

Explain the table, techniques, colors, where they come from
</aside>

## Example 1: Find extremum

## Example 2: ???

# Computing slices

Sections 3.3 and 4.4 of the thesis

### Outline

* Continuous multi-D tasks
* **Computing slices**
* Projections of slices
* The future

## Dataset types

* **Functional description**
* **Simplical mesh**
* Volume

<aside class="notes">
These are the 2 ways we can be given a continuous dataset, either as a 
function with multiple parameters or as a multi-D isosurface. I haven't 
studied multi-D volumes yet but we'd extract isosurfaces anyway.

Let's look at these in turn
</aside>

## Functional description

$f(x_1, x_2, x_3, x_4, x_5) \rightarrow \textrm{scalar}$

## Doing this fast

<aside class="notes">
The idea is that if we know the functional form then we can speed up 
the rendering process.
</aside>

## Simplical mesh

# Projections of slices

Sections 2.3.3 and 3.3 of the thesis

### Outline

* Continuous multi-D tasks
* Computing slices
* **Projections of slices**
* The future

## How to choose the focus point?

## Local vs Global view

## Focus point sampling

## Interactive viewers

* Linked highlighting
* Individual slice selection
* Manually adding additional slices

## Linked highlighting

Movies/pictures here

## Individual slice selection

Video?
Local view of hypersliceplorer here

## Adding additional slices

Video?
Some sort of photo here too...

# The future

Sections 5.1 and 5.2 of the thesis

### Outline

* Continuous multi-D tasks
* Computing slices
* Projections of slices
* **The future**

## Where do we go from here?

* Dissemination of results
* ???

# Conclusion

## Outline for the talk

* Multi-D spaces and slices
* Continuous multi-D tasks
* Computing slices
* Projections of slices
* The future

## Thank you!

<div class="columns">
  <div class="column">
<ul>
  <li>Torsten Möller</li>
  <li>Michael Sedlmair</li>
  <li>VDA group</li>
  <li>Admin staff</li>
  <li>Friends and family</li>
  <li>Doggies!</li>
</ul>
  </div>
  <div class="column">
<figure>
  <img src="/images/doggies.jpg" />
</figure>
  </div>
</div>



