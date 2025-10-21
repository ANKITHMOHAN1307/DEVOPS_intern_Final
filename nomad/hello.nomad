job "hello" {
  datacenters = ["dc1"]
  type = "service"

  group "hello-group" {
    task "hello-task" {
      driver = "docker"

      config {
        image = "your-dockerhub-username/hello:latest" # Replace with your image
        ports = ["http"]
      }

      resources {
        cpu    = 100  # MHz
        memory = 128  # MB
      }

      service {
        name = "hello-service"
        port = "http"
        check {
          type     = "tcp"
          interval = "10s"
          timeout  = "2s"
        }
      }
    }

    network {
      port "http" {
        static = 8080
      }
    }
  }
}
