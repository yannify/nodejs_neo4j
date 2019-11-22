const personSchema = {
    labels: ["Person"],
    "position": "string",
    "age": "integer",
    "name": "string",
    "lastModified": "string",
    "id": "string",
    "version": "number",
    "profileImageUrl": {
        type: "string",
        uri: {
            scheme: ["http", "https"]
        }
    },
    email: {
        type: 'string',
        unique: 'true', // Creates a Unique Constraint
    },

    // relationships
    has: {
        type: "relationship",
        target: "Skill",
        relationship: "HAS",
        direction: "out",
        properties: {
            name: "string",
            startedUsing: {
                type: 'date',
                default: () => new Date,
            },
            since: {
                type: 'integer',
                required: true,
            },
        }
    }
};

module.exports = personSchema;