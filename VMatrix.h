#ifndef VMATRIX_H
#define VMATRIX_H

#include "except.h"

/* to do: treat the case where both matrices are 0x0 */
#define ASSERT_MATCH(m1, m2, op1, op2)									\
if ((m1.size() == 0 || m2.size() == 0) || !(op1) || !(op2))				\
{																		\
	EXCEPTION("matrix size mismatch: m1[%lu, %lu] m2[%lu, %lu]",		\
			m1.size(), m1.size() ? m1[0].size() : 0,					\
			m2.size(), m2.size() ? m2[0].size() : 0);					\
}

#define ASSERT_ADD_MATCH(m1, m2)										\
		ASSERT_MATCH(m1, m2,											\
				m1.size() == m2.size(),									\
				m1[0].size() == m2[0].size())

#define ASSERT_MUL_MATCH(m1, m2) \
		ASSERT_MATCH(m1, m2, true, m1[0].size() == m2.size())


namespace Math {

	template <typename T>
	class VMatrix {
	public:
		std::vector<std::vector<T>> data;

		VMatrix(int rows = 1, int cols = 1, const T& t = T(0));

		template <typename U>
		VMatrix(const VMatrix<U>& oth);

		template <typename U>
		VMatrix(VMatrix<U>&& oth);

		template <typename U>
		VMatrix &operator = (const VMatrix<U>& oth);

		template <typename U>
		VMatrix &operator = (VMatrix<U>&& oth);

		VMatrix operator +() const;
		VMatrix operator -() const;

		VMatrix operator + (const VMatrix& mat) const;
		VMatrix operator - (const VMatrix& mat) const;
		VMatrix operator * (const VMatrix& mat) const;
		VMatrix operator * (const T& val) const;
		VMatrix operator / (const T& val) const;
		VMatrix operator | (const VMatrix& mat) const;
		VMatrix operator & (const VMatrix& mat) const;		

		template <typename U>
		friend VMatrix<U> operator * (const U& a, const VMatrix<U>& b);

		VMatrix &operator += (const VMatrix& mat);
		VMatrix &operator -= (const VMatrix& mat);
		VMatrix &operator *= (const VMatrix& mat);
		VMatrix &operator *= (const T& t);
		VMatrix &operator /= (const T& t);
		VMatrix &operator |= (const VMatrix& mat);
		VMatrix &operator &= (const VMatrix& mat);

		std::vector<T> &operator [] (int i);
		const std::vector<T> &operator [] (int i) const;

		template <typename U>
		operator VMatrix<U>();

		template <typename U>
		friend std::ostream &operator << (std::ostream& s, const VMatrix<U>& m);

		template <typename U>
		friend std::istream &operator >> (std::istream& s, VMatrix<U>& m);
		
		VMatrix &do_inv();
		VMatrix &do_tr();
		VMatrix &swap_rows(int a, int b);
		VMatrix &swap_cols(int a, int b);
		VMatrix &insert_rows(int pos, int count, const VMatrix& mat);
		VMatrix &insert_cols(int pos, int count, const VMatrix& mat);

		T det() const;
		VMatrix inv() const;
		VMatrix tr() const;
		VMatrix partition(int x, int y, int cx, int cy) const;

		std::tuple<int, int> size() const;
		/* for vectors */

		T dot() const;
		T norm1() const;
		T norm2() const;
		T norm_inf() const;
	};

	template <typename T>
	VMatrix<T>::VMatrix(int rows, int cols, const T& t)
	: data(rows, std::vector<T>(cols, t)) {}

	template <typename T>
	template <typename U>
	VMatrix<T>::VMatrix(const VMatrix<U>& oth) {
		(*this) = oth;
	}

	template <typename T>
	template <typename U>
	VMatrix<T>::VMatrix(VMatrix<U>&& oth) {
		(*this) = oth;
	}

	template <typename T>
	template <typename U>
	VMatrix<T> &VMatrix<T>::operator = (const VMatrix<U>& oth) {
		if (data.size() != oth.data.size())
			data.resize(oth.data.size());
		if (oth.data.size() && oth.data[0].size() != data[0].size())
			for (int i = 0; i < oth.data.size(); i++)
				data[i].resize(oth.data[0].size());

		for (int i = 0; i < data.size(); i++)
			for (int j = 0; j < data[0].size(); j++)
				data[i][j] = oth.data[i][j];
		return (*this);
	}

	template <typename T>
	template <typename U>
	VMatrix<T> &VMatrix<T>::operator = (VMatrix<U>&& oth) {
		return (*this) = oth;
	}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator +() const {}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator -() const {}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator + (const VMatrix<T>& mat) const {
		auto ret = (*this);
		return ret += mat;
	}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator - (const VMatrix<T>& mat) const {}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator * (const VMatrix<T>& mat) const {}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator * (const T& val) const {}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator / (const T& val) const {}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator | (const VMatrix<T>& mat) const {}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator & (const VMatrix<T>& mat) const {}

	template <typename T>
	VMatrix<T> operator * (const T& a, const VMatrix<T>& b) {}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator += (const VMatrix<T>& mat) {
		ASSERT_ADD_MATCH(data, mat.data);
		for (int i = 0; i < data.size(); i++)
			for (int j = 0; j < data[0].size(); j++)
				data[i][j] += mat.data[i][j];
		return (*this);
	}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator -= (const VMatrix<T>& mat) {
		ASSERT_ADD_MATCH(data, mat.data);
		for (int i = 0; i < data.size(); i++)
			for (int j = 0; j < data[0].size(); j++)
				data[i][j] -= mat.data[i][j];
		return (*this);
	}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator *= (const VMatrix<T>& mat) {
		ASSERT_MUL_MATCH(data, mat.data);
		VMatrix<T> mat_aux(data.size(), mat.data[0].size());
		for (int i = 0; i < mat_aux.data.size(); i++) {
			for (int j = 0; j < mat_aux.data[0].size(); j++) {
				T sum = 0;
				for(int k = 0; k < data[i].size(); k++) {
					sum += data[i][k] * mat.data[k][i];
				}
				mat_aux[i][j] = sum;
			}
		}
		*this = mat_aux;
		return (*this);
	}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator *= (const T& t) {
		for (int i = 0; i < data.size(); i++)
			for (int j = 0; j < data[0].size(); j++)
				data[i][j] *= t;
		return (*this);
	}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator /= (const T& t) {
		for (int i = 0; i < data.size(); i++)
			for (int j = 0; j < data[0].size(); j++)
				data[i][j] /= t;
		return (*this);
	}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator |= (const VMatrix<T>& mat) {}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator &= (const VMatrix<T>& mat) {}

	template <typename T>
	std::vector<T> &VMatrix<T>::operator [] (int i) {}

	template <typename T>
	const std::vector<T> &VMatrix<T>::operator [] (int i) const {}

	template <typename T>
	template <typename U>
	VMatrix<T>::operator VMatrix<U>() {}

	template <typename T>
	std::ostream &operator << (std::ostream& s, const VMatrix<T>& m) {
		return s;
	}

	template <typename T>
	std::istream &operator >> (std::istream& s, VMatrix<T>& m) {
		return s;
	}

	template <typename T>
	VMatrix<T> &VMatrix<T>::do_inv() {}
	
	template <typename T>
	VMatrix<T> &VMatrix<T>::do_tr() {}
	
	template <typename T>
	VMatrix<T> &VMatrix<T>::swap_rows(int a, int b) {}
	
	template <typename T>
	VMatrix<T> &VMatrix<T>::swap_cols(int a, int b) {}

	template <typename T>
	VMatrix<T> &VMatrix<T>::insert_rows(int pos, int count, const VMatrix<T>& mat) {}

	template <typename T>
	VMatrix<T> &VMatrix<T>::insert_cols(int pos, int count, const VMatrix<T>& mat) {}

	template <typename T>
	T VMatrix<T>::det() const {}
	
	template <typename T>
	VMatrix<T> VMatrix<T>::inv() const {}
	
	template <typename T>
	VMatrix<T> VMatrix<T>::tr() const {}
	
	template <typename T>
	VMatrix<T> VMatrix<T>::partition(int x, int y, int cx, int cy) const {}

	template <typename T>
	std::tuple<int, int> VMatrix<T>::size() const {
		return std::tuple{data.size(), data.size() ? data.size() : 0};
	}

	/* for vectors */
	template <typename T>
	T VMatrix<T>::dot() const {}

	template <typename T>
	T VMatrix<T>::norm1() const {}

	template <typename T>
	T VMatrix<T>::norm2() const {}

	template <typename T>
	T VMatrix<T>::norm_inf() const {}
}

#endif