// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

import FormController from "./form_controller.js"
application.register("form", FormController)

import ModalController from "./modal_controller.js"
application.register("modal", ModalController)
