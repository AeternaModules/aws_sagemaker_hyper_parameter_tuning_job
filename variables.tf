variable "sagemaker_hyper_parameter_tuning_jobs" {
  description = <<EOT
Map of sagemaker_hyper_parameter_tuning_jobs, attributes below
Required:
    - name
Optional:
    - region
    - tags
    - autotune (block):
        - mode (required)
    - config (block):
        - objective (optional, block):
            - metric_name (required)
            - type (required)
        - parameter_ranges (optional, block):
            - auto_parameters (optional, block):
                - name (required)
                - value_hint (required)
            - categorical_parameter_ranges (optional, block):
                - name (required)
                - values (required)
            - continuous_parameter_ranges (optional, block):
                - max_value (required)
                - min_value (required)
                - name (required)
                - scaling_type (optional)
            - integer_parameter_ranges (optional, block):
                - max_value (required)
                - min_value (required)
                - name (required)
                - scaling_type (optional)
        - random_seed (optional)
        - resource_limits (optional, block):
            - max_number_of_training_jobs (optional)
            - max_parallel_training_jobs (required)
            - max_runtime_in_seconds (optional)
        - strategy (required)
        - strategy_config (optional, block):
            - hyperband_strategy_config (optional, block):
                - max_resource (optional)
                - min_resource (optional)
        - training_job_early_stopping_type (optional)
        - tuning_job_completion_criteria (optional, block):
            - best_objective_not_improving (optional, block):
                - max_number_of_training_jobs_not_improving (optional)
            - convergence_detected (optional, block):
                - complete_on_convergence (optional)
            - target_objective_metric_value (optional)
    - training_job_definition (block):
        - algorithm_specification (optional, block):
            - algorithm_name (optional)
            - metric_definitions (optional, block):
                - name (required)
                - regex (required)
            - training_image (optional)
            - training_input_mode (required)
        - checkpoint_config (optional, block):
            - local_path (optional)
            - s3_uri (required)
        - definition_name (optional)
        - enable_inter_container_traffic_encryption (optional)
        - enable_managed_spot_training (optional)
        - enable_network_isolation (optional)
        - environment (optional)
        - hyper_parameter_ranges (optional, block):
            - auto_parameters (optional, block):
                - name (required)
                - value_hint (required)
            - categorical_parameter_ranges (optional, block):
                - name (required)
                - values (required)
            - continuous_parameter_ranges (optional, block):
                - max_value (required)
                - min_value (required)
                - name (required)
                - scaling_type (optional)
            - integer_parameter_ranges (optional, block):
                - max_value (required)
                - min_value (required)
                - name (required)
                - scaling_type (optional)
        - hyper_parameter_tuning_resource_config (optional, block):
            - allocation_strategy (optional)
            - instance_configs (optional, block):
                - instance_count (optional)
                - instance_type (optional)
                - volume_size_in_gb (optional)
            - instance_count (optional)
            - instance_type (optional)
            - volume_kms_key_id (optional)
            - volume_size_in_gb (optional)
        - input_data_config (optional, block):
            - channel_name (required)
            - compression_type (optional)
            - content_type (optional)
            - data_source (optional, block):
                - file_system_data_source (optional, block):
                    - directory_path (required)
                    - file_system_access_mode (required)
                    - file_system_id (required)
                    - file_system_type (required)
                - s3_data_source (optional, block):
                    - attribute_names (optional)
                    - hub_access_config (optional, block):
                        - hub_content_arn (required)
                    - instance_group_names (optional)
                    - model_access_config (optional, block):
                        - accept_eula (required)
                    - s3_data_distribution_type (optional)
                    - s3_data_type (required)
                    - s3_uri (required)
            - input_mode (optional)
            - record_wrapper_type (optional)
            - shuffle_config (optional, block):
                - seed (required)
        - output_data_config (optional, block):
            - compression_type (optional)
            - kms_key_id (optional)
            - s3_output_path (required)
        - resource_config (optional, block):
            - instance_count (optional)
            - instance_groups (optional, block):
                - instance_count (required)
                - instance_group_name (required)
                - instance_type (required)
            - instance_placement_config (optional, block):
                - enable_multiple_jobs (optional)
                - placement_specifications (optional, block):
                    - instance_count (required)
                    - ultra_server_id (optional)
            - instance_type (optional)
            - keep_alive_period_in_seconds (optional)
            - training_plan_arn (optional)
            - volume_kms_key_id (optional)
            - volume_size_in_gb (optional)
        - retry_strategy (optional, block):
            - maximum_retry_attempts (optional)
        - role_arn (required)
        - static_hyper_parameters (optional)
        - stopping_condition (optional, block):
            - max_pending_time_in_seconds (optional)
            - max_runtime_in_seconds (optional)
            - max_wait_time_in_seconds (optional)
        - tuning_objective (optional, block):
            - metric_name (required)
            - type (required)
        - vpc_config (optional, block):
            - security_group_ids (required)
            - subnets (required)
    - training_job_definitions (block):
        - algorithm_specification (optional, block):
            - algorithm_name (optional)
            - metric_definitions (optional, block):
                - name (required)
                - regex (required)
            - training_image (optional)
            - training_input_mode (required)
        - checkpoint_config (optional, block):
            - local_path (optional)
            - s3_uri (required)
        - definition_name (optional)
        - enable_inter_container_traffic_encryption (optional)
        - enable_managed_spot_training (optional)
        - enable_network_isolation (optional)
        - environment (optional)
        - hyper_parameter_ranges (optional, block):
            - auto_parameters (optional, block):
                - name (required)
                - value_hint (required)
            - categorical_parameter_ranges (optional, block):
                - name (required)
                - values (required)
            - continuous_parameter_ranges (optional, block):
                - max_value (required)
                - min_value (required)
                - name (required)
                - scaling_type (optional)
            - integer_parameter_ranges (optional, block):
                - max_value (required)
                - min_value (required)
                - name (required)
                - scaling_type (optional)
        - hyper_parameter_tuning_resource_config (optional, block):
            - allocation_strategy (optional)
            - instance_configs (optional, block):
                - instance_count (optional)
                - instance_type (optional)
                - volume_size_in_gb (optional)
            - instance_count (optional)
            - instance_type (optional)
            - volume_kms_key_id (optional)
            - volume_size_in_gb (optional)
        - input_data_config (optional, block):
            - channel_name (required)
            - compression_type (optional)
            - content_type (optional)
            - data_source (optional, block):
                - file_system_data_source (optional, block):
                    - directory_path (required)
                    - file_system_access_mode (required)
                    - file_system_id (required)
                    - file_system_type (required)
                - s3_data_source (optional, block):
                    - attribute_names (optional)
                    - hub_access_config (optional, block):
                        - hub_content_arn (required)
                    - instance_group_names (optional)
                    - model_access_config (optional, block):
                        - accept_eula (required)
                    - s3_data_distribution_type (optional)
                    - s3_data_type (required)
                    - s3_uri (required)
            - input_mode (optional)
            - record_wrapper_type (optional)
            - shuffle_config (optional, block):
                - seed (required)
        - output_data_config (optional, block):
            - compression_type (optional)
            - kms_key_id (optional)
            - s3_output_path (required)
        - resource_config (optional, block):
            - instance_count (optional)
            - instance_groups (optional, block):
                - instance_count (required)
                - instance_group_name (required)
                - instance_type (required)
            - instance_placement_config (optional, block):
                - enable_multiple_jobs (optional)
                - placement_specifications (optional, block):
                    - instance_count (required)
                    - ultra_server_id (optional)
            - instance_type (optional)
            - keep_alive_period_in_seconds (optional)
            - training_plan_arn (optional)
            - volume_kms_key_id (optional)
            - volume_size_in_gb (optional)
        - retry_strategy (optional, block):
            - maximum_retry_attempts (optional)
        - role_arn (required)
        - static_hyper_parameters (optional)
        - stopping_condition (optional, block):
            - max_pending_time_in_seconds (optional)
            - max_runtime_in_seconds (optional)
            - max_wait_time_in_seconds (optional)
        - tuning_objective (optional, block):
            - metric_name (required)
            - type (required)
        - vpc_config (optional, block):
            - security_group_ids (required)
            - subnets (required)
    - warm_start_config (block):
        - parent_hyper_parameter_tuning_jobs (optional, block):
            - name (required)
        - warm_start_type (optional)
EOT

  type = map(object({
    name   = string
    region = optional(string)
    tags   = optional(map(string))
    autotune = optional(list(object({
      mode = string
    })))
    config = optional(list(object({
      objective = optional(list(object({
        metric_name = string
        type        = string
      })))
      parameter_ranges = optional(list(object({
        auto_parameters = optional(list(object({
          name       = string
          value_hint = string
        })))
        categorical_parameter_ranges = optional(list(object({
          name   = string
          values = set(string)
        })))
        continuous_parameter_ranges = optional(list(object({
          max_value    = string
          min_value    = string
          name         = string
          scaling_type = optional(string)
        })))
        integer_parameter_ranges = optional(list(object({
          max_value    = string
          min_value    = string
          name         = string
          scaling_type = optional(string)
        })))
      })))
      random_seed = optional(number)
      resource_limits = optional(list(object({
        max_number_of_training_jobs = optional(number)
        max_parallel_training_jobs  = number
        max_runtime_in_seconds      = optional(number)
      })))
      strategy = string
      strategy_config = optional(list(object({
        hyperband_strategy_config = optional(list(object({
          max_resource = optional(number)
          min_resource = optional(number)
        })))
      })))
      training_job_early_stopping_type = optional(string)
      tuning_job_completion_criteria = optional(list(object({
        best_objective_not_improving = optional(list(object({
          max_number_of_training_jobs_not_improving = optional(number)
        })))
        convergence_detected = optional(list(object({
          complete_on_convergence = optional(string)
        })))
        target_objective_metric_value = optional(number)
      })))
    })))
    training_job_definition = optional(list(object({
      algorithm_specification = optional(list(object({
        algorithm_name = optional(string)
        metric_definitions = optional(list(object({
          name  = string
          regex = string
        })))
        training_image      = optional(string)
        training_input_mode = string
      })))
      checkpoint_config = optional(list(object({
        local_path = optional(string)
        s3_uri     = string
      })))
      definition_name                           = optional(string)
      enable_inter_container_traffic_encryption = optional(bool)
      enable_managed_spot_training              = optional(bool)
      enable_network_isolation                  = optional(bool)
      environment                               = optional(map(string))
      hyper_parameter_ranges = optional(list(object({
        auto_parameters = optional(list(object({
          name       = string
          value_hint = string
        })))
        categorical_parameter_ranges = optional(list(object({
          name   = string
          values = set(string)
        })))
        continuous_parameter_ranges = optional(list(object({
          max_value    = string
          min_value    = string
          name         = string
          scaling_type = optional(string)
        })))
        integer_parameter_ranges = optional(list(object({
          max_value    = string
          min_value    = string
          name         = string
          scaling_type = optional(string)
        })))
      })))
      hyper_parameter_tuning_resource_config = optional(list(object({
        allocation_strategy = optional(string)
        instance_configs = optional(list(object({
          instance_count    = optional(number)
          instance_type     = optional(string)
          volume_size_in_gb = optional(number)
        })))
        instance_count    = optional(number)
        instance_type     = optional(string)
        volume_kms_key_id = optional(string)
        volume_size_in_gb = optional(number)
      })))
      input_data_config = optional(list(object({
        channel_name     = string
        compression_type = optional(string)
        content_type     = optional(string)
        data_source = optional(list(object({
          file_system_data_source = optional(list(object({
            directory_path          = string
            file_system_access_mode = string
            file_system_id          = string
            file_system_type        = string
          })))
          s3_data_source = optional(list(object({
            attribute_names = optional(set(string))
            hub_access_config = optional(list(object({
              hub_content_arn = string
            })))
            instance_group_names = optional(set(string))
            model_access_config = optional(list(object({
              accept_eula = bool
            })))
            s3_data_distribution_type = optional(string)
            s3_data_type              = string
            s3_uri                    = string
          })))
        })))
        input_mode          = optional(string)
        record_wrapper_type = optional(string)
        shuffle_config = optional(list(object({
          seed = number
        })))
      })))
      output_data_config = optional(list(object({
        compression_type = optional(string)
        kms_key_id       = optional(string)
        s3_output_path   = string
      })))
      resource_config = optional(list(object({
        instance_count = optional(number)
        instance_groups = optional(list(object({
          instance_count      = number
          instance_group_name = string
          instance_type       = string
        })))
        instance_placement_config = optional(list(object({
          enable_multiple_jobs = optional(bool)
          placement_specifications = optional(list(object({
            instance_count  = number
            ultra_server_id = optional(string)
          })))
        })))
        instance_type                = optional(string)
        keep_alive_period_in_seconds = optional(number)
        training_plan_arn            = optional(string)
        volume_kms_key_id            = optional(string)
        volume_size_in_gb            = optional(number)
      })))
      retry_strategy = optional(list(object({
        maximum_retry_attempts = optional(number)
      })))
      role_arn                = string
      static_hyper_parameters = optional(map(string))
      stopping_condition = optional(list(object({
        max_pending_time_in_seconds = optional(number)
        max_runtime_in_seconds      = optional(number)
        max_wait_time_in_seconds    = optional(number)
      })))
      tuning_objective = optional(list(object({
        metric_name = string
        type        = string
      })))
      vpc_config = optional(list(object({
        security_group_ids = set(string)
        subnets            = set(string)
      })))
    })))
    training_job_definitions = optional(list(object({
      algorithm_specification = optional(list(object({
        algorithm_name = optional(string)
        metric_definitions = optional(list(object({
          name  = string
          regex = string
        })))
        training_image      = optional(string)
        training_input_mode = string
      })))
      checkpoint_config = optional(list(object({
        local_path = optional(string)
        s3_uri     = string
      })))
      definition_name                           = optional(string)
      enable_inter_container_traffic_encryption = optional(bool)
      enable_managed_spot_training              = optional(bool)
      enable_network_isolation                  = optional(bool)
      environment                               = optional(map(string))
      hyper_parameter_ranges = optional(list(object({
        auto_parameters = optional(list(object({
          name       = string
          value_hint = string
        })))
        categorical_parameter_ranges = optional(list(object({
          name   = string
          values = set(string)
        })))
        continuous_parameter_ranges = optional(list(object({
          max_value    = string
          min_value    = string
          name         = string
          scaling_type = optional(string)
        })))
        integer_parameter_ranges = optional(list(object({
          max_value    = string
          min_value    = string
          name         = string
          scaling_type = optional(string)
        })))
      })))
      hyper_parameter_tuning_resource_config = optional(list(object({
        allocation_strategy = optional(string)
        instance_configs = optional(list(object({
          instance_count    = optional(number)
          instance_type     = optional(string)
          volume_size_in_gb = optional(number)
        })))
        instance_count    = optional(number)
        instance_type     = optional(string)
        volume_kms_key_id = optional(string)
        volume_size_in_gb = optional(number)
      })))
      input_data_config = optional(list(object({
        channel_name     = string
        compression_type = optional(string)
        content_type     = optional(string)
        data_source = optional(list(object({
          file_system_data_source = optional(list(object({
            directory_path          = string
            file_system_access_mode = string
            file_system_id          = string
            file_system_type        = string
          })))
          s3_data_source = optional(list(object({
            attribute_names = optional(set(string))
            hub_access_config = optional(list(object({
              hub_content_arn = string
            })))
            instance_group_names = optional(set(string))
            model_access_config = optional(list(object({
              accept_eula = bool
            })))
            s3_data_distribution_type = optional(string)
            s3_data_type              = string
            s3_uri                    = string
          })))
        })))
        input_mode          = optional(string)
        record_wrapper_type = optional(string)
        shuffle_config = optional(list(object({
          seed = number
        })))
      })))
      output_data_config = optional(list(object({
        compression_type = optional(string)
        kms_key_id       = optional(string)
        s3_output_path   = string
      })))
      resource_config = optional(list(object({
        instance_count = optional(number)
        instance_groups = optional(list(object({
          instance_count      = number
          instance_group_name = string
          instance_type       = string
        })))
        instance_placement_config = optional(list(object({
          enable_multiple_jobs = optional(bool)
          placement_specifications = optional(list(object({
            instance_count  = number
            ultra_server_id = optional(string)
          })))
        })))
        instance_type                = optional(string)
        keep_alive_period_in_seconds = optional(number)
        training_plan_arn            = optional(string)
        volume_kms_key_id            = optional(string)
        volume_size_in_gb            = optional(number)
      })))
      retry_strategy = optional(list(object({
        maximum_retry_attempts = optional(number)
      })))
      role_arn                = string
      static_hyper_parameters = optional(map(string))
      stopping_condition = optional(list(object({
        max_pending_time_in_seconds = optional(number)
        max_runtime_in_seconds      = optional(number)
        max_wait_time_in_seconds    = optional(number)
      })))
      tuning_objective = optional(list(object({
        metric_name = string
        type        = string
      })))
      vpc_config = optional(list(object({
        security_group_ids = set(string)
        subnets            = set(string)
      })))
    })))
    warm_start_config = optional(list(object({
      parent_hyper_parameter_tuning_jobs = optional(list(object({
        name = string
      })))
      warm_start_type = optional(string)
    })))
  }))
}

