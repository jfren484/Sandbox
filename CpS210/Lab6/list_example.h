

class List {
public:
	class iterator {
		Node *pos;
		iterator(Node *_pos) : pos(_pos) { ; }
	public:
		friend class List;
		iterator() : pos(nullptr) { ; }
		iterator &operator ++() {
			if (nullptr != pos) { pos = pos->next; }
			return *this;
		}		
		iterator &operator --() {
			if (nullptr != pos) { pos = pos->prev; }
			return *this;
		}		
		T &operator *() { return pos->value; }
		bool operator ==(const iterator &rhs) const {
			return (pos != nullptr && rhs.pos != nullptr && pos == rhs.pos);
		}
		bool operator !=(const iterator &rhs) const { return !((*this) == rhs); }
	};
private:
	Node node;
public:
	iterator begin() { return iterator(node.next); }
};
