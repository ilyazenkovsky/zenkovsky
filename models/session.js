module.exports = function(sequelize, DataTypes) {
  const Session = sequelize.define("Session", {
    date: {
      type: DataTypes.DATEONLY,
      allowNull: true
    }
  });

  Session.associate = function(models) {
    Session.belongsTo(models.User, {
      as: "user",
      foreignKey: "userId",
      allowNull: false
    });
  };

  return Session;
};
