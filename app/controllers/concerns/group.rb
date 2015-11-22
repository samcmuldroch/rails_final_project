class Group
  def initialize(name, user)
    @name = name
    @user = user
  end

  def setAdmin(user)
    @user = user
  end

  def getAdmin()
    @user
  end

  def addUser(user)
  end

  def deleteUser(user)
  end

  def containsUser()
  end
end
