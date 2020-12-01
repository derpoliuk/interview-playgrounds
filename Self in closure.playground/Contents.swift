DispatchQueue.global().async { [weak self] in
    guard let info = self?.loadInfo() else {
        return
    }
    DispatchQueue.main.async {
        self?.info = info
    }
}

DispatchQueue.global().async { [weak self] in
    guard let self = self else {
        return
    }
    let info = self.loadInfo()
    DispatchQueue.main.async {
        self.info = info
    }
}
