#ifndef MATRIX_HELPER_H
#define MATRIX_HELPER_H

#include "Matrix.h"

namespace MathLib {
	template <int size, typename Type>
	using Vector = Matrix <size, 1, Type>;

	template <int x, int y>
	using Matd = Matrix <x, y, double>;

	template <int x, int y>
	using Matf = Matrix <x, y, float>;

	template <int x, int y>
	using Mati = Matrix <x, y, int>;

	template <int x>
	using Vecd = Vector <x, double>;

	template <int x>
	using Vecf = Vector <x, float>;

	template <int x>
	using Veci = Vector <x, int>;

	using Vec3d = Vecd<3>;
	using Vec3f = Vecf<3>;
	using Vec3i = Veci<3>;

	using Point3d = Vec3d;
	using Point3f = Vec3f;
	using Point3i = Vec3i;

	using Vec4d = Vecd<4>;
	using Vec4f = Vecf<4>;
	using Vec4i = Veci<4>;

	using Point4d = Vec4d;
	using Point4f = Vec4f;
	using Point4i = Vec4i;

	using Vec2d = Vecd<2>;
	using Vec2f = Vecf<2>;
	using Vec2i = Veci<2>;

	using Point2d = Vec2d;
	using Point2f = Vec2f;
	using Point2i = Vec2i;

	using Matrix2d = Matd<2, 2>;
	using Matrix2f = Matf<2, 2>;
	using Matrix2i = Mati<2, 2>;

	using Matrix3d = Matd<3, 3>;
	using Matrix3f = Matf<3, 3>;
	using Matrix3i = Mati<3, 3>;

	using Matrix4d = Matd<4, 4>;
	using Matrix4f = Matf<4, 4>;
	using Matrix4i = Mati<4, 4>;

	template <int rows, typename Type>
	Matrix <rows, rows, Type> Identity () {
		Matrix <rows, rows, Type> mat;

		for (int i = 0; i < rows; i++)
			mat[i][i] = Type(1);

		return mat;
	}
}

#endif