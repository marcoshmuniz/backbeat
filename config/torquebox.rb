require File.expand_path('..', 'app')

TorqueBox.configure do
  ruby do
    version '1.9'
    compile_mode 'jit'
  end

  environment do
    # EXAMPLE 'example_value'
  end

  pool :web do
    type :bounded
    min 32
    max 128
  end

  pool :job do
    type :bounded
    min 1
    max 2
  end

  web do
    context '/'
    static 'public'
    host 'localhost'
  end

  service WorkflowServer::Services::SidekiqService do
    name 'backbeat_sidekiq_worker'
    config do
      queues ['accounting_backbeat_server']
      concurrency 100
    end
  end

  job WorkflowServer::Reports::DailyReport do
    cron '0 0 12 1/1 * ? *'
  end
end
