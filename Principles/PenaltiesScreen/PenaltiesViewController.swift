import UIKit

final class PenaltiesViewController: UIViewController {
    private let tableView = UITableView()
    private var penalties: [Penalty] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Penalties"
        configureTableView()
        loadSampleData()
    }

    private func configureTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.register(PenaltyCell.self, forCellReuseIdentifier: PenaltyCell.reuseIdentifier)
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func loadSampleData() {
        // Sample data for demonstration purposes
        penalties = [
            Penalty(id: UUID(), title: "Missed deadline", date: Date(), principleTitle: "Discipline"),
            Penalty(id: UUID(), title: "Late submission", date: Date().addingTimeInterval(-86400), principleTitle: "Punctuality")
        ]
    }
}

extension PenaltiesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        penalties.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PenaltyCell.reuseIdentifier, for: indexPath) as? PenaltyCell else {
            return UITableViewCell()
        }
        cell.configure(with: penalties[indexPath.row])
        return cell
    }
}
