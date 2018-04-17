#include <caros/leap_motion_node.h>
#include <atomic>
#include <ros/ros.h>

#include <termios.h>
#include <sys/time.h>
#include <sys/types.h>

char wait_key(double timeout)
{
  char res = 0;
  const int STDIN = 0;

  struct termios old_term, new_term;
  tcgetattr(STDIN, &old_term);
  new_term = old_term;
  new_term.c_lflag &= ~ICANON;  // read every char
  tcsetattr(STDIN, TCSANOW, &new_term);

  struct timeval tv;
  fd_set fds;
  tv.tv_sec = static_cast<size_t>(timeout);
  tv.tv_usec = static_cast<size_t>((timeout - tv.tv_sec) * 1000);

  FD_ZERO(&fds);
  FD_SET(STDIN, &fds);
  if (select(STDIN + 1, &fds, 0, 0, &tv) == -1)
    return res;  // throw std::runtime_error("select failed");
  if (FD_ISSET(STDIN, &fds))
  {
    res = std::cin.get();
  }
  tcsetattr(STDIN, TCSANOW, &old_term);
  return res;
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "caros_leapmotion");
  ros::NodeHandle nh("~");

  caros::LeapMotionNode ln(nh);
  ln.start();

  bool running(true);
  ROS_INFO("Press q to quit...");
  char c;
  while (running && ros::ok())
  {
    c = wait_key(1.2);
    if (c == 'q')
    {
      ln.stop();
      running = false;
    }
  }
  return 0;
}
