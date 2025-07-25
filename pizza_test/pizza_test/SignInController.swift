import SnapKit
import UIKit

class SignInController: UIViewController {

    private let sigInLabel: UILabel = {
        let label = UILabel()
        label.text = "Авторизация"
        label.numberOfLines = 1
        label.textColor = .black
        label.textAlignment = .center
        label.isUserInteractionEnabled = true
        label.clipsToBounds = true
        label.font = UIFont(
            name: "SFUIDisplay-Bold", size: 16)
        return label
    }()
    
    private let logoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "logo_red")
        return view
    }()
    
    private let signInConatiner: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private let loginView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private let passwView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        configueUI()

        for fontFamily in UIFont.familyNames {
            print(UIFont.fontNames(forFamilyName: fontFamily))
        }

    }

    private func configueUI() {
        view.backgroundColor = UIColor(hex: "#F3F5F9")

//        view.addSubview(sigInLabel)
//        sigInLabel.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(Constansts.top)
//            make.left.equalToSuperview().offset(Constansts.left)
//            make.right.equalToSuperview().inset(Constansts.left)
//        }
        
        view.addSubview(logoImageView)
        logoImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(217)
            make.left.equalToSuperview().offset(Constansts.left)
            make.right.equalToSuperview().inset(Constansts.left)
        }
        
        view.addSubview(signInConatiner)
        signInConatiner.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(32)
            make.left.equalToSuperview().offset(Constansts.left)
            make.right.equalToSuperview().inset(Constansts.left)
            make.bottom.equalToSuperview().inset(Constansts.left)
//            make.height.equalTo(108)
        }
        
        signInConatiner.addSubview(loginView)
        loginView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        signInConatiner.addSubview(passwView)
        passwView.snp.makeConstraints { make in
            make.top.equalTo(loginView.snp.bottom).offset(8)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(loginView.snp.height)
            make.bottom.equalToSuperview()
        }

    }
}
