# example
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, LSTM
from tensorflow import keras
import numpy as np
from matplotlib import pyplot as plt

class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
               'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']
def load_dataset():
        # load dataset
        fashion_mnist = tf.keras.datasets.fashion_mnist
        (trainX, trainY), (testX, testY) = fashion_mnist.load_data()
        # reshape dataset to have a single channel
        trainX = trainX.reshape((trainX.shape[0], 28, 28, 1))
        testX = testX.reshape((testX.shape[0], 28, 28, 1))
        #explore the data
        trainX.shape
        len(trainY)
        trainY
        testX.shape
        len(testY)
        return trainX, trainY, testX, testY
def Preprocess_the_data(train_images,test_images,train_labels):
        plt.figure(figsize=(10,10))
        train_images = train_images / 255.0
        test_images = test_images / 255.0
        for i in range(25):
                plt.subplot(5,5,i+1)
                plt.xticks([])
                plt.yticks([])
                plt.grid(False)
                plt.imshow(train_images[i], cmap=plt.cm.binary)
                plt.xlabel(class_names[train_labels[i]])
        plt.show()
        return train_images, test_images
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
	trainX, testX = Preprocess_the_data(trainX, testX,trainY)
	# create model
	model = create_model()
	#fit model
	model.fit(trainX, trainY, epochs=10, batch_size=32, verbose=0)
	#Evaluate accuracy
	test_loss, test_acc = model.evaluate(testX,  testY, verbose=2)
	print('\nTest accuracy:', test_acc)
	# save model
	model.save('my_model.h5')
	
# entry point, run the test harness
run_test_harness()
