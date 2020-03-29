# Copyright 2020 K8s Network Plumbing Group
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
{{/* Generate basic SRIOV CNI labels */}}
{{- define "sriov-cni.labels" }}
tier: node
app: {{ .Chart.Name }}-cni
{{- end }}

{{/* Generate basic SRIOV Device Plugin labels */}}
{{- define "sriov-dp.labels" }}
tier: node
app: {{ .Chart.Name }}-dp
{{- end }}

{{/* Generate SRIOV Device Plugin selector labels */}}
{{- define "sriov-dp.serviceAccount.Name" }}
name: {{ .Values.serviceAccount.name }}
{{- end }}