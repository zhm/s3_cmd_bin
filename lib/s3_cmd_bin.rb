require "s3_cmd_bin/version"

module S3CmdBin
  def self.s3cmd
    File.join(File.expand_path('../', File.dirname(__FILE__)), "resources", "s3cmd")
  end

  def self.version
    `#{s3cmd} --version`.strip
  end

  def self.execute(params=[])
    `#{s3cmd} #{(params || []).join(' ')}`
  end
end
