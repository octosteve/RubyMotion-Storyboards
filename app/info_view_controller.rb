class InfoViewController < UIViewController
  attr_accessor :currentPhoto, :detailsLabel
  def viewDidLoad
    detailsLabel.text = currentPhoto.notes
  end

  def dismiss(sender)
    dismissModalViewControllerAnimated true
  end
end
