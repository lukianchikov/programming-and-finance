 piece = chess[, "Piece"]

piece = factor(piece, levels = c("king", "queen", "rook", "bishop", "knight", "pawn"),
                labels = c("King", "Queen", "Rook", "Bishop", "Knight", "Pawn"))

levels(piece) = c("K", "Q", "R", "B", "K", "P")

piece.ordered = factor(piece, ordered = TRUE, levels = c("K", "Q", "R", "B", "K", "P"),
                        labels = c("King", "Queen", "Rook", "Bishop", "Knight", "Pawn"))
