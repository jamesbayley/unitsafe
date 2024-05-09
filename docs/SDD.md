<div align="center"> 
  <h1>Software Design Document</h1>
  <p>Unitsafe Blueprints.</p>
</div>

## Contents

1. [Why?](#why)
2. [What?](#what)
3. [How?](#how)
4. [Code Examples](#code-examples)
5. [API Reference](#api-reference)

## Why?

Engineers work with units daily. However, it's easy to introduce a unit mismatch when implementing calculations in Python. On the happenstance that a unit system _is_ introduced into the codebase, the implementation often fails to achieve idiomacy and it can feel both foreign and forced. Having previously worked in F#, I became familiar with its Units of Measure that neatly and efficiently solves this issue. When I subsequently returned to Python, I found the lack of unit-safety to be unnerving. This library is one attempt to help improve the correctness, safety and clarity of large engineering Python codebases, whilst somewhat adhering to the much-loved Pythonic culture.

## What?

The F# approach to unit safety is particularly unique and performant as it is implemented as a compile-time check. Units of Measure were introduced as official features of the language, which can be checked at compile-time and provide useful editor intellisense. The units are compiled away prior to runtime, so you get all the advantages of unit safety without the associated performance hit. As far as I can see, the only obvious way to achieve something similar in Python would be to introduce a superset of the language with language support for Units of Measure that was then transpiled away when the superset emits its standard Python output. However, implementing such a project is far beyond my current capability. Instead, I consider this library that relies on idiomatic Python types, associated methods and convenient operator overloads to be the next best thing.

## How?



## Code Examples

## API Reference
