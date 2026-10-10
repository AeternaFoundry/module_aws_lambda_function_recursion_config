output "lambda_function_recursion_configs_function_name" {
  description = "Map of function_name values across all lambda_function_recursion_configs, keyed the same as var.lambda_function_recursion_configs"
  value       = { for k, v in aws_lambda_function_recursion_config.lambda_function_recursion_configs : k => v.function_name if v.function_name != null && length(v.function_name) > 0 }
}
output "lambda_function_recursion_configs_recursive_loop" {
  description = "Map of recursive_loop values across all lambda_function_recursion_configs, keyed the same as var.lambda_function_recursion_configs"
  value       = { for k, v in aws_lambda_function_recursion_config.lambda_function_recursion_configs : k => v.recursive_loop if v.recursive_loop != null && length(v.recursive_loop) > 0 }
}
output "lambda_function_recursion_configs_region" {
  description = "Map of region values across all lambda_function_recursion_configs, keyed the same as var.lambda_function_recursion_configs"
  value       = { for k, v in aws_lambda_function_recursion_config.lambda_function_recursion_configs : k => v.region if v.region != null && length(v.region) > 0 }
}

