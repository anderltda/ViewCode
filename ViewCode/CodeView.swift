//
//  CodeView.swift
//  ViewCode
//
//  Created by Usuário Convidado on 23/03/19.
//  Copyright © 2019 FIAP. All rights reserved.
//

import Foundation

protocol CodeView {
    func setupComponents()
    func setupConstraints()
    func setupExtraConfiguration()
    func setup()
}

extension CodeView {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }
}
