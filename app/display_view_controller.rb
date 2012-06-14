class DisplayViewController < UIViewController
  attr_accessor :currentPhoto, :currentImage

  def viewDidLoad
    image = UIImage.imageNamed(@currentPhoto.filename)
    currentImage.setImage image
    setTitle(@currentPhoto.name)
  end

  def prepareForSegue(segue, sender:sender)
    ivc = segue.destinationViewController
    ivc.currentPhoto = currentPhoto
  end
end
