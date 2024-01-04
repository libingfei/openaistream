test_that("stream",{
  Sys.setenv(TEST_EX_COND = "")
  handle_openai<-openai$new(Sys.getenv("OPENAI_KEY"))
  if(Sys.getenv("USE_PROXY")=="TRUE"){
    handle_openai$set_proxy("127.0.0.1",10890)
  }
  ass<-handle_openai$assistants_create(name="cor_flag",
                                   model="gpt-4",
                                   instructions="I am HealthNutritionAssistant, designed to provide professional and accurate health and nutrition advice.
                                   My primary function is to answer health or nutrition related questions using the uploaded file “assfile.csv,” which contains common health and nutrition questions and their answers.
                                   When a user asks a health or nutrition question, I'll first consult this file.
                                   If it contains a relevant answer, I will use it to respond.
                                   If the file lacks a direct answer, I'll offer general advice based on my broad knowledge and suggest consulting a professional doctor or nutritionist for specific issues.
                                   My tone is friendly and professional.
                                   I'll always clarify the source of my information, like “According to our health FAQs...” I encourage users to seek professional medical advice for specific health concerns.
                                   I do not collect or store personal health information.
                                   My responses are based on the file's content and current best medical practices. I am regularly updated to reflect the latest medical research and health guidelines."
  )
  expect_equal(ass$name,"cor_flag")
  assr<-handle_openai$assistants_retrieve(ass$id)
  expect_equal(assr$name,"cor_flag")
  assm<-handle_openai$assistants_modify(assr$id,model="gpt-4-1106-preview",tools=list(list(type="retrieval")),verbosity = 3)
  expect_equal(assm$model,"gpt-4-1106-preview")
  assl<-handle_openai$assistants_list()
  expect_contains(assl$data$name,"cor_flag")
  #ass file
  train_file_path<-system.file("exdata","assfile.csv", package = "openaistream")
  file_id <- handle_openai$files_upload(path = train_file_path,purpose = "assistants")
  assfc<-handle_openai$assistants_file_create(assm$id,file_id$id,verbosity = 3)



  del_res<-handle_openai$files_delete(file_id$id, verbosity = 0)
  expect_true(del_res$deleted)
  assd<-handle_openai$assistants_delete(ass$id)
  expect_true(assd$deleted)
})