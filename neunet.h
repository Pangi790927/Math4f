#ifndef NEUNET_H
#define NEUNET_H

#include <functional>
#include "MathLib.h"

struct Layer {

	using FnType = std::function <double (double)>;
	FnType f;
	Math::VMatrix<double> w;
	Math::VMatrix<double> b;
	Math::VMatrix<double> a;
	Math::VMatrix<double> h;

	Math::VMatrix<double> apply_f(const Math::VMatrix<double>& a) {
		int no_neurons = a.size()[0];
		for (int i = 0; i < no_neurons; i++) {

		}
	}
};

struct Neunet {
	std::vector<Layer> layers;

	Math::VMatrix<double> backpropagate(const Math::VMatrix<double>& x) {}
	
	Math::VMatrix<double> feedforward(const Math::VMatrix<double>& x) {
		for(int i = 1; i < layers.size(); i++) {
			layers[i].a = layers[i].w * layers[i-1].h + layers[i].b;
			layers[i].h = layers[i].apply_f(layers[i].a);  


		}



	}
	void add_layer(Layer::FnType, int wn, int wm, int bn) {}


};

#endif