---
title: Slicing multi-dimensional spaces
author: Thomas Torsney-Weir
---

## Multi-dimensional spaces?

<div class="columns">
<div class="column">
<p style="text-align:center;">Simulations</p>
<figure>
  <img style="height:200px;" src="images/weather_sim.jpg" />
</figure>
</div>
<div class="column">
<p style="text-align:center;">Optimization functions</p>
<figure>
  <img style="height:200px;" src="images/optim_1.png" />
</figure>
</div>
<div class="column">
<p style="text-align:center;">Polytopes</p>
<figure>
<img style="height:200px;" src="images/klein_bottle.png" />
</figure>
<p><span class="citation">https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Klein_bottle.svg/240px-Klein_bottle.svg.png</span></p>
</div>
</div>

## Characteristics

* Dimensions greater than 3
* Domain and range are continuous
* Dimensions are meaningful

## Slicing

<div class="columns">
<div class="column">
<ul>
<li>Easy to understand metaphor</li>
<li>reduces data from 3D to 2D</li>
<li>Distances are preserved</li>
<li>Most important factors on most effective encodings</li>
</ul>
</div>
<div class="column">
<figure>
  <img src="images/brain_slice.png" />
</figure>
</div>
</div>

<aside class="notes">
<p>distances and proportions are important in medical visualization</p>
ease is in opposition to things like topology
</aside>

## Slicing in 3D

![](images/med_slicing.png)

<aside class="notes">
Slicing comes from the medical community which is well-versed in using them
talk about each pair of dimensions
</aside>

## Hyperslice

![](images/hs_3d.png)

[@Wijk:1993]

<aside class="notes">
HyperSlice extended this to abstract objects
</aside>

## Hyperslice

![](images/hs_4dfunction.png)

![](images/hs_nd.png)

[@Wijk:1993]

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

-----

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

<table>
<tr>
<td>Amar, Eagan, and Stasko</td>
<td>Low-level components of analytic activity in information visualization</td>
<td>2005</td>
</tr>
<tr>
<td>Shneiderman</td>
<td>The eyes have it: A task taxonomy for information visualizations</td>
<td>1996</td>
</tr>
<tr>
<td>Brehmer and Munzner</td>
<td>A multi-level typology of abstract visualization tasks</td>
<td>2013</td>
</tr>
</table>

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

<div class="columns">
<div class="column">
<h3>Discrete</h3>
<p style="font-size: small; text-align: center;">
  "Find data cases possessing an extreme value of an attribute over 
  its range within the data set"
</p>
<figure>
  <img src="images/extremum_discrete.png" />
</figure>
</div>
<div class="column">
<h3>Continuous</h3>
<p style="font-size: small; text-align: center;">
  Find local/global minima/maxima
</p>
<figure>
  <img src="images/extremum_continuous.png" />
</figure>
</div>
</div>

## Find extremum

![](images/gerber_extremum.png)

[@Gerber:2010]

## Find extremum

![](images/sp_extremum.png)

## Example 2: Characterize distribution

<div class="columns">
<div class="column">
<h3>Discrete</h3>
<p style="font-size: small; text-align: center;">
  "Given a set of data cases and a quantitative attribute of interest, 
  characterize the distribution of that attribute's values over the set"
</p>
<figure>
  <img src="images/dist_discrete.png" />
</figure>
</div>
<div class="column">
<h3>Continuous</h3>
<p style="font-size: small; text-align: center;">
  What shapes do the manifolds have?
</p>
<figure>
  <img src="images/dist_continuous.png" />
</figure>
</div>
</div>

## Characterize distribution

![](images/distribution_hs.png)

[@Wijk:1993]

## Characterize distribution

![](images/distribution_hs2.png)

## Characterize distribution

![](images/distribution_sp.png)

## Characterize distribution

![](images/distribution_sp2.png)

# Computing slices

-----

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

$f(x_1, x_2, x_3, x_4, x_5) \rightarrow y$

$f(x_1, 0.2, 0.5, 1.2, 17.8) \rightarrow y$

![](images/1d_function.png)

## Functional description

![](images/2_slicing.png)

## Doing this fast

<div class="columns">
<div class="column">
<h3> 3fps </h3>
<video controls>
  <source src="movies/3fps_slicing.mov">
</video>
</div>
<div class="column">
<h3> 30fps </h3>
<video controls>
  <source src="movies/30fps_slicing.mov">
</video>
</div>
</div>

<aside class="notes">
The idea is that if we know the functional form then we can speed up 
the rendering process.
</aside>

## Doing this fast

$\sum_i c_i f_i(x)$

![](images/fast_gp1.png)

## Doing this fast

<div class="columns">
<div class="column">
<ol>
<li>Filter out all points that don't fall in range of the slice</li>
<li>Render the portion of the spherical kernel that is sliced</li>
</ol>
</div>
<div class="column">
<figure>
<img src="images/fast_gp2.png" />
</figure>
</div>
</div>

## Doing this fast

![](images/rendering_time_table.png)

## Doing this fast

![](images/gpu_pipeline.png)

## Results

![](images/timing_prediction.png)

## Simplical mesh

<div class="columns">
<div class="column">
<img src="images/mesh-slicing.png" />
</div>
<div class="column">
<img src="images/simplex-slicing.png" />
</div>
<div class="column">
<img src="images/plane-slicing.png" />
</div>
</div>

<aside class="notes">
Describe the outline of the algorithm
</aside>

## Simplical mesh

![](images/simplex_fp1.png)

## Simplical mesh

![](images/simplex_fp2.png)

# Projections of slices

-----

Sections 2.3.3 and 3.3 of the thesis

### Outline

* Continuous multi-D tasks
* Computing slices
* **Projections of slices**
* The future

## How to choose the focus point?

Let the user interact

<video controls>
  <source src="movies/30fps_slicing.mov">
</video>

<aside class="notes">
The problem is that this is a local view and the user can get easily lost!
</aside>

## Focus point sampling

![](images/sample_slicing.png)

## Interactive viewers

* Linked highlighting
* Individual slice selection
* Manually adding additional slices

## Linked highlighting

<div class="columns">
<div class="column">
<figure>
<img src="images/sp_linked.png" />
</figure>
</div>
<div class="column">
<video controls>
  <source src="movies/hsp_interaction.mov">
</video>
</div>
</div>

## Individual slice selection

<video controls>
  <source src="movies/hsp_interaction.mov#t=45">
</video>

<aside class="notes">
If we click on a particular slice we can switch to a local view. 
The user can also add additional points
</aside>

# The future

-----

Sections 5.1 and 5.2 of the thesis

### Outline

* Continuous multi-D tasks
* Computing slices
* Projections of slices
* **The future**

## Where do we go from here?

* Dissemination of results
* Developing more applications

## Dissemination of results

* Slicing library for Python, R, etc
* Sliceplorer
* Hypersliceplor 
* Hyperslice

## More applications

* Design studies to understand domain tasks

# Conclusion

-----

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

# Extra slides

## Power management

<div class="columns">
<div class="column">
<figure>
<img src="images/no_pm_running.png" />
</figure>
</div>
<div class="column">
<figure>
<img src="images/pm_running.png" />
</figure>
</div>
</div>


