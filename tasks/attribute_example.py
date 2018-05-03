import digdag

class Attribute(object):
  def prepare(self):
    # 変数を格納してみる。
    digdag.env.store({"my_param1": "one one one"})
    digdag.env.store({"my_param2": "two two two"})