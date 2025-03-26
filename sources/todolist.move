module todolist_addr::todolist {

    use aptos_framework::event;
    use std::string::String;
    use aptos_std::table::Table;

    struct TodoList has key {
        tasks: Table<u64, Task>,
        set_task_event: event::EventHandle<Task>,
        task_counter: u64
    }

    struct Task has store, drop, copy {
        task_id: u64,
        address: address,
        content: String,
        completed: bool
    }
}