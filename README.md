# Low Code Data Platform

Welcome to the awesome Low Code Data Platform! 🚀 This cutting-edge solution empowers you and your team to effortlessly collect, manage, and analyze data.

## Tech Stack Architecture

Our state-of-the-art Low Code Data Platform comprises an exceptional blend of powerful technologies. Brace yourself for this mind-blowing tech stack:



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
      mkdir -p $PWD/docker-volume/db-data
      sudo docker compose up -d
      ```

2. **Other VMs** - Data Platform Activation:

    - It's time to ignite the Data Platform flames across multiple VMs. Execute the following commands to install and activate the Data Platform:
      ```bash
      sudo bash docker-install.sh
      sudo bash domain-data-platform.sh --up
      ```

Stay tuned for mind-blowing use cases and unleash the full potential of this epic Low Code Data Platform.

---
