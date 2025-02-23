{#
  Copyright 2019 Google LLC

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
#}

{% import "macros/props.tpl" as props_macro %}
{{ task_id | to_var }} = spark_submit.SparkSubmitOperator(
    task_id={{ task_id | to_python }},
    trigger_rule={{ trigger_rule | to_python }},
    application={{ application | to_python }},
    conf={{ conf | to_python }},
    spark_conn_id={{ spark_conn_id | to_python }},
    jars={{ jars | to_python }},
    java_class={{ java_class | to_python }},
    name={{ name | to_python }},
    application_args={{ application_args | to_python }},
)
