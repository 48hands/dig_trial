# ruby


class FileCountSample

  def is_received

    # hogeファイル数のカウントチェック
    if Dir.glob("/tmp/hoge*.txt").count == 4
      raise "Hoge File not Found!!"
    end

    # fugaファイル数のカウントチェック
    if Dir.glob("/tmp/fuga*.txt").count != 4
      raise "Fuga File not Found!!"
    end

    # gagaファイル数のカウントチェック
    if Dir.glob("/tmp/gaga*.txt").count == 4
      raise "Gaga File not Found!!"
    end

    puts "All recieve completed!!"

  end

end