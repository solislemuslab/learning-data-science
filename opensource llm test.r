library(torch)

install.packages("torch@5.0")


# Load the BART model
# load the 
model <- torch::load_model("bart-base")

# Tokenize the prompt
prompt_tokens <- torch::tokenize(model, prompt = "The cat sat on the mat.")

# Generate text
generated_ids <- torch::generate(model, input_ids = prompt_tokens, max_length = 100)

# Decode the generated text
generated_text <- torch::decode(model, generated_ids)

# Print the generated text
print(generated_text)
