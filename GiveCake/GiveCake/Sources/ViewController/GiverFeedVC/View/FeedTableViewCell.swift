//
//  TodayTableViewCell.swift
//  GiveCake
//
//  Created by 김동락 on 2022/07/16.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    let bgBackView = UIView()
    let bgImageView = UIImageView()
    let emptyView = UIView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 테이블 셀 세팅
    // TODO: 하이파이처럼 상세보기 화면 구성요소 더 추가해야함
    private func setupUI() {
        
        bgBackView.addSubview(bgImageView)
        contentView.addSubview(bgBackView)
        contentView.addSubview(emptyView)
        
        bgBackView.frame = CGRect(x: 20, y: 0, width: GlobalConstants.feedCardSize.width, height: GlobalConstants.feedCardSize.height)
        bgBackView.layer.shadowColor = UIColor.black.cgColor
        bgBackView.layer.shadowOpacity = 0.4
        bgBackView.layer.shadowOffset = CGSize(width: 0, height: 1)
        
        bgImageView.frame = bgBackView.bounds
        bgImageView.contentMode = .scaleAspectFill
        bgImageView.layer.cornerRadius = GlobalConstants.feedCardCornerRadius
        bgImageView.layer.masksToBounds = true
        
        // 테이블 셀들간의 간격을 주기 위한 뷰
        emptyView.backgroundColor = UIColor.white.withAlphaComponent(0)
        emptyView.frame = CGRect(x: 0, y: bgImageView.frame.size.height, width: GlobalConstants.feedCardSize.width, height: GlobalConstants.feedCardRowH - GlobalConstants.feedCardSize.height)
    }
    
}
