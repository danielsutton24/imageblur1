class Image
  def initialize(banana)  
   @image=banana
  end

  def output_image
     @image.each do |row|
      puts row.join
     end
  end


  def getOnes
    ones=[]
    @image.each_with_index do |row,yaxis|
      row.each_with_index do |image, xaxis|
        if image == 1 
          ones<<[yaxis, xaxis]      
        end
      end
    end
     ones
  end

  def blur
    indexOfOnes=getOnes()
    indexOfOnes.each do |row, column|
      #print row
    
        @image[row-1][column]=1 unless row-1==-1
        @image[row][column+1]=1 unless column+1>=@image[row].length 
        @image[row][column-1]=1 unless column-1==-1
        @image[row+1][column]=1 unless row+1>=@image[column].length


      
       
     #end
   
    end
    #print @image
  end

  def manDistance(run)
  
    run.times do |blur|
       blur()
    end
  end





end


  image = Image.new([
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 1, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0]
])



image.manDistance(2)
image.output_image


