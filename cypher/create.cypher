// CREATE VERTICIES
CREATE (mark:Person {name: "Mark", email: "mark@gmail.com"})
CREATE (dave:Person {name: "Dave", email: "dave@gmail.com"})
CREATE (john:Person {name: "John", email: "john@gmail.com"})
CREATE (mary:Person {name: "Mary", email: "mary@gmail.com"})
CREATE (sally:Person {name: "Sally", email: "sally@gmail.com"})

CREATE (drilling:Skill {name: "Drilling"})
CREATE (welding:Skill {name: "Welding"})
CREATE (climbing:Skill {name: "Climbing"})

CREATE (dui:Offense {name: "DUI"})
CREATE (felony:Offense {name: "Felony"})

CREATE (companyA:Employer {name: "CompanyA"})
CREATE (companyB:Employer {name: "CompanyB"})
CREATE (companyC:Employer {name: "CompanyC"})
CREATE (companyD:Employer {name: "CompanyD"})
CREATE (companyE:Employer {name: "CompanyE"})
CREATE (companyF:Employer {name: "CompanyF"})

// CREATE EDGES
CREATE (mark)-[:WORKED_AT {from: 2001, to: 2005 }]->(companyA)
CREATE (mark)-[:WORKED_AT {from: 2006, to: 2007 }]->(companyC)
CREATE (mark)-[:WORKED_AT {from: 2007, to: 20019 }]->(companyF)
CREATE (mark)-[:IS_PROFICIENT_IN]->(drilling)
CREATE (mark)-[:IS_PROFICIENT_IN]->(welding)
CREATE (mark)-[:IS_PROFICIENT_IN]->(climbing)


CREATE (dave)-[:WORKED_AT {from: 2011, to: 2018 }]->(companyA)
CREATE (dave)-[:WORKED_AT {from: 2018, to: 2019 }]->(companyC)
CREATE (mark)-[:IS_PROFICIENT_IN]->(climbing)

CREATE (john)-[:WORKED_AT {from: 2011, to: 2019 }]->(companyC)
CREATE (mark)-[:CONVICTED_OF { when: date({ year:2016, month:10, day:11 })}]->(dui)
CREATE (mark)-[:IS_PROFICIENT_IN]->(welding)


CREATE (mary)-[:WORKED_AT {from: 2001, to: 2005 }]->(companyA)
CREATE (mary)-[:WORKED_AT {from: 2005, to: 2012 }]->(companyF)
CREATE (mary)-[:CONVICTED_OF { when: date({ year:2012, month:05, day:23 })}]->(dui)
CREATE (mark)-[:IS_PROFICIENT_IN]->(climbing)
CREATE (mark)-[:IS_PROFICIENT_IN]->(welding)

CREATE (sally)-[:WORKED_AT {from: 2001, to: 2005 }]->(companyB)
CREATE (sally)-[:WORKED_AT {from: 2008, to: 2018 }]->(companyF)
CREATE (mary)-[:CONVICTED_OF { when: date({ year:2006, month:09, day:21 })}]->(felony)
CREATE (mark)-[:IS_PROFICIENT_IN]->(drilling)
CREATE (mark)-[:IS_PROFICIENT_IN]->(climbing)