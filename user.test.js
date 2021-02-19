const {greeting} = require('./user')

test('Should return null when params is null', () => {
    expect(greeting()).toBe()
})
test('Should return Hello + name', () => {
    expect(greeting('Iqbal')).toBe('Hello Dimas')
})