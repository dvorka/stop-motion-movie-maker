/*
 * job.h
 *
 *  Created on: Feb 9, 2015
 *      Author: dvorka
 */

#ifndef JOB_H_
#define JOB_H_

class StopMotionJob {
	int movieWidth;
	int movieHeight;
	char *movieFormat;
public:
	void setImagePaths();
};

#endif /* JOB_H_ */
