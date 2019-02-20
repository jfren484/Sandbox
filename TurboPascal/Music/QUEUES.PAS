{--------------------------------------------------------------------------}
{  Library:  Queue Object                                                  }
{  Version date:  4/01/94                                                  }
{  Authors:  CPS335 Spring 94                                              }
{--------------------------------------------------------------------------}
unit queues;
interface

const
	MAXQUEUE       = 100;
	{ queue return messages }
	Q_OKAY         = -1;
	Q_FULL         = -2;
	Q_EMPTY        = -3;

type
	PQueueNode = ^QueueNode;
	QueueNode = record
		len  : integer;
		buff : pointer;
	end;

	PQueueNodeArray = ^QueueNodeArray;
	QueueNodeArray = array[0..MAXQUEUE] of QueueNode;

	Queue = object
		constructor init(size : integer);
		destructor  done;
		function    enqueue(buff : pointer; len : integer) : integer;
		function    dequeue(buff : pointer; maxlen : integer) : integer;
		function    qsize : integer;

		private
			q      : ^QueueNodeArray;
			q_size : integer;
			num    : integer;
			head   : integer;
			tail   : integer;
	end; { Queue }

implementation
{--------------------------------------------------------------------------}
{                                 Queue                                    }
{--------------------------------------------------------------------------}

{--------------------------------------------------------------------------}
{ Function: queue constructor                                              }
{ Purpose:  initializes queue                                              }
{--------------------------------------------------------------------------}
constructor Queue.Init(size : integer);
var
	i : integer;
begin
	GetMem(q, (SizeOf(QueueNode)*size));    { allocate memory for the queue }

	q_size:=size;
	num  := 0;
	head := 0;                            { initialize pointers }
	tail := 0;

	for i:=0 to q_size do
		q^[i].buff := nil;
end; { Queue.Init }

{--------------------------------------------------------------------------}
{ Function: queue destructor                                               }
{ Purpose:  free up the getmem'ed queue                                    }
{--------------------------------------------------------------------------}
destructor Queue.Done;
var
	i : integer;
begin
	{ release all buffers }
	for i:=0 to q_size do
		if (q^[i].buff<>nil) then  dispose(q^[i].buff);

	{ release the queue structure }
	FreeMem (q, (SizeOf(QueueNode)*q_size));
end; { Queue.Done }

{--------------------------------------------------------------------------}
{ Function: queue enqueue function                                         }
{ Purpose:  enqueues an item into the queue                                }
{--------------------------------------------------------------------------}
function queue.enqueue(buff : pointer; len : integer) : integer;
begin
	if num=q_size then
		enqueue:=Q_FULL                          { check for full queue }
	else begin
		q^[tail].len := len;                     { enqueue the buffer }
		GetMem(q^[tail].buff,len);
		move(buff^,q^[tail].buff^,len);

		tail:=(tail+1) mod q_size;
		num:=num+1;
		enqueue:=Q_OKAY;                         { everything is OK }
	end; { if }
end; { Queue.enQueue }

{--------------------------------------------------------------------------}
{ Function: queue dequeue function                                         }
{ Purpose:  dequeues the next item from off the queue                      }
{           returns the length of the enqueued item                        }
{--------------------------------------------------------------------------}
function Queue.dequeue(buff : pointer; maxlen : integer) : integer;
var
	real_len : integer;
begin
	if num=0 then
		dequeue := Q_EMPTY                       { check for empty queue }
	else begin
		real_len := q^[head].len;
		if maxlen < real_len then
			real_len:=maxlen;                     { make sure maxlen is bigger }

		move(q^[head].buff^,buff^,real_len);     { get next item from queue }
		FreeMem(q^[head].buff, q^[head].len);
		q^[head].buff := nil;

		head := (head+1) mod q_size;
		num := num - 1;
		dequeue:=real_len;                       { return length }
	end; { if }
end; { Queue.dequeue }

{--------------------------------------------------------------------------}
{ Function: queue size function                                            }
{ Purpose:  returns the number of items queued                             }
{--------------------------------------------------------------------------}
function Queue.Qsize : integer;
begin
	qsize := num;
end;

end. { of UNIT Queues }