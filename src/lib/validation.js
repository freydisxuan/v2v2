export function validateInputs(question, answers) {
    if (question.length < 5 || question.length > 400) {
        return 'Spurning þarf að vera milli 5 og 400 stafir';
    }
    for (let i = 0; i < answers.length; i++) {
        if (!answers[i]) {
            return 'Þarf að fylla út öll svör';
        }
    }

    return null;
}