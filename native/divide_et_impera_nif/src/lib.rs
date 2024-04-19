use rustler::{Error};

// Binary search function
fn binary_search(list: &[i32], target: i32) -> Option<usize> {
    let mut low = 0;
    let mut high = list.len() - 1;

    while low <= high {
        let mid = low + (high - low) / 2;

        match list[mid].cmp(&target) {
            std::cmp::Ordering::Equal => return Some(mid),
            std::cmp::Ordering::Less => low = mid + 1,
            std::cmp::Ordering::Greater => high = mid - 1,
        }
    }

    None
}

// Rustler NIF function
#[rustler::nif]
fn search(list: Vec<i32>, target: i32) -> Result<Option<usize>, Error> {
    Ok(binary_search(&list, target))
}

rustler::init!("Elixir.DivideEtImperaNIF", [search]);
