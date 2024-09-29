output "aws_instance_name" {
  value       = aws_instance.jenkins.tags["Name"]
  description = "Name of the Jenkins server"
}

output "jenkins_url" {
  value       = aws_instance.jenkins.public_ip
  description = "Public IP address for accessing Jenkins"
}
