variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
  default     = "cluster-aulao"
}

variable "cluster_version" {
  description = "Versão do Kubernetes para o cluster EKS"
  type        = string
  default     = "1.29"
}

variable "region" {
  description = "Região AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

variable "argocd_chart_version" {
  description = "Versão do Helm chart do ArgoCD"
  type        = string
  default     = "6.0.3"
}

variable "argocd_namespace" {
  description = "Namespace onde o ArgoCD será instalado"
  type        = string
  default     = "argocd-prd"
}

variable "node_desired_size" {
  description = "Número desejado de nodes no cluster"
  type        = number
  default     = 3
}

variable "node_min_size" {
  description = "Número mínimo de nodes no cluster"
  type        = number
  default     = 1
}

variable "node_max_size" {
  description = "Número máximo de nodes no cluster"
  type        = number
  default     = 10
}

variable "environment" {
  description = "Ambiente (dev, staging, prod)"
  type        = string
  default     = "dev"
}
