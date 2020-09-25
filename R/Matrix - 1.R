player = c(rep("dark", 5), rep("light", 5))

piece = c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
chess = c(player, piece)

dim(chess) = c(10, 2)
colnames(chess) = c("Player", "Piece")

chess.mat = matrix(chess, nrow = 10, dimnames = list(NULL, c("Player", "Piece"))) 

chess.bind = cbind("Player" = player, "Piece" = piece)
chess.bind