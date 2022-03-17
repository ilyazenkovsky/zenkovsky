escribe('User Endpoints', () => {
  it('GET /list should show all task’, async () => {
    const res = await requestWithSupertest.get('/list');
      expect(res.status).toEqual(200);
      expect(res.type).toEqual(expect.stringContaining('json'));
      expect(res.body).toHaveProperty('title')
      expect(res.body).toHaveProperty('assigne’')
      expect(res.body).toHaveProperty('id’')
  });

escribe('User Endpoints', () => {
  it('GET /task+{id} should detailed information about the task, async () => {
    const res = await requestWithSupertest.get('/task+{id}’);
      expect(res.status).toEqual(200);
      expect(res.type).toEqual(expect.stringContaining('json'));
      expect(res.body).toHaveProperty('title')
      expect(res.body).toHaveProperty('assigne’')
      expect(res.body).toHaveProperty('id’')
    expect(res.body).toHaveProperty('createdAt')
    expect(res.body).toHaveProperty('updatedAt')
    expect(res.body).toHaveProperty('creatorId')
    expect(res.body).toHaveProperty('creator.color’')
    expect(res.body).toHaveProperty('creator.email')
    expect(res.body).toHaveProperty('creator.firstName')
    expect(res.body).toHaveProperty('creator.LastName')
  });


escribe('User Endpoints', () => {
  it('GET /done should completed tasks of a specific user, async () => {
    const res = await requestWithSupertest.get('/done);
      expect(res.status).toEqual(200);
      expect(res.type).toEqual(expect.stringContaining('json'));
      expect(res.body).toHaveProperty('title')
      expect(res.body).toHaveProperty('assigne’')
      expect(res.body).toHaveProperty('id’')
expect(res.body).toHaveProperty(‘complete’)
  });
