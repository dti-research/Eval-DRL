algorithm:
  class: train
  codebase:
    class: learn
    module: baselines.ppo1.pposgd_simple
  hyperparameters:
    adam_epsilon: 1e-05
    batch_size: 512
    clip_param: 0.2
    entcoeff: 0.0
    gamma: 0.96836
    hid_size: 64
    lam: 0.99944
    max_timesteps: 150000
    num_hid_layers: 3
    optim_batchsize: 16
    optim_epochs: 10
    optim_stepsize: 5e-05
    schedule: constant
  module: algorithms/ppo
environment:
  class: get_env
  codebase:
    class: ReacherEnv
    module: senseact.envs.ur.reacher_env
  module: environments/ur
  parameters:
    accel_max: 1.4
    actuation_sync_period: 1
    control_type: velocity
    delay: 0.0
    deriv_action_max: 5
    derivative_type: none
    dof: 2
    dt: 0.04
    episode_length_step: null
    episode_length_time: 4.0
    first_deriv_max: 2
    host: null
    movej_t: 2.0
    reset_type: zero
    reward_type: precision
    rllab_box: false
    run_mode: multiprocess
    speed_max: 0.3
    speedj_a: 1.4
    target_type: position
  setup:
    accel_max: 1.0
    angle_bound_buffer: 0.001
    angles_high:
    - 90
    - -60
    - 130
    - 25
    - 120
    - 175
    angles_low:
    - 60
    - -180
    - -120
    - -50
    - 50
    - 50
    box_bound_buffer: 0.001
    end_effector_high:
    - 0.2
    - 0.4
    - 1.0
    end_effector_low:
    - -0.2
    - -0.3
    - 0.5
    host: 192.168.1.100
    ik_params:
    - 0.089159
    - -0.425
    - -0.39225
    - 0.10915
    - 0.09465
    - 0.0823
    q_ref:
    - 1.58724391
    - -2.4
    - 1.5
    - -0.71790582
    - 1.63685572
    - 1.00910473
    reset_speed_limit: 0.5
    speed_max: 0.3
global:
  seed:
    high: null
    low: null
model:
  class: MlpPolicy
  module: baselines.ppo1.mlp_policy
train:
  artifact_path: artifacts/logs/ppo/0