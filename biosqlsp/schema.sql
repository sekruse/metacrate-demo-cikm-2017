-- BioSQL stable version: 1.0.1
-- © 2017 BioSQL.
-- Licensed under a Creative Commons Attribution 4.0 International License.
-- Changes: This is only an excerpt of the full schema definition.

CREATE TABLE biodatabase (
  	biodatabase_id 	INT(10) UNSIGNED NOT NULL auto_increment,
  	name           	VARCHAR(128) BINARY NOT NULL,
  authority	VARCHAR(128),
  description	TEXT,
  PRIMARY KEY (biodatabase_id),
  	UNIQUE (name)
);

CREATE TABLE bioentry (
  bioentry_id	    INT(10) UNSIGNED NOT NULL auto_increment,
  	biodatabase_id  INT(10) UNSIGNED NOT NULL,
  	taxon_id     	INT(10) UNSIGNED,
  	name		VARCHAR(40) NOT NULL,
  	accession    	VARCHAR(40) BINARY NOT NULL,
  	identifier   	VARCHAR(40) BINARY,
  division	VARCHAR(6),
  	description  	TEXT,
  	version 	SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (bioentry_id),
  	UNIQUE (accession,biodatabase_id,version),
-- CONFIG: uncomment one (and only one) of the two lines below. The
-- first puts a uniqueness constraint on the identifier column alone;
-- the other one puts a uniqueness constraint on identifier only
-- within a namespace.
--  	UNIQUE (identifier)
 	UNIQUE (identifier, biodatabase_id)
);

CREATE TABLE bioentry_relationship (
        bioentry_relationship_id INT(10) UNSIGNED NOT NULL auto_increment,
        object_bioentry_id 	 INT(10) UNSIGNED NOT NULL,
   	subject_bioentry_id 	 INT(10) UNSIGNED NOT NULL,
   	term_id 		 INT(10) UNSIGNED NOT NULL,
   	rank 			 INT(5),
   	PRIMARY KEY (bioentry_relationship_id),
  UNIQUE (object_bioentry_id,subject_bioentry_id,term_id)
);

CREATE TABLE bioentry_path (
   	object_bioentry_id 	INT(10) UNSIGNED NOT NULL,
   	subject_bioentry_id 	INT(10) UNSIGNED NOT NULL,
   	term_id 		INT(10) UNSIGNED NOT NULL,
  distance	     	INT(10) UNSIGNED,
  UNIQUE (object_bioentry_id,subject_bioentry_id,term_id,distance)
);

CREATE TABLE bioentry_dbxref (
       	bioentry_id        INT(10) UNSIGNED NOT NULL,
       	dbxref_id          INT(10) UNSIGNED NOT NULL,
  	rank  		   SMALLINT,
  PRIMARY KEY (bioentry_id,dbxref_id)
);

CREATE TABLE bioentry_reference (
  	bioentry_id 	INT(10) UNSIGNED NOT NULL,
  	reference_id 	INT(10) UNSIGNED NOT NULL,
  	start_pos	INT(10),
  	end_pos	  	INT(10),
  	rank  		SMALLINT NOT NULL DEFAULT 0,
  	PRIMARY KEY(bioentry_id,reference_id,rank)
);

CREATE TABLE bioentry_qualifier_value (
  bioentry_id   		INT(10) UNSIGNED NOT NULL,
   	term_id  		INT(10) UNSIGNED NOT NULL,
   	value         		TEXT,
  rank			INT(5) NOT NULL DEFAULT 0,
  UNIQUE (bioentry_id,term_id,rank)
);

CREATE TABLE biosequence (
  	bioentry_id     INT(10) UNSIGNED NOT NULL,
  	version     	SMALLINT,
  	length      	INT(10),
  	alphabet        VARCHAR(10),
  	seq 		LONGTEXT,
  PRIMARY KEY (bioentry_id)
);

CREATE TABLE dbxref (
        dbxref_id	INT(10) UNSIGNED NOT NULL auto_increment,
        dbname          VARCHAR(40) BINARY NOT NULL,
        accession       VARCHAR(40) BINARY NOT NULL,
  version		SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (dbxref_id),
        UNIQUE(accession, dbname, version)
);

CREATE TABLE dbxref_qualifier_value (
       	dbxref_id 		INT(10) UNSIGNED NOT NULL,
       	term_id 		INT(10) UNSIGNED NOT NULL,
  	rank  		   	SMALLINT NOT NULL DEFAULT 0,
       	value			TEXT,
  PRIMARY KEY (dbxref_id,term_id,rank)
);

CREATE TABLE location (
  location_id		INT(10) UNSIGNED NOT NULL auto_increment,
   	seqfeature_id		INT(10) UNSIGNED NOT NULL,
  dbxref_id		INT(10) UNSIGNED,
  term_id			INT(10) UNSIGNED,
   	start_pos              	INT(10),
   	end_pos                	INT(10),
   	strand             	TINYINT NOT NULL DEFAULT 0,
   	rank          		SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (location_id),
   	UNIQUE (seqfeature_id, rank)
);

CREATE TABLE location_qualifier_value (
  location_id		INT(10) UNSIGNED NOT NULL,
   	term_id 		INT(10) UNSIGNED NOT NULL,
   	value  			VARCHAR(255) NOT NULL,
   	int_value 		INT(10),
  PRIMARY KEY (location_id,term_id)
);

CREATE TABLE taxon (
       taxon_id		INT(10) UNSIGNED NOT NULL auto_increment,
       ncbi_taxon_id 	INT(10),
       parent_taxon_id	INT(10) UNSIGNED,
       node_rank	VARCHAR(32),
       genetic_code	TINYINT UNSIGNED,
       mito_genetic_code TINYINT UNSIGNED,
       left_value	INT(10) UNSIGNED,
       right_value	INT(10) UNSIGNED,
       PRIMARY KEY (taxon_id),
       UNIQUE (ncbi_taxon_id),
       UNIQUE (left_value),
       UNIQUE (right_value)
);

CREATE TABLE taxon_name (
       taxon_id		INT(10) UNSIGNED NOT NULL,
       name		VARCHAR(255) BINARY NOT NULL,
       name_class	VARCHAR(32) BINARY NOT NULL,
       UNIQUE (taxon_id,name,name_class)
);

CREATE TABLE ontology (
       	ontology_id        INT(10) UNSIGNED NOT NULL auto_increment,
       	name	   	   VARCHAR(32) BINARY NOT NULL,
       	definition	   TEXT,
	PRIMARY KEY (ontology_id),
	UNIQUE (name)
);

CREATE TABLE term (
       	term_id   INT(10) UNSIGNED NOT NULL auto_increment,
       	name	   	   VARCHAR(255) BINARY NOT NULL,
       	definition	   TEXT,
	identifier	   VARCHAR(40) BINARY,
	is_obsolete	   CHAR(1),
	ontology_id	   INT(10) UNSIGNED NOT NULL,
	PRIMARY KEY (term_id),
	UNIQUE (identifier),
-- CONFIG: uncomment exactly one of the two following lines. The
-- first one puts a unqiueness constraint on term name within an
-- ontology, which is a conservative approach. However, if you are
-- going to load GO and update it too, there are situations where
-- you'll run into problems with this constraint unless you delete
-- obsoleted terms (which has its own shortcomings, read the POD of
-- load_ontology.pl in bioperl-db). The second line includes the
-- obsoleteness into the uniqueness constraint.
--        UNIQUE (name,ontology_id)
          UNIQUE (name,ontology_id,is_obsolete)
);

CREATE TABLE term_synonym (
       synonym		  VARCHAR(255) BINARY NOT NULL,
       term_id		  INT(10) UNSIGNED NOT NULL,
       PRIMARY KEY (term_id,synonym)
);

CREATE TABLE term_dbxref (
       	term_id	          INT(10) UNSIGNED NOT NULL,
       	dbxref_id         INT(10) UNSIGNED NOT NULL,
	rank		  SMALLINT,
	PRIMARY KEY (term_id, dbxref_id)
);

CREATE TABLE term_relationship (
        term_relationship_id INT(10) UNSIGNED NOT NULL auto_increment,
       	subject_term_id	INT(10) UNSIGNED NOT NULL,
       	predicate_term_id    INT(10) UNSIGNED NOT NULL,
       	object_term_id       INT(10) UNSIGNED NOT NULL,
	ontology_id	INT(10) UNSIGNED NOT NULL,
	PRIMARY KEY (term_relationship_id),
	UNIQUE (subject_term_id,predicate_term_id,object_term_id,ontology_id)
);

CREATE TABLE term_relationship_term (
        term_relationship_id INT(10) UNSIGNED NOT NULL,
        term_id              INT(10) UNSIGNED NOT NULL,
        PRIMARY KEY ( term_relationship_id ),
        UNIQUE ( term_id )
);

CREATE TABLE term_path (
        term_path_id         INT(10) UNSIGNED NOT NULL auto_increment,
       	subject_term_id	     INT(10) UNSIGNED NOT NULL,
       	predicate_term_id    INT(10) UNSIGNED NOT NULL,
       	object_term_id       INT(10) UNSIGNED NOT NULL,
	ontology_id          INT(10) UNSIGNED NOT NULL,
	distance	     INT(10) UNSIGNED,
	PRIMARY KEY (term_path_id),
	UNIQUE (subject_term_id,predicate_term_id,object_term_id,ontology_id,distance)
);

CREATE TABLE reference (
  	reference_id       INT(10) UNSIGNED NOT NULL auto_increment,
	dbxref_id	   INT(10) UNSIGNED,
  	location 	   TEXT NOT NULL,
  	title    	   TEXT,
  	authors  	   TEXT,
  	crc	   	   VARCHAR(32),
	PRIMARY KEY (reference_id),
	UNIQUE (dbxref_id),
	UNIQUE (crc)
);

CREATE TABLE comment (
  	comment_id  	INT(10) UNSIGNED NOT NULL auto_increment,
  	bioentry_id    	INT(10) UNSIGNED NOT NULL,
  	comment_text   	TEXT NOT NULL,
  	rank   		SMALLINT NOT NULL DEFAULT 0,
	PRIMARY KEY (comment_id),
  	UNIQUE(bioentry_id, rank)
);

CREATE TABLE seqfeature (
   	seqfeature_id 		INT(10) UNSIGNED NOT NULL auto_increment,
   	bioentry_id   		INT(10) UNSIGNED NOT NULL,
   	type_term_id		INT(10) UNSIGNED NOT NULL,
   	source_term_id  	INT(10) UNSIGNED NOT NULL,
	display_name		VARCHAR(64),
   	rank 			SMALLINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (seqfeature_id),
	UNIQUE (bioentry_id,type_term_id,source_term_id,rank)
);

CREATE TABLE seqfeature_relationship (
        seqfeature_relationship_id INT(10) UNSIGNED NOT NULL auto_increment,
   	object_seqfeature_id	INT(10) UNSIGNED NOT NULL,
   	subject_seqfeature_id 	INT(10) UNSIGNED NOT NULL,
   	term_id 	        INT(10) UNSIGNED NOT NULL,
   	rank 			INT(5),
   	PRIMARY KEY (seqfeature_relationship_id),
	UNIQUE (object_seqfeature_id,subject_seqfeature_id,term_id)
);

CREATE TABLE seqfeature_path (
   	object_seqfeature_id	INT(10) UNSIGNED NOT NULL,
   	subject_seqfeature_id 	INT(10) UNSIGNED NOT NULL,
   	term_id 		INT(10) UNSIGNED NOT NULL,
	distance	     	INT(10) UNSIGNED,
	UNIQUE (object_seqfeature_id,subject_seqfeature_id,term_id,distance)
);

CREATE TABLE seqfeature_qualifier_value (
	seqfeature_id 		INT(10) UNSIGNED NOT NULL,
   	term_id 		INT(10) UNSIGNED NOT NULL,
   	rank 			SMALLINT NOT NULL DEFAULT 0,
   	value  			TEXT NOT NULL,
   	PRIMARY KEY (seqfeature_id,term_id,rank)
);

CREATE TABLE seqfeature_dbxref (
       	seqfeature_id      INT(10) UNSIGNED NOT NULL,
       	dbxref_id          INT(10) UNSIGNED NOT NULL,
  	rank  		   SMALLINT,
	PRIMARY KEY (seqfeature_id,dbxref_id)
);

--
-- Create the foreign key constraints
--

-- ontology term

ALTER TABLE term ADD CONSTRAINT FKont_term
	FOREIGN KEY (ontology_id) REFERENCES ontology(ontology_id)
	ON DELETE CASCADE;

-- term synonyms

ALTER TABLE term_synonym ADD CONSTRAINT FKterm_syn
	FOREIGN KEY (term_id) REFERENCES term(term_id)
	ON DELETE CASCADE;

-- term_dbxref

ALTER TABLE term_dbxref ADD CONSTRAINT FKdbxref_trmdbxref
       	FOREIGN KEY (dbxref_id) REFERENCES dbxref(dbxref_id)
	ON DELETE CASCADE;
ALTER TABLE term_dbxref ADD CONSTRAINT FKterm_trmdbxref
      FOREIGN KEY (term_id) REFERENCES term(term_id)
	ON DELETE CASCADE;

-- term_relationship

ALTER TABLE term_relationship ADD CONSTRAINT FKtrmsubject_trmrel
	FOREIGN KEY (subject_term_id) REFERENCES term(term_id)
	ON DELETE CASCADE;
ALTER TABLE term_relationship ADD CONSTRAINT FKtrmpredicate_trmrel
       	FOREIGN KEY (predicate_term_id) REFERENCES term(term_id)
	ON DELETE CASCADE;
ALTER TABLE term_relationship ADD CONSTRAINT FKtrmobject_trmrel
       	FOREIGN KEY (object_term_id) REFERENCES term(term_id)
	ON DELETE CASCADE;
ALTER TABLE term_relationship ADD CONSTRAINT FKterm_trmrel
       	FOREIGN KEY (ontology_id) REFERENCES ontology(ontology_id)
	ON DELETE CASCADE;

-- term_relationship_term

ALTER TABLE term_relationship_term ADD CONSTRAINT FKtrmrel_trmreltrm
	FOREIGN KEY (term_relationship_id) REFERENCES term_relationship(term_relationship_id)
	ON DELETE CASCADE;
ALTER TABLE term_relationship_term ADD CONSTRAINT FKtrm_trmreltrm
	FOREIGN KEY (term_id) REFERENCES term(term_id)
	ON DELETE CASCADE;

-- term_path

ALTER TABLE term_path ADD CONSTRAINT FKtrmsubject_trmpath
	FOREIGN KEY (subject_term_id) REFERENCES term(term_id)
	ON DELETE CASCADE;
ALTER TABLE term_path ADD CONSTRAINT FKtrmpredicate_trmpath
       	FOREIGN KEY (predicate_term_id) REFERENCES term(term_id)
	ON DELETE CASCADE;
ALTER TABLE term_path ADD CONSTRAINT FKtrmobject_trmpath
       	FOREIGN KEY (object_term_id) REFERENCES term(term_id)
	ON DELETE CASCADE;
ALTER TABLE term_path ADD CONSTRAINT FKontology_trmpath
       	FOREIGN KEY (ontology_id) REFERENCES ontology(ontology_id)
	ON DELETE CASCADE;

-- taxon, taxon_name

-- unfortunately, we can't constrain parent_taxon_id as it is violated
-- occasionally by the downloads available from NCBI
-- ALTER TABLE taxon ADD CONSTRAINT FKtaxon_taxon
--        FOREIGN KEY (parent_taxon_id) REFERENCES taxon(taxon_id);
ALTER TABLE taxon_name ADD CONSTRAINT FKtaxon_taxonname
        FOREIGN KEY (taxon_id) REFERENCES taxon(taxon_id)
        ON DELETE CASCADE;

-- bioentry

ALTER TABLE bioentry ADD CONSTRAINT FKtaxon_bioentry
	FOREIGN KEY (taxon_id) REFERENCES taxon(taxon_id);
ALTER TABLE bioentry ADD CONSTRAINT FKbiodatabase_bioentry
	FOREIGN KEY (biodatabase_id) REFERENCES biodatabase(biodatabase_id);

-- bioentry_relationship

ALTER TABLE bioentry_relationship ADD CONSTRAINT FKterm_bioentryrel
	FOREIGN KEY (term_id) REFERENCES term(term_id);
ALTER TABLE bioentry_relationship ADD CONSTRAINT FKparentent_bioentryrel
	FOREIGN KEY (object_bioentry_id) REFERENCES bioentry(bioentry_id)
	ON DELETE CASCADE;
ALTER TABLE bioentry_relationship ADD CONSTRAINT FKchildent_bioentryrel
	FOREIGN KEY (subject_bioentry_id) REFERENCES bioentry(bioentry_id)
	ON DELETE CASCADE;

-- bioentry_path

ALTER TABLE bioentry_path ADD CONSTRAINT FKterm_bioentrypath
	FOREIGN KEY (term_id) REFERENCES term(term_id);
ALTER TABLE bioentry_path ADD CONSTRAINT FKparentent_bioentrypath
	FOREIGN KEY (object_bioentry_id) REFERENCES bioentry(bioentry_id)
	ON DELETE CASCADE;
ALTER TABLE bioentry_path ADD CONSTRAINT FKchildent_bioentrypath
	FOREIGN KEY (subject_bioentry_id) REFERENCES bioentry(bioentry_id)
	ON DELETE CASCADE;

-- biosequence

ALTER TABLE biosequence ADD CONSTRAINT FKbioentry_bioseq
	FOREIGN KEY (bioentry_id) REFERENCES bioentry(bioentry_id)
	ON DELETE CASCADE;

-- comment

ALTER TABLE comment ADD CONSTRAINT FKbioentry_comment
	FOREIGN KEY(bioentry_id) REFERENCES bioentry(bioentry_id)
	ON DELETE CASCADE;

-- bioentry_dbxref

ALTER TABLE bioentry_dbxref ADD CONSTRAINT FKbioentry_dblink
        FOREIGN KEY (bioentry_id) REFERENCES bioentry(bioentry_id)
	ON DELETE CASCADE;
ALTER TABLE bioentry_dbxref ADD CONSTRAINT FKdbxref_dblink
       	FOREIGN KEY (dbxref_id) REFERENCES dbxref(dbxref_id)
	ON DELETE CASCADE;

-- dbxref_qualifier_value

ALTER TABLE dbxref_qualifier_value ADD CONSTRAINT FKtrm_dbxrefqual
	FOREIGN KEY (term_id) REFERENCES term(term_id);
ALTER TABLE dbxref_qualifier_value ADD CONSTRAINT FKdbxref_dbxrefqual
	FOREIGN KEY (dbxref_id) REFERENCES dbxref(dbxref_id)
	ON DELETE CASCADE;

-- bioentry_reference

ALTER TABLE bioentry_reference ADD CONSTRAINT FKbioentry_entryref
	FOREIGN KEY (bioentry_id) REFERENCES bioentry(bioentry_id)
	ON DELETE CASCADE;
ALTER TABLE bioentry_reference ADD CONSTRAINT FKreference_entryref
	FOREIGN KEY (reference_id) REFERENCES reference(reference_id)
	ON DELETE CASCADE;

-- bioentry_qualifier_value

ALTER TABLE bioentry_qualifier_value ADD CONSTRAINT FKbioentry_entqual
	FOREIGN KEY (bioentry_id) REFERENCES bioentry(bioentry_id)
	ON DELETE CASCADE;
ALTER TABLE bioentry_qualifier_value ADD CONSTRAINT FKterm_entqual
	FOREIGN KEY (term_id) REFERENCES term(term_id);

-- reference
ALTER TABLE reference ADD CONSTRAINT FKdbxref_reference
      FOREIGN KEY ( dbxref_id ) REFERENCES dbxref ( dbxref_id ) ;

-- seqfeature

ALTER TABLE seqfeature ADD CONSTRAINT FKterm_seqfeature
	FOREIGN KEY (type_term_id) REFERENCES term(term_id);
ALTER TABLE seqfeature ADD CONSTRAINT FKsourceterm_seqfeature
	FOREIGN KEY (source_term_id) REFERENCES term(term_id);
ALTER TABLE seqfeature ADD CONSTRAINT FKbioentry_seqfeature
	FOREIGN KEY (bioentry_id) REFERENCES bioentry(bioentry_id)
	ON DELETE CASCADE;

-- seqfeature_relationship

ALTER TABLE seqfeature_relationship ADD CONSTRAINT FKterm_seqfeatrel
	FOREIGN KEY (term_id) REFERENCES term(term_id);
ALTER TABLE seqfeature_relationship ADD CONSTRAINT FKparentfeat_seqfeatrel
	FOREIGN KEY (object_seqfeature_id) REFERENCES seqfeature(seqfeature_id)
	ON DELETE CASCADE;
ALTER TABLE seqfeature_relationship ADD CONSTRAINT FKchildfeat_seqfeatrel
	FOREIGN KEY (subject_seqfeature_id) REFERENCES seqfeature(seqfeature_id)
	ON DELETE CASCADE;

-- seqfeature_path

ALTER TABLE seqfeature_path ADD CONSTRAINT FKterm_seqfeatpath
	FOREIGN KEY (term_id) REFERENCES term(term_id);
ALTER TABLE seqfeature_path ADD CONSTRAINT FKparentfeat_seqfeatpath
	FOREIGN KEY (object_seqfeature_id) REFERENCES seqfeature(seqfeature_id)
	ON DELETE CASCADE;
ALTER TABLE seqfeature_path ADD CONSTRAINT FKchildfeat_seqfeatpath
	FOREIGN KEY (subject_seqfeature_id) REFERENCES seqfeature(seqfeature_id)
	ON DELETE CASCADE;

-- seqfeature_qualifier_value
ALTER TABLE seqfeature_qualifier_value ADD CONSTRAINT FKterm_featqual
	FOREIGN KEY (term_id) REFERENCES term(term_id);
ALTER TABLE seqfeature_qualifier_value ADD CONSTRAINT FKseqfeature_featqual
	FOREIGN KEY (seqfeature_id) REFERENCES seqfeature(seqfeature_id)
	ON DELETE CASCADE;

-- seqfeature_dbxref

ALTER TABLE seqfeature_dbxref ADD CONSTRAINT FKseqfeature_feadblink
        FOREIGN KEY (seqfeature_id) REFERENCES seqfeature(seqfeature_id)
	ON DELETE CASCADE;
ALTER TABLE seqfeature_dbxref ADD CONSTRAINT FKdbxref_feadblink
       	FOREIGN KEY (dbxref_id) REFERENCES dbxref(dbxref_id)
	ON DELETE CASCADE;

-- location

ALTER TABLE location ADD CONSTRAINT FKseqfeature_location
	FOREIGN KEY (seqfeature_id) REFERENCES seqfeature(seqfeature_id)
	ON DELETE CASCADE;
ALTER TABLE location ADD CONSTRAINT FKdbxref_location
	FOREIGN KEY (dbxref_id) REFERENCES dbxref(dbxref_id);
ALTER TABLE location ADD CONSTRAINT FKterm_featloc
	FOREIGN KEY (term_id) REFERENCES term(term_id);

-- location_qualifier_value

ALTER TABLE location_qualifier_value ADD CONSTRAINT FKfeatloc_locqual
	FOREIGN KEY (location_id) REFERENCES location(location_id)
	ON DELETE CASCADE;
ALTER TABLE location_qualifier_value ADD CONSTRAINT FKterm_locqual
	FOREIGN KEY (term_id) REFERENCES term(term_id);
