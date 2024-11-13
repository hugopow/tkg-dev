# How to obtain kube config file from dsm worker nodes

# SSH to DSM Provider appliance
ssh root@ip-of-dsm-provider-appliance
password is Vmware1!

# Location of ssh key to log into worker nodes
/opt/vmware/tdm-provider/provisioner/sshkey

# ssh to dsm 
ssh -i sshkey capv@ip-of-dsm-worker-node

# Change to root
sudo -i

# kubeconfig file
/etc/kubernetes/admin.conf






apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM2akNDQWRLZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJME1URXhNekE0TlRRd04xb1hEVE0wTVRFeE1UQTROVGt3TjFvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTWJkCnRhN0hSWiswUnArZk1LWUYyeXlJekRMZHM3amxUWkp1eEtBREFUVkZmZ3VJQTlEd3FYc2kzRWtNbXNFclkyWjQKd2J1bnVyL0hiZ0I2K09abHhxWG9ZK1dMbjR3VHB6ZG9YSWM4MGJzeGZSMXIycDhjZDlDN0k5Qkd5dWpWN0RCMAoyUlMxSExLdmFuY3Yyc0xyUnh2UlpLSHE2SEYvTFpRbkY5VW9lbFNvajNGVk5hRkxyaEdSVXZ3amZOeGNScjFSCnJIa090cXFSa3htU3ZaWXgydnpSdEtzMFVTZHpIeGFHRFltak9LOE5NU0hTdHV3V25GOHQ5NHpkbUxFekI0Sk4KN1ZwOTFBdGF5SE5qblJncDVsbWxDa1c5bVFVa2dmUXBiekhRNVVJQjdPQUZ5NlRBdlc0MkMwMHVxYngwY0FoZApYdE1QSjZseTdLbFhicmVzbDEwQ0F3RUFBYU5GTUVNd0RnWURWUjBQQVFIL0JBUURBZ0trTUJJR0ExVWRFd0VCCi93UUlNQVlCQWY4Q0FRQXdIUVlEVlIwT0JCWUVGTGZoOWEyeTh5VmxuWmVVZngrdmEyb1ZuL2hCTUEwR0NTcUcKU0liM0RRRUJDd1VBQTRJQkFRQTYyMVhoMEliclUydHlwT2dJZTBQQTdxcHR3WXlXTi94NnJEcG1Wd3FIbnpMYwpBUjh4K1daRXdKaCtpMFR6VUlvTmJZRVhuc2Uwa0VHZ2taSGI2cHc2SDhyQ0FxY2k0djZydHZ1VFNWK25JSEdYCkl6anh5c044U005Q2JTOWgzWmdGSW5IRlZ3UW83RngzbG8xSTJQQzV5RlYwcGNrem44S3FmTVVIZ1lPZDMxTmcKaWVpZWJqOVhQcFpxZEtCOVk1eWl4WVRtNXBaY2JvM3VBaTdCTmxSQy9CV2lUVUl6MkVFOWhxNFpPTEltWWZPNApaWWpUbHRWWStxT3NiOUFQTEYxOW9aVUpuVXcyMXE5MkZhMHVtUnFPU0xOV2ZNRFIwSDE2c0VmVUo4RVBqYnc1CmhGdlVjbUI5NUlLZlp2dXZJZ1hweTdPbzY5enhoaHdrdm4rNGNqMHMKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=
    server: https://172.16.1.34:6443
  name: demo-1
contexts:
- context:
    cluster: demo-1
    user: kubernetes-admin
  name: kubernetes-admin@demo-1
current-context: kubernetes-admin@demo-1
kind: Config
preferences: {}
users:
- name: kubernetes-admin
  user:
    client-certificate-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURJVENDQWdtZ0F3SUJBZ0lJS0tLMnRqQ0FYMkF3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TkRFeE1UTXdPRFUwTURkYUZ3MHlOVEV4TVRNd09UQXdNek5hTURReApGekFWQmdOVkJBb1REbk41YzNSbGJUcHRZWE4wWlhKek1Sa3dGd1lEVlFRREV4QnJkV0psY201bGRHVnpMV0ZrCmJXbHVNSUlCSWpBTkJna3Foa2lHOXcwQkFRRUZBQU9DQVE4QU1JSUJDZ0tDQVFFQW8vZWJDeGJCWTdUL3pxb2kKclVGMjJ0OUM5SS9VczFhR1dZeWY4VjNJcm5EMXFoT3pRTXgrdEQwcnhXclAvYkwzM3cxeFJxaUlkeE5WQXZBdgpaZkF5UWpORVNDaWFEcHRLaTQwa0t2b09wc0lDT1R0UUFCOG8vbWMzaWQ1Y0o1Y2gxa3V4eGlUd1Z5VFg3cDdlCnUwbkNaU0FaQlNYcGN5M0ZPbVRwRy9xYVd1MkJVYWY5b3p6RnNDS29mbjR4U2FtSUpCbDF3SUJjL3kxdWNJNGEKWXNaU0g4NThaaHF4eUdwaWd6R0cveUMvWklWQVBma0YxVkpwc0hTelJSNjZrT3NmcW5FWEdPM3J0NzFzTW8wagpQcmNhQmZyMGl2L1NwL2owb29OdjIrMmtNTDNrT0J0akl1WTdaendVaEJJamg0Sm16Z2ZvYUtGQm9wSmZvc1FwCmlwY0FUUUlEQVFBQm8xWXdWREFPQmdOVkhROEJBZjhFQkFNQ0JhQXdFd1lEVlIwbEJBd3dDZ1lJS3dZQkJRVUgKQXdJd0RBWURWUjBUQVFIL0JBSXdBREFmQmdOVkhTTUVHREFXZ0JTMzRmV3Rzdk1sWloyWGxIOGZyMnRxRlovNApRVEFOQmdrcWhraUc5dzBCQVFzRkFBT0NBUUVBZlVSaXJIdE5XNWNlYWtHc0NNbkdVN1RhbnpmTkNuaXQxTWo5CjZyZW9aWVpzVzZUM3lmeXk0dDhvdlFkdXVkdnM2VHBQemJVV2JWb0VaekV0UDducHkzekNDWHNUZkhmcy90cSsKSHI1TlRjNVRESGdyU2RCRjdTeERob2doRFhDV1lEdTZSc1M1K3dmTjZPVDIvdnUyR3ZwdmZHMTMvelRUOFlhcwpaYzczcDJKTnJPN3FjOU44N0lCSTlhSDNwYVhaeCs0NGF2V2wyUnV5ZlVmdTdEbWV0aGFPb3VNQWxoNGVWeTFjCng0RkxZNVBYUmROS1dyRkpzalZJN3Nqb21kaVY4aXkyZXdOaFVWeDFUYjBVYUd4aE1PaEM4VDlPL1pPWStHaWoKallpUHhaNUUrb2ZPRTZVajdEeURicmlFTnN6YlJJRmZndnZFUmFjSVQ0ZEtPOFdzdlE9PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
    client-key-data: LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFb2dJQkFBS0NBUUVBby9lYkN4YkJZN1QvenFvaXJVRjIydDlDOUkvVXMxYUdXWXlmOFYzSXJuRDFxaE96ClFNeCt0RDByeFdyUC9iTDMzdzF4UnFpSWR4TlZBdkF2WmZBeVFqTkVTQ2lhRHB0S2k0MGtLdm9PcHNJQ09UdFEKQUI4by9tYzNpZDVjSjVjaDFrdXh4aVR3VnlUWDdwN2V1MG5DWlNBWkJTWHBjeTNGT21UcEcvcWFXdTJCVWFmOQpvenpGc0NLb2ZuNHhTYW1JSkJsMXdJQmMveTF1Y0k0YVlzWlNIODU4WmhxeHlHcGlnekdHL3lDL1pJVkFQZmtGCjFWSnBzSFN6UlI2NmtPc2ZxbkVYR08zcnQ3MXNNbzBqUHJjYUJmcjBpdi9TcC9qMG9vTnYyKzJrTUwza09CdGoKSXVZN1p6d1VoQklqaDRKbXpnZm9hS0ZCb3BKZm9zUXBpcGNBVFFJREFRQUJBb0lCQUFlNTB3Uml2aG9FblVrUAptekt1c3ZyOUtocDc3SG5HeWUzT1Fuc05BRGUzK3R0WXNrbUxXUzBFOU5zSWZXUm0ybWNZS3c0NVFyVFpwRmZQCkdXeWtOTG9KMEYzV0MreEVSTzd1WjVYZTBuSHBFbEhBQ2JUM3d1YTUxbFFZdGg3bmNDQzQwRmVWeGYxVkx4ZC8KUk45dVNrcVppSlJGaFFwNFRhTEN2bmtqQmNMaStyQzI1U1ZZeHkrOWFkVlg1ODFVRTZKdmVlVStLNzZXK0RVRgpOUlBZeW9FenJUOG92TTd2WHpwRjN4UU1qNzlRUmtWQkpBODZBNU1MZXpKZTI0MGxHT3JxZ3Z5QlFtOHQ1dW1VCm9zaDFhendRcnIzeGc2RmUrK29lUjRzMlBraFdJeW9PYXZxZnI5bmhCZFRQTUdmaU5TT0NTMGJNS1A0Nmc4azkKR2pLK3FnRUNnWUVBMXNZdkdybG43TTZuZndxeWZMdmY4Rm0raFA3OXE4QnB1RFlFYWJ2Ly9WRzQ4ZjlLeUVuQwpqcnNtVitVbFZrTURHYkhKS3d0UHJTVmZlQXV2eU9MQXJVWmYyYWIySkFvQlNubjBuL1ZQbHNGY2Z3RFNRSlZzCnhRaFJxNDVlSHpEVkVpVElNRzJtekVHMUt2OS9mRjN0MjI5WS80WU5KQWlJM1BEWEpKdXdTd1VDZ1lFQXczRFAKOGRETkxSRFozdkdwZEhPWnd3WEpWbi9ZMUFBeWtXdlVkWW5GSkRtczRiWG15NjFscUlsSGJKNzhiQ0F1SDNVRgo5cDBTYStBTmF5ZGJPRS92bE9CM2pITHhQRjRmRzh1STVhN2I3cFhlanRzUmxkQUNkbm1EM2d0c1B0RWVRQ2NYCkYyNFFKQkxpZGFLcUdLWU1LMlN5L1ZxcXJxV3ZKWWk3cUJpY3Nxa0NnWUJkV0oyNGU4VFRnNjRBNVdGV0hVSGoKY040QlorSlE5N3Y3T0Y4S3BZOUpSbStmbmxtZVc1Q1lBSGRWMUY0NTg3NHhPTGc2WVJ3c0lRWXhZc0x3Q0wyOQprY3l2Q0lZS2U5Njd3KzJ5YUNoRFdaOGVBL2xkNEpQNXZ2ZmdIR3lFR2ZGQmhZTU1xVnZKZ3ZWK3pyVldGRzBBCjVwQkQzcnR2WWRZNlVPTHhJa21wRVFLQmdBK3IwUkM3eEdmenJQU2lmZ3IzWmdIc1NkdWt2cmNwR09UdU40Z0IKTnd5VGoxZzk1TGE2UGFlSThuQTBRMXRNTFVhYWRKTDB2MUJsRTg1ZXhvSzZiaVNLNXlzYzRGa04xd0s4akVxVwpmYzRndUVyT0tCZlNLUkJrNS96Ni8zLzk5cVlBUEdyRmlZZks5OXVrNG15OWk4WkMrZE0wM1BES0drUXhOWkxoCi9sYVpBb0dBTTAyVSt3MHcyMjFBWHFpdUIyOVRuK3hyS0MrcVhidUNNMDMrTnh2cmdiVjlETGY5d3BwMlc5b1EKa25FbzIxeTlzVzBGMkZ5dWJ0U09KbnJYK2VFZWhFaUVWNDJSczhab2JtSGl0cjU0Rk5RSmNFd3k4OHNWWlNCdQpJbWp4eVdtaXo0aU94ZlppeGhhSWxPWmhEbGpoNTJJeXpMTXdxeHROWkIzbjl0S1I1T1E9Ci0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg==