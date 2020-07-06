#ifndef VMATRIX_H
#define VMATRIX_H

#include "except.h"

/* to do: treat the case where both matrices are 0x0 */
#define ASSERT_NO_ROWS(m)												\
	if (!m1.size())														\
		EXCEPTION("Matrix has no rows");

#define ASSERT_MATCH(m1, m2, op1, op2)									\
	if ((m1.size() == 0 || m2.size() == 0) || !(op1) || !(op2))			\
	{																	\
		EXCEPTION("matrix size mismatch: m1[%lu, %lu] m2[%lu, %lu]",	\
				m1.size(), m1.size() ? m1[0].size() : 0,				\
				m2.size(), m2.size() ? m2[0].size() : 0);				\
	}

#define ASSERT_ADD_MATCH(m1, m2)										\
		ASSERT_MATCH(m1, m2,											\
				m1.size() == m2.size(),									\
				m1[0].size() == m2[0].size())

#define ASSERT_MUL_MATCH(m1, m2) 										\
		ASSERT_MATCH(m1, m2, true, m1[0].size() == m2.size())

#define ASSERT_IN_SIZE(m, i)  											\
	if (i > m.size() - 1)												\
		EXCEPTION("index too large: ! m[%u]", i);

#define ASSERT_SQUARE(m)	  											\
	if (m.size() && m.size() != m[0].size())							\
		EXCEPTION("Doesn't apply on non-square matrix m1[%lu, %lu]",	\
				m1.size(), m1.size() ? m1[0].size() : 0);

#define ASSERT_COLL_MATCH(m1, m2)										\
		ASSERT_MATCH(m1, m2, true, m1[0].size() == m2[0].size())

#define ASSERT_ROWS_MATCH(m1, m2)										\
		ASSERT_MATCH(m1, m2, true, m1.size() == m2.size())

#define ASSERT_INSERT_ROW(m, pos)										\
	if (pos < 0 || pos > m.size())										\
		EXCEPTION("Can't insert outside of matrix bounds")

#define ASSERT_INSERT_COL(m, pos)										\
	if (!m.size() || pos < 0 || pos > m[0].size())						\
		EXCEPTION("Can't insert outside of matrix bounds")

#define ASSERT_VECTOR(m)												\
	if (!m.size() || m[0].size() != 1)									\
		EXCEPTION("Not a vector")

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
	VMatrix<T> VMatrix<T>::operator +() const {
		return (*this);
	}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator -() const {
		// not really ok, but good enough
		return (*this) * -1;
	}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator + (const VMatrix<T>& mat) const {
		auto ret = (*this);
		return ret += mat;
	}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator - (const VMatrix<T>& mat) const {
		auto ret = (*this);
		return ret -= mat;
	}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator * (const VMatrix<T>& mat) const {
		auto ret = *this;
		return ret *= mat;
	}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator * (const T& val) const {
		auto ret = (*this);
		return ret *= val;
	}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator / (const T& val) const {
		auto ret = (*this);
		return ret /= val;
	}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator | (const VMatrix<T>& mat) const {
		auto ret = *this;
		return ret |= mat;
	}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator & (const VMatrix<T>& mat) const {
		auto ret = *this;
		return ret &= mat;
	}

	template <typename T>
	VMatrix<T> operator * (const T& a, const VMatrix<T>& b) {
		/* our element will comute */
		auto ret = b;
		return ret *= a;
	}

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
		VMatrix<T> ret(data.size(), mat.data[0].size());
		for (int i = 0; i < ret.data.size(); i++) {
			for (int j = 0; j < ret.data[0].size(); j++) {
				T sum = 0;
				for(int k = 0; k < data[i].size(); k++) {
					sum += data[i][k] * ret[k][j];
				}
				ret[i][j] = sum;
			}
		}
		*this = ret;
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
	VMatrix<T> &VMatrix<T>::operator |= (const VMatrix<T>& mat) {
		ASSERT_NO_ROWS(data);
		insert_cols(data[0].size(), mat.data[0].size(), mat);
	}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator &= (const VMatrix<T>& mat) {
		insert_rows(data.size(), mat.data.size(), mat);
	}

	template <typename T>
	std::vector<T> &VMatrix<T>::operator [] (int i) {
		ASSERT_IN_SIZE(data, i);
		return data[i];
	}

	template <typename T>
	const std::vector<T> &VMatrix<T>::operator [] (int i) const {
		ASSERT_IN_SIZE(data, i);
		return data[i];
	}

	template <typename T>
	template <typename U>
	VMatrix<T>::operator VMatrix<U>() {
		VMatrix<U> ret = *this;
		return ret;
	}

	template <typename T>
	std::ostream &operator << (std::ostream& s, const VMatrix<T>& m) {
		for (int i = 0; i < m.data.size(); i++, s << std::endl)
			for (int j = 0; j < m.data[0].size(); j++)
				s << m.data[i][j] << " ";
		return s;
	}

	template <typename T>
	std::istream &operator >> (std::istream& s, VMatrix<T>& m) {
		for (int i = 0; i < m.data.size(); i++)
			for (int j = 0; j < m.data[0].size(); j++)
				s >> m.data[i][j];
		return s;
	}

	template <typename T>
	VMatrix<T> &VMatrix<T>::do_inv() {
		ASSERT_SQUARE(data);
		// TO DO
	}
	
	template <typename T>
	VMatrix<T> &VMatrix<T>::do_tr() {
		*this = (*this).tr();
		return (*this);
	}
	
	template <typename T>
	VMatrix<T> &VMatrix<T>::swap_rows(int a, int b) {
		std::swap(data[a], data[b]);
		return (*this);
	}
	
	template <typename T>
	VMatrix<T> &VMatrix<T>::swap_cols(int a, int b) {
		for (int i = 0; i < data.size(); i++)
			std::swap(data[i][a], data[i][b]);
		return (*this);
	}

	template <typename T>
	VMatrix<T> &VMatrix<T>::insert_rows(int pos, int count, const VMatrix<T>& mat) {
		ASSERT_COLL_MATCH(data, mat.data);
		ASSERT_INSERT_ROW(data, pos);
		ASSERT_INSERT_ROW(mat.data, count - 1);
		data.insert(data.begin() + pos, mat.data.begin(),
				mat.data.begin() + count);
		return (*this);
	}

	template <typename T>
	VMatrix<T> &VMatrix<T>::insert_cols(int pos, int count, const VMatrix<T>& mat) {
		ASSERT_ROWS_MATCH(data, mat.data);
		ASSERT_INSERT_COL(data, pos);
		ASSERT_INSERT_COL(mat.data, count - 1);
		for (int i = 0; i < data.size(); i++)
			data[i].insert(data[i].begin() + pos, mat.data[i].begin(),
					mat.data[i].begin() + count);
		return (*this);
	}

	template <typename T>
	T VMatrix<T>::det() const {
		// TO DO
	}
	
	template <typename T>
	VMatrix<T> VMatrix<T>::inv() const {
		auto ret = *this;
		return ret.do_inv();
	}
	
	template <typename T>
	VMatrix<T> VMatrix<T>::tr() const {
		VMatrix<T> ret(data[0].size(), data.size());
		for (int i = 0; i < ret.data.size(); i++) {
			for (int j = 0; j < ret.data[0].size(); j++) {
				ret[i][j] = data[j][i];
			}
		}
		return ret;
	}
	
	template <typename T>
	VMatrix<T> VMatrix<T>::partition(int x, int y, int cx, int cy) const {
		// TO DO
	}

	template <typename T>
	std::tuple<int, int> VMatrix<T>::size() const {
		return std::tuple{data.size(), data.size() ? data.size() : 0};
	}

	/* for vectors */
	template <typename T>
	T VMatrix<T>::dot() const {
		ASSERT_VECTOR(data);
		// TO DO
	}

	template <typename T>
	T VMatrix<T>::norm1() const {
		ASSERT_VECTOR(data);
		// TO DO
	}

	template <typename T>
	T VMatrix<T>::norm2() const {
		ASSERT_VECTOR(data);
		// TO DO
	}

	template <typename T>
	T VMatrix<T>::norm_inf() const {
		ASSERT_VECTOR(data);
		// TO DO
	}
}

#endif