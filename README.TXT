apiVersion: apps/v1
kind: Deployment
metadata:
  name: tohatoha-app
  labels:
    app: tohatoha-app
spec:
  selector:
    matchLabels:
      app: tohatoha-app
  replicas: 1
  template:
    metadata:
      labels:
        app: tohatoha-app
    spec:
      containers:
      - name: tohatoha-app
        image: mathiasconradt/tohatoha
        imagePullPolicy: IfNotPresent
        ports:
        - containerPort: 3000
        securityContext:
          privileged: false
          allowPrivilegeEscalation: false
          runAsNonRoot: true



apiVersion: apps/v1
kind: Deployment
metadata:
  name: tohatoha-app
  labels:
    app: tohatoha-app
spec:
  selector:
    matchLabels:
      app: tohatoha-app
  replicas: 1
  template:
    metadata:
      labels:
        app: tohatoha-app
    spec:
      containers:
      - name: tohatoha-app
        image: node:16.16.0
        imagePullPolicy: IfNotPresent
        ports:
        - containerPort: 3000
        securityContext:
          privileged: true
