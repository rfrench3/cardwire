use qtbridge::{QApp, qobject};

#[derive(Default)]
pub struct Backend {}

#[qobject(Singleton)]
impl Backend {
    #[qslot]
    fn say_hello(&self) {
        println!("Hello World!")
    }
}

// TODO: Theming
fn main() {
    QApp::new()
        .register::<Backend>()
        .load_qml_from_file("file:///workspaces/cardwire-gui-qml/src/ui/App.qml") // TODO: This is temporary
        .run();
}
