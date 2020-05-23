#include <gtest/gtest.h>

namespace deep {
    

TEST(Inner, Sample)
{
	EXPECT_EQ(1, 1);
	EXPECT_EQ(1, 2);
	EXPECT_EQ(1, 3);
	EXPECT_EQ(1, 4);
	EXPECT_EQ(1, 5);
	EXPECT_EQ(1, 6);
	EXPECT_EQ(1, 6);
	EXPECT_EQ(1, 7);
	EXPECT_EQ(1, 8);
}

TEST(Inner, RealTest)
{
	EXPECT_EQ(1, 1);
}

}