import UIKit

class ViewController: UIViewController {

    var headerView: UIView!
    var scrollView: UIScrollView!
    var contentView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Настройка ScrollView
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1100)
        view.addSubview(scrollView)

        // Настройка заголовка
        headerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 100))
        headerView.backgroundColor = .lightGray
        scrollView.addSubview(headerView)

        // Настройка содержимого
        contentView = UIView(frame: CGRect(x: 0, y: headerView.frame.maxY, width: view.frame.width, height: 1000))
        contentView.backgroundColor = .white
        scrollView.addSubview(contentView)

        // Добавление метки в contentView
        let label = UILabel(frame: CGRect(x: 20, y: 20, width: contentView.frame.width - 40, height: 100))
        label.text = "Это содержимое под заголовком. Прокручивайте вниз, чтобы увидеть больше."
        label.numberOfLines = 0
        contentView.addSubview(label)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Обновление размеров для корректной работы
        headerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 100)
        contentView.frame = CGRect(x: 0, y: headerView.frame.maxY, width: view.frame.width, height: 1000)
    }
}
