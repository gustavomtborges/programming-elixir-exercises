defmodule Libraries do
  def floatToString(number) do
    :io.format("~.2f", [number])
  end

  def getEnvVar(env) do
    System.get_env(env)
  end

  def extName(path) do
    Path.extname(path)
  end

  def cwd do
    System.cwd()
  end

  def cmd(command, args) do
    System.cmd(command, args)
  end
end
