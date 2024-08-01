#include "reverse_string.h"
#include<string>
#include<algorithm>

namespace reverse_string {

using namespace std; 

	string reverse_string(string str) {

		reverse(str.begin(), str.end()); 
		return str; 

	}
}  // namespace reverse_string
