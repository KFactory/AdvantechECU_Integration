Code created by KFactory team - www.kfactory.eu


# ECU1251 WPF Client

This is a Windows Presentation Foundation (WPF) client application that demonstrates how to log in to an ECU device, retrieve an access token, and use that token to call endpoints such as `/tags` to retrieve a collection of tags.

## Getting Started

To run this application, follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/ECU1251-WPF-Client.git

2. Open the project in Visual Studio or your preferred C# IDE.
3. Build and run the application.

## Prerequisites

.NET 6

.Visual Studio or any other compatible C# IDE

## Usage

1. Launch the application.

2. Enter the ECU's IP address and password in the corresponding fields.

3. Click the "Step 1: ECU Login" button to log in to the ECU and obtain an access token.

   - The `BTN_Login_Click` event handler initiates a login request to the specified ECU IP address with the provided password. It uses an insecure `HttpClientHandler` for demonstration purposes, bypassing hostname verification and trusting self-signed certificates. The response contains an access token that is extracted and displayed in the "Token returned by ECU" text box.

4. Enter the desired endpoint (e.g., `/data/tags/`) in the "Endpoint" field.

5. Click the "Step 2: Send command to ECU" button to send a GET request to the specified endpoint using the obtained access token.

   - The `BTN_SendGetRequest_Click` event handler sends a GET request to the specified endpoint with the stored access token in the request headers. The response from the ECU is displayed in the "ECU Response" text box.
  
## Important Notes

**The application uses an insecure HttpClientHandler for demonstration purposes, bypassing hostname verification and trusting self-signed certificates. In a production environment, proper security measures should be taken.**

**This application is provided as a sample and is not intended for production use without proper security and error handling enhancements.**
