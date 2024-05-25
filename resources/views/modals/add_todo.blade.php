<div class="modal fade" id="addTodoModal{{ $goal->id }}" tabindex="-1" aria-labelledby="addTodoModalLabel{{ $goal->id }}">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addTodoModalLabel{{ $goal->id }}">ToDoの追加</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="閉じる"></button>
            </div>
            <form action="{{ route('goals.todos.store', $goal) }}" method="post">
                @csrf
                <div class="modal-body">
                    
                    <label for="content" class="mt-2"> Todo</label>

                    <input type="text" id="content" class="form-control" name="content"> 
                    <label for="des" class="mt-2"> Details</label>
                    <input type="text" id="des" class="form-control" placeholder="Details about your list" name="description"> 
                    <div class="d-flex flex-wrap">
                        @foreach ($tags as $tag)                            
                            <label>  
                                <div class="d-flex align-items-center mt-3 me-3">
                                    <input type="checkbox" name="tag_ids[]" value="{{ $tag->id }}">                            
                                    <span class="badge bg-secondary ms-1">{{ $tag->name }}</span>
                                </div>                                                   
                            </label>                                                       
                        @endforeach    
                    </div>                                                        
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">登録</button>
                </div>
            </form>
        </div>
    </div>
</div>