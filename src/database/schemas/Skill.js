const skillSchema = {
  labels: ["Skill"],
  "name": "string",
  createdAt: {
    type: 'datetime',
    default: () => new Date,
  },
  has: {
    type: "relationship",
    target: "Person",
    relationship: "HAS",
    direction: "in",
    eager: true
  }
};

module.exports = skillSchema;

