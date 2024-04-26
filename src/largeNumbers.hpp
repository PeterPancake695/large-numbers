#include <bitset>

template <std::size_t N> // N is nr of bytes
class largeNumber {
  public:
    largeNumber() {}
    ~largeNumber() {}
  private:
    std::bitset<N*8> bits;
};
