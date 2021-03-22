// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import Carousel from "stimulus-carousel"

const application = Application.start()
application.register("carousel", Carousel)
const context = require.context("controllers", true, /_controller\.js$/)

application.load(definitionsFromContext(context))
