use num_cpus::get;
use num_cpus::get_physical;


fn main() {
    let cpus = get();
    let physical_cpus = get_physical();
    println!("You have {} physical CPUs", physical_cpus);
    println!("You have {} logical CPUs", cpus);
}
