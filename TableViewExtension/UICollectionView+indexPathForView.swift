//
//  UICollectionView+indexPathForView.swift
//  TableViewExtension
//
//  Created by Duncan Champney on 12/24/19.
//  Copyright © 2019 Duncan Champney. All rights reserved.
//

import UIKit

public extension UICollectionView {

    /**
     This method returns the indexPath of the cell that contains the specified view
     - Parameter view: The view to find.
     - Returns: The indexPath of the cell containing the view, or nil if it can't be found
     */

    func indexPathForView(_ view: UIView) -> IndexPath? {
        let center = view.center

        //The center of the view is a better point to use, but we can only use it if the view has a superview
        guard let superview = view.superview else {
            //The view we were passed does not have a valid superview.
            //Use the view's bounds.origin and convert from the view's coordinate system
            let origin = self.convert(view.bounds.origin, from: view)
            let indexPath = self.indexPathForItem(at: origin)
            return indexPath
        }
        let viewCenter = self.convert(center, from: superview)
        let indexPath = self.indexPathForItem(at: viewCenter)
        return indexPath
    }
}
