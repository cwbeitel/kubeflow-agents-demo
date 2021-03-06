{
  global: {
    // User-defined global parameters; accessible to all component and environments, Ex:
    // replicas: 4,
  },
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "kubeflow-core": {
      cloud: "null",
      disks: "null",
      name: "kubeflow-core",
      namespace: "default",
      tfJobImage: "gcr.io/tf-on-k8s-dogfood/tf_operator:v20171214-0bd02ac",
    },
    "agents-ppo": {
      algorithm: "agents.ppo.PPOAlgorithm",
      discount: 0.995,
      dump_dependency_versions: "False",
      env: "KukaBulletEnv-v0",
      eval_episodes: 25,
      fission_router_ip: "10.28.0.98",
      gcp_project: "kubeflow-rl",
      hparam_set_id: "pybullet_kuka_ff",
      image: "gcr.io/kubeflow-rl/agents-ppo:cpu-256e4ec7",
      image_gpu: "null",
      init_logstd: "-1",
      init_mean_factor: 0.1,
      job_tag: "0123-1611-753a",
      kl_cutoff_coef: 1000,
      kl_cutoff_factor: 2,
      kl_init_penalty: 1,
      kl_target: 0.01,
      learning_rate: 0.0001,
      logdir: "gs://kubeflow-rl-kf/jobs/kuka-0123-1611-753a",
      max_length: 1000,
      name: "kuka-0123-1611-753a",
      namespace: "rl",
      network: "agents.scripts.networks.feed_forward_gaussian",
      num_agents: 30,
      num_cpu: 31,
      num_gpus: 0,
      num_masters: 1,
      num_ps: 1,
      num_replicas: 1,
      num_workers: 1,
      optimizer: "tensorflow.train.AdamOptimizer",
      render_secs: 610,
      run_base_tag: "0e90193e",
      run_mode: "train",
      steps: 40000000,
      sync_replicas: "False",
      update_epochs: 25,
      update_every: 30,
    },
    tensorboard: {
      log_dir: "gs://kubeflow-rl-kf/jobs/pybullet-kuka-0123-1053-4837",
      name: "pybullet-kuka-0123-1053-4837",
      namespace: "rl",
      secret: "gcp-credentials",
      secret_file_name: "secret.json",
    },
  },
}
