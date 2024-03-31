entity books
{
    key id : UUID;
    name : String;
    stock : Integer;
    price : String(100);
    books : Association to one books;
    author : Association to many Author on author.books = $self;
}

entity Author
{
    key ID : UUID;
    name : String(100);
    address : String(100);
    books : Association to one books;
}
