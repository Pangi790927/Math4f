#ifndef VMATRIX_H
#define VMATRIX_H

namespace Math {

	template <typename T>
	class VMatrix {
	public:
		std::vector<std::vector<T>> data;

		VMatrix(int rows = 0, int cols = 0, const T& t = T(0));
		
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
		friend VMatrix<U> operator - (const VMatrix<U>& mat, const VMatrix<U>& b);

		template <typename U>
		friend VMatrix<U> operator + (const VMatrix<U>& mat, const VMatrix<U>& b);

		template <typename U>
		friend VMatrix<U> operator * (const VMatrix<U>& mat, const VMatrix<U>& b);

		template <typename U>
		friend VMatrix<U> operator * (const U& a, const VMatrix<U>& b);

		template <typename U>
		friend VMatrix<U> operator | (const VMatrix<U>& a, const VMatrix<U>& b);

		template <typename U>
		friend VMatrix<U> operator & (const VMatrix<U>& a, const VMatrix<U>& b);

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
	VMatrix<T>::VMatrix(int rows, int cols, const T& t) {}

	template <typename T>
	template <typename U>
	VMatrix<T>::VMatrix(const VMatrix<U>& oth) {}

	template <typename T>
	template <typename U>
	VMatrix<T>::VMatrix(VMatrix<U>&& oth) {}

	template <typename T>
	template <typename U>
	VMatrix<T> &VMatrix<T>::operator = (const VMatrix<U>& oth) {}

	template <typename T>
	template <typename U>
	VMatrix<T> &VMatrix<T>::operator = (VMatrix<U>&& oth) {}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator +() const {}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator -() const {}

	template <typename T>
	VMatrix<T> VMatrix<T>::operator + (const VMatrix<T>& mat) const {}

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
	VMatrix<T> operator - (const VMatrix<T>& mat, const VMatrix<T>& b) {}

	template <typename T>
	VMatrix<T> operator + (const VMatrix<T>& mat, const VMatrix<T>& b) {}

	template <typename T>
	VMatrix<T> operator * (const VMatrix<T>& mat, const VMatrix<T>& b) {}

	template <typename T>
	VMatrix<T> operator * (const T& a, const VMatrix<T>& b) {}

	template <typename T>
	VMatrix<T> operator | (const VMatrix<T>& a, const VMatrix<T>& b) {}

	template <typename T>
	VMatrix<T> operator & (const VMatrix<T>& a, const VMatrix<T>& b) {}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator += (const VMatrix<T>& mat) {}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator -= (const VMatrix<T>& mat) {}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator *= (const VMatrix<T>& mat) {}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator *= (const T& t) {}

	template <typename T>
	VMatrix<T> &VMatrix<T>::operator /= (const T& t) {}

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