import { validateInputs } from "./validation.js";
import { describe, expect, it } from "@jest/globals";

describe('validate', () => {
    describe('validateInputs', () => {
        it('returns an appropriate error message if question is too short or too long', () => {
            const result = validateInputs("a", ["q", "n", "b", "v"]);
            expect(result).toBe("Spurning þarf að vera milli 5 og 400 stafir");
        });
        it('returns an error message if there are empty answers', () => {
            const result = validateInputs("aaaaaaaaaaaa", ["AAAAAA", 'a', "", ""]);
            expect(result).toBe("Þarf að fylla út öll svör");
        });
        it('returns null if inputs are valid', () => {
            const result = validateInputs("aaaaaaaaaaaaa", ["Aaaa", "Baaaaa", "Caaaa", "Daaaa"]);
            expect(result).toBe(null);
        });
    });
});