class Solution {
    func computeArea(_ A: Int, _ B: Int, _ C: Int, _ D: Int, _ E: Int, _ F: Int, _ G: Int, _ H: Int) -> Int {
        let (x1, x2, y1, y2) = (max(A, E), min(C, G), max(B, F), min(D, H))
        let area1 = (C - A) * (D - B)
        let area2 = (G - E) * (H - F)
        var area3 = 0
        if x1 < x2 && y1 < y2 {
            area3 = (x2 - x1) * (y2 - y1)
        }
        return area1 + area2 - area3
    }
}
