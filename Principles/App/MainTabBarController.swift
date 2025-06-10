import UIKit

final class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [
            makeNav(for: PrinciplesViewController(), title: "Principles", image: "list.bullet"),
            makeNav(for: CalendarViewController(), title: "Calendar", image: "calendar"),
            makeNav(for: PenaltiesViewController(), title: "Penalties", image: "exclamationmark.circle")
        ]
    }

    private func makeNav(for root: UIViewController, title: String, image: String) -> UINavigationController {
        root.title = title
        let nav = UINavigationController(rootViewController: root)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = UIImage(systemName: image)
        return nav
    }
}
