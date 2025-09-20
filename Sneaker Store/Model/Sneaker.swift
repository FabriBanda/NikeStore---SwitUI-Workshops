//
//  Sneaker.swift
//  Sneaker Store
//
//  Created by Fabricio Banda on 16/09/25.
//

import Foundation
import SwiftUI

struct Sneaker : Identifiable {
    var id = UUID()
    var image:String
    var model:String
    var price:Int
    var isFavorite:Bool = false
    var rating:Int
    var description:String
    
}


let sneakers: [Sneaker] = [
    Sneaker(
        image: "Nike Dunk Low Retro",
        model: "Nike Dunk Low",
        price: 130,
        rating: 4,
        description: "The Nike Dunk Low Retro brings back one of Nike’s most iconic basketball silhouettes with a modern twist. Featuring a low-cut profile, premium leather upper, and timeless colorways, this sneaker blends vintage style with everyday wearability. Perfect for streetwear fans and sneakerheads alike."
    ),
    Sneaker(
        image: "Nike Downshifter 13",
        model: "Nike Downshifter",
        price: 160,
        rating: 4,
        description: "Designed for runners and active lifestyles, the Nike Downshifter 13 offers lightweight breathability and long-lasting comfort. With its mesh upper, responsive cushioning, and supportive fit, it’s versatile enough for workouts, casual wear, or simply staying on the move throughout the day."
    ),
    Sneaker(
        image: "Nike Vapor 12",
        model: "Nike Vapor 12",
        price: 120,
        rating: 3,
        description: "Built for speed and performance, the Nike Vapor 12 delivers a locked-in fit with an aerodynamic design. Its traction-focused sole and snug upper make it ideal for sports and high-intensity activity, while still keeping a sleek, modern look that transitions easily off the field."
    ),
    Sneaker(
        image: "Nike Free Metcon 6",
        model: "Nike Free Metcon 6",
        price: 110,
        rating: 3,
        description: "The Nike Free Metcon 6 combines flexibility, stability, and durability, making it perfect for strength training and high-intensity workouts. With its wide heel for stability and flexible forefoot for natural movement, this sneaker adapts to both gym sessions and everyday wear."
    ),
    Sneaker(
        image: "AF1 07 LV8",
        model: "Air Force 1 07 LV8",
        price: 100,
        rating: 4,
        description: "A fresh take on the legendary Air Force 1, the ’07 LV8 edition elevates the classic with premium materials and refined details. Retaining its signature silhouette and cushioning, this sneaker merges heritage and modern style, continuing the legacy of one of Nike’s most recognizable shoes."
    )
]
