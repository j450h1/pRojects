context("createTrainingProject")

project_name <- "trainingProject2"

test_that("createTrainingProject() creates as expected when using defaults",{


  proj <- try(createTrainingProject(project_name))

  if(!inherits(proj, 'try-error')){
    expect_true(file.exists(file.path(project_name, paste0(project_name, ".Rproj"))))
    expect_true(file.exists(file.path(project_name, "DESCRIPTION")))
    expect_true(file.exists(file.path(project_name, "R")))
    expect_true(file.exists(file.path(project_name, "README.Rmd")))
    expect_true(file.exists(file.path(project_name, "packrat")))
    expect_true(file.exists(file.path(project_name, ".git")))
    expect_true(file.exists(file.path(project_name, ".gitignore")))
    expect_true(file.exists(file.path(project_name, ".travis.yml")))
    expect_true(file.exists(file.path(project_name, "data")))
    expect_true(file.exists(file.path(project_name, "handouts")))
    expect_true(file.exists(file.path(project_name, "slides")))
  }
})

unlink(project_name, recursive = TRUE, force = TRUE)

test_that("createTrainingProject() creates as expected when using bookdown and revealjs",{

  proj <- try(
    createTrainingProject(project_name, 
      handoutEngine = "bookdown", slideEngine = "revealjs")
    )
  if(!inherits(proj, 'try-error')){
    expect_true(file.exists(file.path(project_name, paste0(project_name, ".Rproj"))))
    expect_true(file.exists(file.path(project_name, "DESCRIPTION")))
    expect_true(file.exists(file.path(project_name, "R")))
    expect_true(file.exists(file.path(project_name, "README.Rmd")))
    expect_true(file.exists(file.path(project_name, "packrat")))
    expect_true(file.exists(file.path(project_name, ".git")))
    expect_true(file.exists(file.path(project_name, ".gitignore")))
    expect_true(file.exists(file.path(project_name, ".travis.yml")))
    expect_true(file.exists(file.path(project_name, "data")))
    expect_true(file.exists(file.path(project_name, "handouts")))
    expect_true(file.exists(file.path(project_name, "handouts", "index.Rmd")))
    expect_true(file.exists(file.path(project_name, "slides", "revealjs_slides.Rmd")))
  }
})

unlink(project_name, recursive = TRUE, force = TRUE)

test_that("createTrainingProject() creates as expected when using tufte and xaringan",{

  proj <- try(
    createTrainingProject(project_name, 
      handoutEngine = "tufte", slideEngine = "xaringan")
    )

  if(!inherits(proj, 'try-error')){
    expect_true(file.exists(file.path(project_name, paste0(project_name, ".Rproj"))))
    expect_true(file.exists(file.path(project_name, "DESCRIPTION")))
    expect_true(file.exists(file.path(project_name, "R")))
    expect_true(file.exists(file.path(project_name, "README.Rmd")))
    expect_true(file.exists(file.path(project_name, "packrat")))
    expect_true(file.exists(file.path(project_name, ".git")))
    expect_true(file.exists(file.path(project_name, ".gitignore")))
    expect_true(file.exists(file.path(project_name, ".travis.yml")))
    expect_true(file.exists(file.path(project_name, "data")))
    expect_true(file.exists(file.path(project_name, "handouts")))
    expect_true(file.exists(file.path(project_name, "handouts", "tufte_handout.Rmd")))
    expect_true(file.exists(file.path(project_name, "slides", "xaringan_slides.Rmd")))
  }
})

unlink(project_name, recursive = TRUE, force = TRUE)
