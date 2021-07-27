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

class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
               'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

batch_size = 64
epochs = 20
num_classes = 10

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
        train_images = train_images.astype('float32')
        train_images = train_images / 255.0
        test_images = test_images / 255.0
        # Change the labels from categorical to one-hot encoding
        train_Y_one_hot = to_categorical(train_labels)
        test_Y_one_hot = to_categorical(test_labels)

        from sklearn.model_selection import train_test_split
        train_X,valid_X,train_label,valid_labels = train_test_split(train_images, train_Y_one_hot, test_size=0.2, random_state=13)

        for i in range(25):
                plt.subplot(5,5,i+1)
                plt.xticks([])
                plt.yticks([])
                plt.grid(False)
                plt.imshow(train_X[i], cmap=plt.cm.binary)
                plt.xlabel(class_names[train_labels[i]])
        plt.show()

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
	model = model.fit(trainX, trainY, batch_size=batch_size,epochs=epochs,verbose=2,validation_data=(testX, testY))
	#Evaluate accuracy
	#test_loss, test_acc = model.evaluate(testX,  testY, verbose=2)
	#print('\nTest accuracy:', test_acc)
	# save model
	#model.save('my_model.h5')
	
# entry point, run the test harness
run_test_harness()
