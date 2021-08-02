# example
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, LSTM
from tensorflow import keras
from tensorflow.keras.utils import to_categorical
import numpy as np
from matplotlib import pyplot as plt
from tensorflow.keras import Input
from tensorflow.keras.models import Sequential,Model
from tensorflow.keras.layers import Dense, Dropout, Flatten
from tensorflow.keras.layers import Conv2D, MaxPooling2D
from tensorflow.keras.layers import BatchNormalization
from tensorflow.keras.layers import LeakyReLU

from tensorflow.keras.preprocessing.image import load_img
from tensorflow.keras.preprocessing.image import img_to_array
from tensorflow.keras.models import load_model
import cv2

class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
               'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

batch_size = 64
epochs = 20
num_classes = 10

from PIL import Image, ImageFilter
from matplotlib import pyplot as plt


def imageprepare(argv):
    """
    This function returns the pixel values.
    The imput is a png file location.
    """
    im = Image.open(argv).convert('L')
    width = float(im.size[0])
    height = float(im.size[1])
    newImage = Image.new('L', (28, 28), (255))  # creates white canvas of 28x28 pixels

    if width > height:  # check which dimension is bigger
        # Width is bigger. Width becomes 20 pixels.
        nheight = int(round((20.0 / width * height), 0))  # resize height according to ratio width
        if (nheight == 0):  # rare case but minimum is 1 pixel
            nheight = 1
            # resize and sharpen
        img = im.resize((20, nheight), Image.ANTIALIAS).filter(ImageFilter.SHARPEN)
        wtop = int(round(((28 - nheight) / 2), 0))  # calculate horizontal position
        newImage.paste(img, (4, wtop))  # paste resized image on white canvas
    else:
        # Height is bigger. Heigth becomes 20 pixels.
        nwidth = int(round((20.0 / height * width), 0))  # resize width according to ratio height
        if (nwidth == 0):  # rare case but minimum is 1 pixel
            nwidth = 1
            # resize and sharpen
        img = im.resize((nwidth, 20), Image.ANTIALIAS).filter(ImageFilter.SHARPEN)
        wleft = int(round(((28 - nwidth) / 2), 0))  # caculate vertical pozition
        newImage.paste(img, (wleft, 4))  # paste resized image on white canvas

    # newImage.save("sample.png

    tv = list(newImage.getdata())  # get pixel values

    # normalize pixels to 0 and 1. 0 is pure white, 1 is pure black.
    tva = [(255 - x) * 1.0 / 255.0 for x in tv]
    print(tva)
    return tva

def load_dataset():
        # load dataset
        fashion_mnist = tf.keras.datasets.fashion_mnist
        (trainX, trainY), (testX, testY) = fashion_mnist.load_data()

        classes = np.unique(trainY)
        nClasses = len(class_names)
        print('Total number of outputs : ', nClasses)
        print('Output classes : ', classes)
        # reshape dataset to have a single channel
        trainX = trainX.reshape((trainX.shape[0], 28, 28, 1))
        testX = testX.reshape((testX.shape[0], 28, 28, 1))
        
        return trainX, trainY, testX, testY
def Preprocess_the_data(train_images,test_images,train_labels,test_labels):
        plt.figure(figsize=(10,10))
        train_images = train_images.astype('float32')
        test_images = train_images.astype('float32')
        train_images = train_images / 255.0
        test_images = test_images / 255.0
        # Change the labels from categorical to one-hot encoding
        train_Y_one_hot = to_categorical(train_labels)
        test_Y_one_hot = to_categorical(test_labels)

        from sklearn.model_selection import train_test_split
        train_X,valid_X,train_label,valid_labels = train_test_split(train_images, train_Y_one_hot, test_size=0.2, random_state=13)
        return train_X,valid_X,train_label,valid_labels
# define cnn model
def create_model():
        model = tf.keras.Sequential([
                tf.keras.layers.Flatten(input_shape=(28, 28)),
                tf.keras.layers.Dense(128, activation='relu'),
                tf.keras.layers.Dense(10)
                ])
        model.compile(optimizer='adam',
              loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])
        return model
def create_model_2():
        fashion_model = Sequential()
        fashion_model.add(Conv2D(32, kernel_size=(3, 3),activation='linear',input_shape=(28,28,1),padding='same'))
        fashion_model.add(LeakyReLU(alpha=0.1))
        fashion_model.add(MaxPooling2D((2, 2),padding='same'))
        fashion_model.add(Conv2D(64, (3, 3), activation='linear',padding='same'))
        fashion_model.add(LeakyReLU(alpha=0.1))
        fashion_model.add(MaxPooling2D(pool_size=(2, 2),padding='same'))
        fashion_model.add(Conv2D(128, (3, 3), activation='linear',padding='same'))
        fashion_model.add(LeakyReLU(alpha=0.1))                  
        fashion_model.add(MaxPooling2D(pool_size=(2, 2),padding='same'))
        fashion_model.add(Flatten())
        fashion_model.add(Dense(128, activation='linear'))
        fashion_model.add(LeakyReLU(alpha=0.1))
        fashion_model.add(Dropout(0.3))
        fashion_model.add(Dense(num_classes, activation='softmax'))

        fashion_model.compile(loss=keras.losses.categorical_crossentropy, optimizer=keras.optimizers.Adam(),metrics=['accuracy'])
        return fashion_model

def load_model():
        # Recreate the exact same model, including its weights and the optimizer
        new_model = tf.keras.models.load_model('my_model.h5')
        # Show the model architecture
        new_model.summary()
# run the test harness for evaluating a model
def run_test_harness():
        # load dataset
        trainX, trainY, testX, testY = load_dataset()
        # prepare pixel data
        trainX, testX,trainY,testY= Preprocess_the_data(trainX, testX,trainY,testY)
        # create model
        model = create_model_2()
        model.summary()
        #fit model
        #model.fit(trainX, trainY, epochs=10, batch_size=32, verbose=0)
        model_train_dropout = model.fit(trainX, trainY, batch_size=batch_size,epochs=epochs,verbose=2,validation_data=(testX, testY))
        # save model
        model.save('my_model.h5')
        
def run_evalute():
        # load dataset
        trainX, trainY, testX, testY = load_dataset()
        # prepare pixel data
        trainX, testX,trainY,testY= Preprocess_the_data(trainX, testX,trainY,testY)
        # load model
        fashion_model = keras.models.load_model('my_model.h5')
        #Evaluate accuracy
        test_eval = fashion_model.evaluate(testX, testY, verbose=2)
        print('Test loss:', test_eval[0])
        print('Test accuracy:', test_eval[1])

def run_test_prediction():
        # load dataset
        trainX, trainY, testX, testY = load_dataset()
        
        # prepare pixel data
        trainX, testX,trainY,testY= Preprocess_the_data(trainX, testX,trainY,testY)
        print(trainX.shape,trainY.shape,testX.shape, testY.shape)
        # load model
        fashion_model = keras.models.load_model('my_model.h5')
        #preditions
        predicted_classes = fashion_model.predict(testX)
        #change shape
        predicted_classes = np.argmax(np.round(predicted_classes),axis=1)
        test_Y=np.argmax(np.round(testY),axis=1)
        print(predicted_classes.shape, test_Y.shape)
        #show prediction
        # correct= np.where(predicted_classes==test_Y)[0]
        #print ("Found %d correct labels" % len(correct))

        for i in range(25):
                plt.subplot(5,5,i+1)
                plt.xticks([])
                plt.yticks([])
                plt.imshow(testX[i].reshape(28,28), cmap='gray', interpolation='none')
                if predicted_classes[i] == test_Y[i]:
                        color = 'blue'
                else:
                        color = 'red'
                plt.title("Class {}".format(class_names[test_Y[i]]),color=color)
                plt.xlabel("Prediction {}".format(class_names[predicted_classes[i]],color=color))
                plt.tight_layout()
        plt.show()
# load and prepare the image
def load_image(filename):
        # load the image
        x=[imageprepare(filename)]
        
        newArr=[[0 for d in range(28)] for y in range(28)]
        k = 0
        for i in range(28):
                for j in range(28):
                        newArr[i][j]=x[0][k]
                        k=k+1
        return x
        
def procesing_image(img):
        # convert to array
	img = img_to_array(img)
	# reshape into a single sample with 1 channel
	img = img.reshape(1, 28, 28, 1)
	# prepare pixel data
	img = img.astype('float32')
	img = img / 255.0
	return img

# load an image and predict the class
def run_example(file_path):
        # load the image
        img= load_image_1(file_path)
        #img=procesing_image(img)
        # load model
        model = keras.models.load_model('my_model.h5')
        # predict the class
        result = np.argmax(model.predict(img), axis=-1)
        plt.subplot(1,2,1)
        plt.xticks([])
        plt.yticks([])
        plt.imshow(img.reshape(28,28), cmap='gray', interpolation='none')
        plt.xlabel("Prediction {}".format(class_names[result[0]]))
        plt.show()
        print(result[0])
def load_image_1(filename):
	# load the image
	img = load_img(filename, color_mode = "grayscale", target_size=(28, 28))
	# convert to array
	img = np.array(img, dtype="float")
	# reshape into a single sample with 1 channel
	img = img.reshape(1, 28, 28, 1)
	# prepare pixel data
	img = img.astype('float32')
	img = img / 255.0
	return img
#entry point, run the test harness
#run_test_harness()
#run_evalute()
#run_test_prediction()
run_example('E:\GitHub\PhanMemQuanLyCuaHangQuanAo\DoAn_QuanLyShopThoiTrang\Image\DMSPAN20210509\LSPAPHONG20210509\ÁO PHÔNG NAM APHTK217\APHTK217.jpg')
