output "sagemaker_hyper_parameter_tuning_jobs_id" {
  description = "Map of id values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_arn" {
  description = "Map of arn values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_autotune" {
  description = "Map of autotune values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.autotune if v.autotune != null && length(v.autotune) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_config" {
  description = "Map of config values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.config if v.config != null && length(v.config) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_failure_reason" {
  description = "Map of failure_reason values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.failure_reason if v.failure_reason != null && length(v.failure_reason) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_name" {
  description = "Map of name values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_region" {
  description = "Map of region values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_status" {
  description = "Map of status values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.status if v.status != null && length(v.status) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_tags" {
  description = "Map of tags values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_tags_all" {
  description = "Map of tags_all values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_training_job_definition" {
  description = "Map of training_job_definition values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.training_job_definition if v.training_job_definition != null && length(v.training_job_definition) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_training_job_definitions" {
  description = "Map of training_job_definitions values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.training_job_definitions if v.training_job_definitions != null && length(v.training_job_definitions) > 0 }
}
output "sagemaker_hyper_parameter_tuning_jobs_warm_start_config" {
  description = "Map of warm_start_config values across all sagemaker_hyper_parameter_tuning_jobs, keyed the same as var.sagemaker_hyper_parameter_tuning_jobs"
  value       = { for k, v in aws_sagemaker_hyper_parameter_tuning_job.sagemaker_hyper_parameter_tuning_jobs : k => v.warm_start_config if v.warm_start_config != null && length(v.warm_start_config) > 0 }
}

