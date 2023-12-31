# Low Code Data Platform

Welcome to the awesome Low Code Data Platform! 🚀 This cutting-edge solution empowers you and your team to effortlessly collect, manage, and analyze data.

## Tech Stack Architecture

Our state-of-the-art Low Code Data Platform comprises an exceptional blend of powerful technologies. Brace yourself for this mind-blowing tech stack:

![Low Code Data Platform drawio](https://github.com/ktyptorio/low-code-data-platform/assets/81064943/13330f34-3828-4a73-8cd7-511b4c374a95)

1. **Open Metadata**: An open-source metadata framework that revolutionizes the way you manage data objects, data sources, and workflows. It's the ultimate superhero in metadata management.

2. **Airbyte**: Get ready to ride the data wave with Airbyte, an open-source data integration tool that connects, collects, and delivers data from diverse sources to your data destinations. It's like magic for your data pipelines!

3. **Clickhouse**: Say hello to Clickhouse, the distributed columnar database designed to skyrocket your data analysis performance. It's built for speed and scale, providing lightning-fast insights into your data universe.

4. **MinIO**: The almighty MinIO, an open-source object storage system, has got your back when it comes to storing both raw and structured data. It's the ultimate vault for your data treasures.

5. **Jupyterhub**: Unleash your data-driven creativity with Jupyterhub, the web-based interactive programming environment. It's your playground for creating, collaborating, and sharing Jupyter notebooks like a true data maestro.

6. **Metabase**: Brace yourself for the visual extravaganza brought by Metabase, the open-source data visualization tool. It's the ultimate gateway to exploring and understanding your data universe, with a sleek and intuitive user interface.

## Let's Get Started

Now, let's dive into the thrilling adventure of setting up and running this powerhouse Low Code Data Platform. Buckle up and follow these steps:

1. **First VM** - Open Metadata Installation:

    - Get ready to unleash the metadata magic! Execute the following commands to install Open Metadata:
      ```bash
      sudo bash docker-install.sh
      cd openmetada
      sudo bash open-metadata.sh --up
      ```

2. **Other VMs** - Data Platform Activation:

    - It's time to ignite the Data Platform flames across multiple VMs. Execute the following commands to install and activate the Data Platform:
      ```bash
      sudo bash docker-install.sh
      sudo bash domain-data-platform.sh --up
      ```

## Configuration Warning
⚠️ **IMPORTANT: Default .env Configuration**

Please note that the provided ``.env`` configuration file contains default settings. It is crucial to review and adjust the credentials and configuration according to your specific requirements before running the Low Code Data Platform.

Ensure that you carefully set up the necessary credentials, API keys, and access controls to maintain the security and privacy of your data. Failure to properly configure the environment may result in unauthorized access or data breaches.

Please take the time to thoroughly review the documentation and follow the recommended guidelines for securing your Low Code Data Platform installation.

Stay tuned for mind-blowing use cases and unleash the full potential of this epic Low Code Data Platform.

---
