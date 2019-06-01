const getPostsQuery = """
query GetPosts{
  getPosts{
    id
    title
    description
    type
    user{
      id
      name
      email
    }
  }
}
""";

const createPostMutation = """
query CreatePostMutation(\$title:String,\$description:String,\$type:String){
   createPostMutation(title:\$title,description:\$description,type:\$type)
}
""";
