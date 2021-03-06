const bcrypt = require("bcryptjs");

module.exports = function(sequelize, DataTypes) {
  const User = sequelize.define("User", {
    firstName: {
      type: DataTypes.STRING,
      allowNull: false
    },
    lastName: {
      type: DataTypes.STRING,
      allowNull: false
    },
    isAdmin: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
      validate: {
        isEmail: true
      }
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false
    },
    color: {
      type: DataTypes.STRING,
      allowNull: true
    }
  });

  User.prototype.validPassword = function(password) {
    return bcrypt.compareSync(password, this.password);
  };

  User.addHook("beforeCreate", user => {
    user.password = bcrypt.hashSync(
      user.password,
      bcrypt.genSaltSync(10),
      null
    );
  });

  User.associate = function(models) {
    User.hasMany(models.Task, {
      as: "created",
      foreignKey: "creatorId",
      onDelete: "cascade",
      allowNull: false
    });
    User.hasMany(models.Task, {
      as: "assigned",
      foreignKey: "assigneeId",
      allowNull: true
    });
  };

  return User;
};
