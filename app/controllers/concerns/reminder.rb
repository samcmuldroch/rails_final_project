def Reminder
  def initalize(text, time)
    @text = text
    @time = time
  end

  def setText(text)
    @text = text
  end

  def getText()
    @text
  end

  def setTime(time)
    @time = time
  end

  def getTime()
    @time
  end
end
