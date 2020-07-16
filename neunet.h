#ifndef NEUNET_H
#define NEUNET_H

#include <functional>
#include "MathLib.h"

struct Layer {
	using FnType = std::function<VMatrix<double>(const VMatrix<double>&)>;
	FnType f;
	VMatrix<double> w;
	VMatrix<double> b;
	VMatrix<double> a;
	VMatrix<double> h;
};

struct Neunet {
	std::vector<Layer> layers;

	VMatrix<double> backpropagate(const VMatrix<double>& x) {}
	VMatrix<double> feedforward(const VMatrix<double>& x) {}
	void add_layer(FnType, int wn, int wm, int bn) {}
};

#endif