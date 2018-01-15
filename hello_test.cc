#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include "hello.h"

TEST(Hello, Hello) { EXPECT_EQ("hello", hello()); }
