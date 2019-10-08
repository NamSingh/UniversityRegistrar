# UniversityRegistrar

###### This is an example of a Distributed Database for a University Registrar, not a runnable app.

It is split into 3 DBs'. A central DB consisting of all information. A Faculty of Engineering DB, and a Faculty of Science DB (which contain only their respective information).


Createxxx.sql files create the outline for the initial DDB. InsertData.SQL populates the DDB. Reconstruct.sql, reconstructs the CentralDB inserting all new information from the SciDB and EngDB. Queries.sql are examples of possible SQL queries that can be used with this DDB.
