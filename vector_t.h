#ifndef VECTOR_T_H
#define VECTOR_T_H 

#include<iostream>

class vector_t{
    double comp[2]{};
    public:
        vector_t() = default;

        vector_t(double x, double y){
            comp[0] = x;
            comp[1] = y;
        }

        double operator [](int i) const {return comp[i];}
        double& operator [](int i) {return comp[i];}

        vector_t operator+(const vector_t& other) const{
            return vector_t(comp[0] + other.comp[0], comp[1] + other.comp[1]);
        }

        vector_t operator-(const vector_t& other) const{
            return vector_t(comp[0] - other.comp[0], comp[1] - other.comp[1]);
        }

        double dot(const vector_t& other) const{
            return comp[0] * other.comp[0] + comp[1] * other.comp[1];
        }

        friend vector_t operator* (const double& number, const vector_t& other);
        friend vector_t operator* (const vector_t& other, const double& number);
        friend vector_t operator/ (const vector_t& other, const double& number);
	    friend std::ostream& operator<< (std::ostream& stream, const vector_t& other);
};

inline vector_t operator* (const double& number, const vector_t& other){
    vector_t v(number * other.comp[0], number * other.comp[1]);
    return v;
}

inline vector_t operator*(const vector_t& other, const double& number){
    vector_t v(number * other.comp[0], number * other.comp[1]);
    return v;
}

inline vector_t operator/ (const vector_t& other, const double& number){
    vector_t v(number / other.comp[0], number / other.comp[1]);
    return v;
}

inline std::ostream& operator<<(std::ostream& stream, const vector_t& other){
	stream << other.comp[0] << " " << other.comp[1];
	return stream;
}

#endif