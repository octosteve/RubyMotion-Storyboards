class PhotosTableViewController < UITableViewController
  def prepareForSegue(segue, sender:sender)
    if segue.identifier == "ShowPhoto" #true
      dvc = segue.destinationViewController
      path = tableView.indexPathForSelectedRow
      c = @photos[path.row]
      dvc.currentPhoto = c
    end
  end

  def viewDidLoad
    @photos = []
    pic = Photo.new
    pic.name = "Overlook"
    pic.filename = "overlook.png"
    pic.notes = "Looking out over the Pacific Ocean"
    @photos << pic

    pic = Photo.new
    pic.name = "Flag"
    pic.filename = "flag.png"
    pic.notes = "California flag, blowing in the wind against a blue sky."
    @photos << pic
    
    pic = Photo.new
    pic.name = "Beach"
    pic.filename = "beach.png"
    pic.notes = "Waves lapping against a California beach."
    @photos << pic

    pic = Photo.new
    pic.name = "Olives"
    pic.filename = "olives.png"
    pic.notes = "Olives ripening on a tree."
    @photos << pic

    pic = Photo.new
    pic.name = "Winery"
    pic.filename = "winery.png"
    pic.notes = "A sign for the Old Creek Ranch and Winery."
    @photos << pic
    delegate = self
  end

 def numberOfSectionsInTableView(tableView)
    1
 end

  def tableView(tableView, numberOfRowsInSection:section)
    @photos.count
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cellIdentifier = "PhotoCell"
    cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
    if cell.nil?
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:cellIdentifier)
    end
    currentPhoto = @photos[indexPath.row]
    cell.textLabel.text = currentPhoto.name
    cell
  end

end
