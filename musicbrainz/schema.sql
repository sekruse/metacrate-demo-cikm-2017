-- This file is licensed under the terms of GPLv2.

-- Automatically generated, do not edit.
\set ON_ERROR_STOP 1

ALTER TABLE alternative_medium
   ADD CONSTRAINT alternative_medium_fk_medium
   FOREIGN KEY (medium)
   REFERENCES medium(id);

ALTER TABLE alternative_medium
   ADD CONSTRAINT alternative_medium_fk_alternative_release
   FOREIGN KEY (alternative_release)
   REFERENCES alternative_release(id);

ALTER TABLE alternative_medium_track
   ADD CONSTRAINT alternative_medium_track_fk_alternative_medium
   FOREIGN KEY (alternative_medium)
   REFERENCES alternative_medium(id);

ALTER TABLE alternative_medium_track
   ADD CONSTRAINT alternative_medium_track_fk_track
   FOREIGN KEY (track)
   REFERENCES track(id);

ALTER TABLE alternative_medium_track
   ADD CONSTRAINT alternative_medium_track_fk_alternative_track
   FOREIGN KEY (alternative_track)
   REFERENCES alternative_track(id);

ALTER TABLE alternative_release
   ADD CONSTRAINT alternative_release_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE alternative_release
   ADD CONSTRAINT alternative_release_fk_artist_credit
   FOREIGN KEY (artist_credit)
   REFERENCES artist_credit(id);

ALTER TABLE alternative_release
   ADD CONSTRAINT alternative_release_fk_type
   FOREIGN KEY (type)
   REFERENCES alternative_release_type(id);

ALTER TABLE alternative_release
   ADD CONSTRAINT alternative_release_fk_language
   FOREIGN KEY (language)
   REFERENCES language(id);

ALTER TABLE alternative_release
   ADD CONSTRAINT alternative_release_fk_script
   FOREIGN KEY (script)
   REFERENCES script(id);

ALTER TABLE alternative_release_type
   ADD CONSTRAINT alternative_release_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES alternative_release_type(id);

ALTER TABLE alternative_track
   ADD CONSTRAINT alternative_track_fk_artist_credit
   FOREIGN KEY (artist_credit)
   REFERENCES artist_credit(id);

ALTER TABLE annotation
   ADD CONSTRAINT annotation_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE application
   ADD CONSTRAINT application_fk_owner
   FOREIGN KEY (owner)
   REFERENCES editor(id);

ALTER TABLE area
   ADD CONSTRAINT area_fk_type
   FOREIGN KEY (type)
   REFERENCES area_type(id);

ALTER TABLE area_alias
   ADD CONSTRAINT area_alias_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE area_alias
   ADD CONSTRAINT area_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES area_alias_type(id);

ALTER TABLE area_alias_type
   ADD CONSTRAINT area_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES area_alias_type(id);

ALTER TABLE area_annotation
   ADD CONSTRAINT area_annotation_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE area_annotation
   ADD CONSTRAINT area_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE area_attribute
   ADD CONSTRAINT area_attribute_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE area_attribute
   ADD CONSTRAINT area_attribute_fk_area_attribute_type
   FOREIGN KEY (area_attribute_type)
   REFERENCES area_attribute_type(id);

ALTER TABLE area_attribute
   ADD CONSTRAINT area_attribute_fk_area_attribute_type_allowed_value
   FOREIGN KEY (area_attribute_type_allowed_value)
   REFERENCES area_attribute_type_allowed_value(id);

ALTER TABLE area_attribute_type
   ADD CONSTRAINT area_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES area_attribute_type(id);

ALTER TABLE area_attribute_type_allowed_value
   ADD CONSTRAINT area_attribute_type_allowed_value_fk_area_attribute_type
   FOREIGN KEY (area_attribute_type)
   REFERENCES area_attribute_type(id);

ALTER TABLE area_attribute_type_allowed_value
   ADD CONSTRAINT area_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES area_attribute_type_allowed_value(id);

ALTER TABLE area_gid_redirect
   ADD CONSTRAINT area_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES area(id);

ALTER TABLE area_tag
   ADD CONSTRAINT area_tag_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE area_tag
   ADD CONSTRAINT area_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE area_tag_raw
   ADD CONSTRAINT area_tag_raw_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE area_tag_raw
   ADD CONSTRAINT area_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE area_tag_raw
   ADD CONSTRAINT area_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE area_type
   ADD CONSTRAINT area_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES area_type(id);

ALTER TABLE artist
   ADD CONSTRAINT artist_fk_type
   FOREIGN KEY (type)
   REFERENCES artist_type(id);

ALTER TABLE artist
   ADD CONSTRAINT artist_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE artist
   ADD CONSTRAINT artist_fk_gender
   FOREIGN KEY (gender)
   REFERENCES gender(id);

ALTER TABLE artist
   ADD CONSTRAINT artist_fk_begin_area
   FOREIGN KEY (begin_area)
   REFERENCES area(id);

ALTER TABLE artist
   ADD CONSTRAINT artist_fk_end_area
   FOREIGN KEY (end_area)
   REFERENCES area(id);

ALTER TABLE artist_alias
   ADD CONSTRAINT artist_alias_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id);

ALTER TABLE artist_alias
   ADD CONSTRAINT artist_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES artist_alias_type(id);

ALTER TABLE artist_alias_type
   ADD CONSTRAINT artist_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES artist_alias_type(id);

ALTER TABLE artist_annotation
   ADD CONSTRAINT artist_annotation_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id);

ALTER TABLE artist_annotation
   ADD CONSTRAINT artist_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE artist_attribute
   ADD CONSTRAINT artist_attribute_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id);

ALTER TABLE artist_attribute
   ADD CONSTRAINT artist_attribute_fk_artist_attribute_type
   FOREIGN KEY (artist_attribute_type)
   REFERENCES artist_attribute_type(id);

ALTER TABLE artist_attribute
   ADD CONSTRAINT artist_attribute_fk_artist_attribute_type_allowed_value
   FOREIGN KEY (artist_attribute_type_allowed_value)
   REFERENCES artist_attribute_type_allowed_value(id);

ALTER TABLE artist_attribute_type
   ADD CONSTRAINT artist_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES artist_attribute_type(id);

ALTER TABLE artist_attribute_type_allowed_value
   ADD CONSTRAINT artist_attribute_type_allowed_value_fk_artist_attribute_type
   FOREIGN KEY (artist_attribute_type)
   REFERENCES artist_attribute_type(id);

ALTER TABLE artist_attribute_type_allowed_value
   ADD CONSTRAINT artist_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES artist_attribute_type_allowed_value(id);

ALTER TABLE artist_credit_name
   ADD CONSTRAINT artist_credit_name_fk_artist_credit
   FOREIGN KEY (artist_credit)
   REFERENCES artist_credit(id)
   ON DELETE CASCADE;

ALTER TABLE artist_credit_name
   ADD CONSTRAINT artist_credit_name_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id)
   ON DELETE CASCADE;

ALTER TABLE artist_gid_redirect
   ADD CONSTRAINT artist_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES artist(id);

ALTER TABLE artist_ipi
   ADD CONSTRAINT artist_ipi_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id);

ALTER TABLE artist_isni
   ADD CONSTRAINT artist_isni_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id);

ALTER TABLE artist_meta
   ADD CONSTRAINT artist_meta_fk_id
   FOREIGN KEY (id)
   REFERENCES artist(id)
   ON DELETE CASCADE;

ALTER TABLE artist_rating_raw
   ADD CONSTRAINT artist_rating_raw_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id);

ALTER TABLE artist_rating_raw
   ADD CONSTRAINT artist_rating_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE artist_tag
   ADD CONSTRAINT artist_tag_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id);

ALTER TABLE artist_tag
   ADD CONSTRAINT artist_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE artist_tag_raw
   ADD CONSTRAINT artist_tag_raw_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id);

ALTER TABLE artist_tag_raw
   ADD CONSTRAINT artist_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE artist_tag_raw
   ADD CONSTRAINT artist_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE artist_type
   ADD CONSTRAINT artist_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES artist_type(id);

ALTER TABLE autoeditor_election
   ADD CONSTRAINT autoeditor_election_fk_candidate
   FOREIGN KEY (candidate)
   REFERENCES editor(id);

ALTER TABLE autoeditor_election
   ADD CONSTRAINT autoeditor_election_fk_proposer
   FOREIGN KEY (proposer)
   REFERENCES editor(id);

ALTER TABLE autoeditor_election
   ADD CONSTRAINT autoeditor_election_fk_seconder_1
   FOREIGN KEY (seconder_1)
   REFERENCES editor(id);

ALTER TABLE autoeditor_election
   ADD CONSTRAINT autoeditor_election_fk_seconder_2
   FOREIGN KEY (seconder_2)
   REFERENCES editor(id);

ALTER TABLE autoeditor_election_vote
   ADD CONSTRAINT autoeditor_election_vote_fk_autoeditor_election
   FOREIGN KEY (autoeditor_election)
   REFERENCES autoeditor_election(id);

ALTER TABLE autoeditor_election_vote
   ADD CONSTRAINT autoeditor_election_vote_fk_voter
   FOREIGN KEY (voter)
   REFERENCES editor(id);

ALTER TABLE cdtoc_raw
   ADD CONSTRAINT cdtoc_raw_fk_release
   FOREIGN KEY (release)
   REFERENCES release_raw(id);

ALTER TABLE country_area
   ADD CONSTRAINT country_area_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE edit
   ADD CONSTRAINT edit_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE edit
   ADD CONSTRAINT edit_fk_language
   FOREIGN KEY (language)
   REFERENCES language(id);

ALTER TABLE edit_area
   ADD CONSTRAINT edit_area_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_area
   ADD CONSTRAINT edit_area_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id)
   ON DELETE CASCADE;

ALTER TABLE edit_artist
   ADD CONSTRAINT edit_artist_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_artist
   ADD CONSTRAINT edit_artist_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id)
   ON DELETE CASCADE;

ALTER TABLE edit_data
   ADD CONSTRAINT edit_data_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_event
   ADD CONSTRAINT edit_event_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_event
   ADD CONSTRAINT edit_event_fk_event
   FOREIGN KEY (event)
   REFERENCES event(id)
   ON DELETE CASCADE;

ALTER TABLE edit_instrument
   ADD CONSTRAINT edit_instrument_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_instrument
   ADD CONSTRAINT edit_instrument_fk_instrument
   FOREIGN KEY (instrument)
   REFERENCES instrument(id)
   ON DELETE CASCADE;

ALTER TABLE edit_label
   ADD CONSTRAINT edit_label_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_label
   ADD CONSTRAINT edit_label_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id)
   ON DELETE CASCADE;

ALTER TABLE edit_note
   ADD CONSTRAINT edit_note_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE edit_note
   ADD CONSTRAINT edit_note_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_note_recipient
   ADD CONSTRAINT edit_note_recipient_fk_recipient
   FOREIGN KEY (recipient)
   REFERENCES editor(id);

ALTER TABLE edit_note_recipient
   ADD CONSTRAINT edit_note_recipient_fk_edit_note
   FOREIGN KEY (edit_note)
   REFERENCES edit_note(id);

ALTER TABLE edit_place
   ADD CONSTRAINT edit_place_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_place
   ADD CONSTRAINT edit_place_fk_place
   FOREIGN KEY (place)
   REFERENCES place(id)
   ON DELETE CASCADE;

ALTER TABLE edit_recording
   ADD CONSTRAINT edit_recording_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_recording
   ADD CONSTRAINT edit_recording_fk_recording
   FOREIGN KEY (recording)
   REFERENCES recording(id)
   ON DELETE CASCADE;

ALTER TABLE edit_release
   ADD CONSTRAINT edit_release_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_release
   ADD CONSTRAINT edit_release_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id)
   ON DELETE CASCADE;

ALTER TABLE edit_release_group
   ADD CONSTRAINT edit_release_group_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_release_group
   ADD CONSTRAINT edit_release_group_fk_release_group
   FOREIGN KEY (release_group)
   REFERENCES release_group(id)
   ON DELETE CASCADE;

ALTER TABLE edit_series
   ADD CONSTRAINT edit_series_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_series
   ADD CONSTRAINT edit_series_fk_series
   FOREIGN KEY (series)
   REFERENCES series(id)
   ON DELETE CASCADE;

ALTER TABLE edit_url
   ADD CONSTRAINT edit_url_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_url
   ADD CONSTRAINT edit_url_fk_url
   FOREIGN KEY (url)
   REFERENCES url(id)
   ON DELETE CASCADE;

ALTER TABLE edit_work
   ADD CONSTRAINT edit_work_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE edit_work
   ADD CONSTRAINT edit_work_fk_work
   FOREIGN KEY (work)
   REFERENCES work(id)
   ON DELETE CASCADE;

ALTER TABLE editor
   ADD CONSTRAINT editor_fk_gender
   FOREIGN KEY (gender)
   REFERENCES gender(id);

ALTER TABLE editor
   ADD CONSTRAINT editor_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE editor_collection
   ADD CONSTRAINT editor_collection_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_collection
   ADD CONSTRAINT editor_collection_fk_type
   FOREIGN KEY (type)
   REFERENCES editor_collection_type(id);

ALTER TABLE editor_collection_area
   ADD CONSTRAINT editor_collection_area_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_area
   ADD CONSTRAINT editor_collection_area_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE editor_collection_artist
   ADD CONSTRAINT editor_collection_artist_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_artist
   ADD CONSTRAINT editor_collection_artist_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id);

ALTER TABLE editor_collection_deleted_entity
   ADD CONSTRAINT editor_collection_deleted_entity_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_deleted_entity
   ADD CONSTRAINT editor_collection_deleted_entity_fk_gid
   FOREIGN KEY (gid)
   REFERENCES deleted_entity(gid);

ALTER TABLE editor_collection_event
   ADD CONSTRAINT editor_collection_event_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_event
   ADD CONSTRAINT editor_collection_event_fk_event
   FOREIGN KEY (event)
   REFERENCES event(id);

ALTER TABLE editor_collection_instrument
   ADD CONSTRAINT editor_collection_instrument_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_instrument
   ADD CONSTRAINT editor_collection_instrument_fk_instrument
   FOREIGN KEY (instrument)
   REFERENCES instrument(id);

ALTER TABLE editor_collection_label
   ADD CONSTRAINT editor_collection_label_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_label
   ADD CONSTRAINT editor_collection_label_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE editor_collection_place
   ADD CONSTRAINT editor_collection_place_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_place
   ADD CONSTRAINT editor_collection_place_fk_place
   FOREIGN KEY (place)
   REFERENCES place(id);

ALTER TABLE editor_collection_recording
   ADD CONSTRAINT editor_collection_recording_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_recording
   ADD CONSTRAINT editor_collection_recording_fk_recording
   FOREIGN KEY (recording)
   REFERENCES recording(id);

ALTER TABLE editor_collection_release
   ADD CONSTRAINT editor_collection_release_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_release
   ADD CONSTRAINT editor_collection_release_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE editor_collection_release_group
   ADD CONSTRAINT editor_collection_release_group_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_release_group
   ADD CONSTRAINT editor_collection_release_group_fk_release_group
   FOREIGN KEY (release_group)
   REFERENCES release_group(id);

ALTER TABLE editor_collection_series
   ADD CONSTRAINT editor_collection_series_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_series
   ADD CONSTRAINT editor_collection_series_fk_series
   FOREIGN KEY (series)
   REFERENCES series(id);

ALTER TABLE editor_collection_type
   ADD CONSTRAINT editor_collection_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES editor_collection_type(id);

ALTER TABLE editor_collection_work
   ADD CONSTRAINT editor_collection_work_fk_collection
   FOREIGN KEY (collection)
   REFERENCES editor_collection(id);

ALTER TABLE editor_collection_work
   ADD CONSTRAINT editor_collection_work_fk_work
   FOREIGN KEY (work)
   REFERENCES work(id);

ALTER TABLE editor_language
   ADD CONSTRAINT editor_language_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_language
   ADD CONSTRAINT editor_language_fk_language
   FOREIGN KEY (language)
   REFERENCES language(id);

ALTER TABLE editor_oauth_token
   ADD CONSTRAINT editor_oauth_token_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_oauth_token
   ADD CONSTRAINT editor_oauth_token_fk_application
   FOREIGN KEY (application)
   REFERENCES application(id);

ALTER TABLE editor_preference
   ADD CONSTRAINT editor_preference_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_subscribe_artist
   ADD CONSTRAINT editor_subscribe_artist_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_subscribe_artist
   ADD CONSTRAINT editor_subscribe_artist_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id);

ALTER TABLE editor_subscribe_artist
   ADD CONSTRAINT editor_subscribe_artist_fk_last_edit_sent
   FOREIGN KEY (last_edit_sent)
   REFERENCES edit(id);

ALTER TABLE editor_subscribe_artist_deleted
   ADD CONSTRAINT editor_subscribe_artist_deleted_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_subscribe_artist_deleted
   ADD CONSTRAINT editor_subscribe_artist_deleted_fk_gid
   FOREIGN KEY (gid)
   REFERENCES deleted_entity(gid);

ALTER TABLE editor_subscribe_artist_deleted
   ADD CONSTRAINT editor_subscribe_artist_deleted_fk_deleted_by
   FOREIGN KEY (deleted_by)
   REFERENCES edit(id);

ALTER TABLE editor_subscribe_collection
   ADD CONSTRAINT editor_subscribe_collection_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_subscribe_editor
   ADD CONSTRAINT editor_subscribe_editor_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_subscribe_editor
   ADD CONSTRAINT editor_subscribe_editor_fk_subscribed_editor
   FOREIGN KEY (subscribed_editor)
   REFERENCES editor(id);

ALTER TABLE editor_subscribe_label
   ADD CONSTRAINT editor_subscribe_label_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_subscribe_label
   ADD CONSTRAINT editor_subscribe_label_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE editor_subscribe_label
   ADD CONSTRAINT editor_subscribe_label_fk_last_edit_sent
   FOREIGN KEY (last_edit_sent)
   REFERENCES edit(id);

ALTER TABLE editor_subscribe_label_deleted
   ADD CONSTRAINT editor_subscribe_label_deleted_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_subscribe_label_deleted
   ADD CONSTRAINT editor_subscribe_label_deleted_fk_gid
   FOREIGN KEY (gid)
   REFERENCES deleted_entity(gid);

ALTER TABLE editor_subscribe_label_deleted
   ADD CONSTRAINT editor_subscribe_label_deleted_fk_deleted_by
   FOREIGN KEY (deleted_by)
   REFERENCES edit(id);

ALTER TABLE editor_subscribe_series
   ADD CONSTRAINT editor_subscribe_series_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_subscribe_series
   ADD CONSTRAINT editor_subscribe_series_fk_series
   FOREIGN KEY (series)
   REFERENCES series(id);

ALTER TABLE editor_subscribe_series
   ADD CONSTRAINT editor_subscribe_series_fk_last_edit_sent
   FOREIGN KEY (last_edit_sent)
   REFERENCES edit(id);

ALTER TABLE editor_subscribe_series_deleted
   ADD CONSTRAINT editor_subscribe_series_deleted_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE editor_subscribe_series_deleted
   ADD CONSTRAINT editor_subscribe_series_deleted_fk_gid
   FOREIGN KEY (gid)
   REFERENCES deleted_entity(gid);

ALTER TABLE editor_subscribe_series_deleted
   ADD CONSTRAINT editor_subscribe_series_deleted_fk_deleted_by
   FOREIGN KEY (deleted_by)
   REFERENCES edit(id);

ALTER TABLE editor_watch_artist
   ADD CONSTRAINT editor_watch_artist_fk_artist
   FOREIGN KEY (artist)
   REFERENCES artist(id)
   ON DELETE CASCADE;

ALTER TABLE editor_watch_artist
   ADD CONSTRAINT editor_watch_artist_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id)
   ON DELETE CASCADE;

ALTER TABLE editor_watch_preferences
   ADD CONSTRAINT editor_watch_preferences_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id)
   ON DELETE CASCADE;

ALTER TABLE editor_watch_release_group_type
   ADD CONSTRAINT editor_watch_release_group_type_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id)
   ON DELETE CASCADE;

ALTER TABLE editor_watch_release_group_type
   ADD CONSTRAINT editor_watch_release_group_type_fk_release_group_type
   FOREIGN KEY (release_group_type)
   REFERENCES release_group_primary_type(id);

ALTER TABLE editor_watch_release_status
   ADD CONSTRAINT editor_watch_release_status_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id)
   ON DELETE CASCADE;

ALTER TABLE editor_watch_release_status
   ADD CONSTRAINT editor_watch_release_status_fk_release_status
   FOREIGN KEY (release_status)
   REFERENCES release_status(id);

ALTER TABLE event
   ADD CONSTRAINT event_fk_type
   FOREIGN KEY (type)
   REFERENCES event_type(id);

ALTER TABLE event_alias
   ADD CONSTRAINT event_alias_fk_event
   FOREIGN KEY (event)
   REFERENCES event(id);

ALTER TABLE event_alias
   ADD CONSTRAINT event_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES event_alias_type(id);

ALTER TABLE event_alias_type
   ADD CONSTRAINT event_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES event_alias_type(id);

ALTER TABLE event_annotation
   ADD CONSTRAINT event_annotation_fk_event
   FOREIGN KEY (event)
   REFERENCES event(id);

ALTER TABLE event_annotation
   ADD CONSTRAINT event_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE event_attribute
   ADD CONSTRAINT event_attribute_fk_event
   FOREIGN KEY (event)
   REFERENCES event(id);

ALTER TABLE event_attribute
   ADD CONSTRAINT event_attribute_fk_event_attribute_type
   FOREIGN KEY (event_attribute_type)
   REFERENCES event_attribute_type(id);

ALTER TABLE event_attribute
   ADD CONSTRAINT event_attribute_fk_event_attribute_type_allowed_value
   FOREIGN KEY (event_attribute_type_allowed_value)
   REFERENCES event_attribute_type_allowed_value(id);

ALTER TABLE event_attribute_type
   ADD CONSTRAINT event_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES event_attribute_type(id);

ALTER TABLE event_attribute_type_allowed_value
   ADD CONSTRAINT event_attribute_type_allowed_value_fk_event_attribute_type
   FOREIGN KEY (event_attribute_type)
   REFERENCES event_attribute_type(id);

ALTER TABLE event_attribute_type_allowed_value
   ADD CONSTRAINT event_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES event_attribute_type_allowed_value(id);

ALTER TABLE event_gid_redirect
   ADD CONSTRAINT event_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES event(id);

ALTER TABLE event_meta
   ADD CONSTRAINT event_meta_fk_id
   FOREIGN KEY (id)
   REFERENCES event(id)
   ON DELETE CASCADE;

ALTER TABLE event_rating_raw
   ADD CONSTRAINT event_rating_raw_fk_event
   FOREIGN KEY (event)
   REFERENCES event(id);

ALTER TABLE event_rating_raw
   ADD CONSTRAINT event_rating_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE event_tag
   ADD CONSTRAINT event_tag_fk_event
   FOREIGN KEY (event)
   REFERENCES event(id);

ALTER TABLE event_tag
   ADD CONSTRAINT event_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE event_tag_raw
   ADD CONSTRAINT event_tag_raw_fk_event
   FOREIGN KEY (event)
   REFERENCES event(id);

ALTER TABLE event_tag_raw
   ADD CONSTRAINT event_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE event_tag_raw
   ADD CONSTRAINT event_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE event_type
   ADD CONSTRAINT event_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES event_type(id);

ALTER TABLE gender
   ADD CONSTRAINT gender_fk_parent
   FOREIGN KEY (parent)
   REFERENCES gender(id);

ALTER TABLE instrument
   ADD CONSTRAINT instrument_fk_type
   FOREIGN KEY (type)
   REFERENCES instrument_type(id);

ALTER TABLE instrument_alias
   ADD CONSTRAINT instrument_alias_fk_instrument
   FOREIGN KEY (instrument)
   REFERENCES instrument(id);

ALTER TABLE instrument_alias
   ADD CONSTRAINT instrument_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES instrument_alias_type(id);

ALTER TABLE instrument_alias_type
   ADD CONSTRAINT instrument_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES instrument_alias_type(id);

ALTER TABLE instrument_annotation
   ADD CONSTRAINT instrument_annotation_fk_instrument
   FOREIGN KEY (instrument)
   REFERENCES instrument(id);

ALTER TABLE instrument_annotation
   ADD CONSTRAINT instrument_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE instrument_attribute
   ADD CONSTRAINT instrument_attribute_fk_instrument
   FOREIGN KEY (instrument)
   REFERENCES instrument(id);

ALTER TABLE instrument_attribute
   ADD CONSTRAINT instrument_attribute_fk_instrument_attribute_type
   FOREIGN KEY (instrument_attribute_type)
   REFERENCES instrument_attribute_type(id);

ALTER TABLE instrument_attribute
   ADD CONSTRAINT instrument_attribute_fk_instrument_attribute_type_allowed_value
   FOREIGN KEY (instrument_attribute_type_allowed_value)
   REFERENCES instrument_attribute_type_allowed_value(id);

ALTER TABLE instrument_attribute_type
   ADD CONSTRAINT instrument_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES instrument_attribute_type(id);

ALTER TABLE instrument_attribute_type_allowed_value
   ADD CONSTRAINT instrument_attribute_type_allowed_value_fk_instrument_attribute_type
   FOREIGN KEY (instrument_attribute_type)
   REFERENCES instrument_attribute_type(id);

ALTER TABLE instrument_attribute_type_allowed_value
   ADD CONSTRAINT instrument_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES instrument_attribute_type_allowed_value(id);

ALTER TABLE instrument_gid_redirect
   ADD CONSTRAINT instrument_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES instrument(id);

ALTER TABLE instrument_tag
   ADD CONSTRAINT instrument_tag_fk_instrument
   FOREIGN KEY (instrument)
   REFERENCES instrument(id);

ALTER TABLE instrument_tag
   ADD CONSTRAINT instrument_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE instrument_tag_raw
   ADD CONSTRAINT instrument_tag_raw_fk_instrument
   FOREIGN KEY (instrument)
   REFERENCES instrument(id);

ALTER TABLE instrument_tag_raw
   ADD CONSTRAINT instrument_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE instrument_tag_raw
   ADD CONSTRAINT instrument_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE instrument_type
   ADD CONSTRAINT instrument_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES instrument_type(id);

ALTER TABLE iso_3166_1
   ADD CONSTRAINT iso_3166_1_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE iso_3166_2
   ADD CONSTRAINT iso_3166_2_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE iso_3166_3
   ADD CONSTRAINT iso_3166_3_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE isrc
   ADD CONSTRAINT isrc_fk_recording
   FOREIGN KEY (recording)
   REFERENCES recording(id);

ALTER TABLE iswc
   ADD CONSTRAINT iswc_fk_work
   FOREIGN KEY (work)
   REFERENCES work(id);

ALTER TABLE l_area_area
   ADD CONSTRAINT l_area_area_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_area
   ADD CONSTRAINT l_area_area_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_area
   ADD CONSTRAINT l_area_area_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES area(id);

ALTER TABLE l_area_artist
   ADD CONSTRAINT l_area_artist_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_artist
   ADD CONSTRAINT l_area_artist_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_artist
   ADD CONSTRAINT l_area_artist_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES artist(id);

ALTER TABLE l_area_event
   ADD CONSTRAINT l_area_event_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_event
   ADD CONSTRAINT l_area_event_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_event
   ADD CONSTRAINT l_area_event_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES event(id);

ALTER TABLE l_area_instrument
   ADD CONSTRAINT l_area_instrument_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_instrument
   ADD CONSTRAINT l_area_instrument_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_instrument
   ADD CONSTRAINT l_area_instrument_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES instrument(id);

ALTER TABLE l_area_label
   ADD CONSTRAINT l_area_label_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_label
   ADD CONSTRAINT l_area_label_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_label
   ADD CONSTRAINT l_area_label_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES label(id);

ALTER TABLE l_area_place
   ADD CONSTRAINT l_area_place_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_place
   ADD CONSTRAINT l_area_place_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_place
   ADD CONSTRAINT l_area_place_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES place(id);

ALTER TABLE l_area_recording
   ADD CONSTRAINT l_area_recording_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_recording
   ADD CONSTRAINT l_area_recording_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_recording
   ADD CONSTRAINT l_area_recording_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES recording(id);

ALTER TABLE l_area_release
   ADD CONSTRAINT l_area_release_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_release
   ADD CONSTRAINT l_area_release_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_release
   ADD CONSTRAINT l_area_release_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release(id);

ALTER TABLE l_area_release_group
   ADD CONSTRAINT l_area_release_group_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_release_group
   ADD CONSTRAINT l_area_release_group_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_release_group
   ADD CONSTRAINT l_area_release_group_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release_group(id);

ALTER TABLE l_area_series
   ADD CONSTRAINT l_area_series_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_series
   ADD CONSTRAINT l_area_series_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_series
   ADD CONSTRAINT l_area_series_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES series(id);

ALTER TABLE l_area_url
   ADD CONSTRAINT l_area_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_url
   ADD CONSTRAINT l_area_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_url
   ADD CONSTRAINT l_area_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_area_work
   ADD CONSTRAINT l_area_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_area_work
   ADD CONSTRAINT l_area_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES area(id);

ALTER TABLE l_area_work
   ADD CONSTRAINT l_area_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_artist_artist
   ADD CONSTRAINT l_artist_artist_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_artist
   ADD CONSTRAINT l_artist_artist_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_artist
   ADD CONSTRAINT l_artist_artist_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES artist(id);

ALTER TABLE l_artist_event
   ADD CONSTRAINT l_artist_event_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_event
   ADD CONSTRAINT l_artist_event_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_event
   ADD CONSTRAINT l_artist_event_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES event(id);

ALTER TABLE l_artist_instrument
   ADD CONSTRAINT l_artist_instrument_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_instrument
   ADD CONSTRAINT l_artist_instrument_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_instrument
   ADD CONSTRAINT l_artist_instrument_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES instrument(id);

ALTER TABLE l_artist_label
   ADD CONSTRAINT l_artist_label_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_label
   ADD CONSTRAINT l_artist_label_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_label
   ADD CONSTRAINT l_artist_label_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES label(id);

ALTER TABLE l_artist_place
   ADD CONSTRAINT l_artist_place_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_place
   ADD CONSTRAINT l_artist_place_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_place
   ADD CONSTRAINT l_artist_place_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES place(id);

ALTER TABLE l_artist_recording
   ADD CONSTRAINT l_artist_recording_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_recording
   ADD CONSTRAINT l_artist_recording_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_recording
   ADD CONSTRAINT l_artist_recording_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES recording(id);

ALTER TABLE l_artist_release
   ADD CONSTRAINT l_artist_release_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_release
   ADD CONSTRAINT l_artist_release_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_release
   ADD CONSTRAINT l_artist_release_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release(id);

ALTER TABLE l_artist_release_group
   ADD CONSTRAINT l_artist_release_group_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_release_group
   ADD CONSTRAINT l_artist_release_group_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_release_group
   ADD CONSTRAINT l_artist_release_group_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release_group(id);

ALTER TABLE l_artist_series
   ADD CONSTRAINT l_artist_series_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_series
   ADD CONSTRAINT l_artist_series_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_series
   ADD CONSTRAINT l_artist_series_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES series(id);

ALTER TABLE l_artist_url
   ADD CONSTRAINT l_artist_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_url
   ADD CONSTRAINT l_artist_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_url
   ADD CONSTRAINT l_artist_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_artist_work
   ADD CONSTRAINT l_artist_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_artist_work
   ADD CONSTRAINT l_artist_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES artist(id);

ALTER TABLE l_artist_work
   ADD CONSTRAINT l_artist_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_event_event
   ADD CONSTRAINT l_event_event_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_event_event
   ADD CONSTRAINT l_event_event_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES event(id);

ALTER TABLE l_event_event
   ADD CONSTRAINT l_event_event_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES event(id);

ALTER TABLE l_event_instrument
   ADD CONSTRAINT l_event_instrument_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_event_instrument
   ADD CONSTRAINT l_event_instrument_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES event(id);

ALTER TABLE l_event_instrument
   ADD CONSTRAINT l_event_instrument_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES instrument(id);

ALTER TABLE l_event_label
   ADD CONSTRAINT l_event_label_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_event_label
   ADD CONSTRAINT l_event_label_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES event(id);

ALTER TABLE l_event_label
   ADD CONSTRAINT l_event_label_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES label(id);

ALTER TABLE l_event_place
   ADD CONSTRAINT l_event_place_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_event_place
   ADD CONSTRAINT l_event_place_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES event(id);

ALTER TABLE l_event_place
   ADD CONSTRAINT l_event_place_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES place(id);

ALTER TABLE l_event_recording
   ADD CONSTRAINT l_event_recording_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_event_recording
   ADD CONSTRAINT l_event_recording_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES event(id);

ALTER TABLE l_event_recording
   ADD CONSTRAINT l_event_recording_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES recording(id);

ALTER TABLE l_event_release
   ADD CONSTRAINT l_event_release_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_event_release
   ADD CONSTRAINT l_event_release_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES event(id);

ALTER TABLE l_event_release
   ADD CONSTRAINT l_event_release_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release(id);

ALTER TABLE l_event_release_group
   ADD CONSTRAINT l_event_release_group_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_event_release_group
   ADD CONSTRAINT l_event_release_group_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES event(id);

ALTER TABLE l_event_release_group
   ADD CONSTRAINT l_event_release_group_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release_group(id);

ALTER TABLE l_event_series
   ADD CONSTRAINT l_event_series_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_event_series
   ADD CONSTRAINT l_event_series_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES event(id);

ALTER TABLE l_event_series
   ADD CONSTRAINT l_event_series_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES series(id);

ALTER TABLE l_event_url
   ADD CONSTRAINT l_event_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_event_url
   ADD CONSTRAINT l_event_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES event(id);

ALTER TABLE l_event_url
   ADD CONSTRAINT l_event_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_event_work
   ADD CONSTRAINT l_event_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_event_work
   ADD CONSTRAINT l_event_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES event(id);

ALTER TABLE l_event_work
   ADD CONSTRAINT l_event_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_instrument_instrument
   ADD CONSTRAINT l_instrument_instrument_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_instrument_instrument
   ADD CONSTRAINT l_instrument_instrument_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES instrument(id);

ALTER TABLE l_instrument_instrument
   ADD CONSTRAINT l_instrument_instrument_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES instrument(id);

ALTER TABLE l_instrument_label
   ADD CONSTRAINT l_instrument_label_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_instrument_label
   ADD CONSTRAINT l_instrument_label_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES instrument(id);

ALTER TABLE l_instrument_label
   ADD CONSTRAINT l_instrument_label_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES label(id);

ALTER TABLE l_instrument_place
   ADD CONSTRAINT l_instrument_place_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_instrument_place
   ADD CONSTRAINT l_instrument_place_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES instrument(id);

ALTER TABLE l_instrument_place
   ADD CONSTRAINT l_instrument_place_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES place(id);

ALTER TABLE l_instrument_recording
   ADD CONSTRAINT l_instrument_recording_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_instrument_recording
   ADD CONSTRAINT l_instrument_recording_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES instrument(id);

ALTER TABLE l_instrument_recording
   ADD CONSTRAINT l_instrument_recording_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES recording(id);

ALTER TABLE l_instrument_release
   ADD CONSTRAINT l_instrument_release_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_instrument_release
   ADD CONSTRAINT l_instrument_release_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES instrument(id);

ALTER TABLE l_instrument_release
   ADD CONSTRAINT l_instrument_release_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release(id);

ALTER TABLE l_instrument_release_group
   ADD CONSTRAINT l_instrument_release_group_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_instrument_release_group
   ADD CONSTRAINT l_instrument_release_group_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES instrument(id);

ALTER TABLE l_instrument_release_group
   ADD CONSTRAINT l_instrument_release_group_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release_group(id);

ALTER TABLE l_instrument_series
   ADD CONSTRAINT l_instrument_series_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_instrument_series
   ADD CONSTRAINT l_instrument_series_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES instrument(id);

ALTER TABLE l_instrument_series
   ADD CONSTRAINT l_instrument_series_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES series(id);

ALTER TABLE l_instrument_url
   ADD CONSTRAINT l_instrument_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_instrument_url
   ADD CONSTRAINT l_instrument_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES instrument(id);

ALTER TABLE l_instrument_url
   ADD CONSTRAINT l_instrument_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_instrument_work
   ADD CONSTRAINT l_instrument_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_instrument_work
   ADD CONSTRAINT l_instrument_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES instrument(id);

ALTER TABLE l_instrument_work
   ADD CONSTRAINT l_instrument_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_label_label
   ADD CONSTRAINT l_label_label_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_label_label
   ADD CONSTRAINT l_label_label_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES label(id);

ALTER TABLE l_label_label
   ADD CONSTRAINT l_label_label_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES label(id);

ALTER TABLE l_label_place
   ADD CONSTRAINT l_label_place_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_label_place
   ADD CONSTRAINT l_label_place_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES label(id);

ALTER TABLE l_label_place
   ADD CONSTRAINT l_label_place_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES place(id);

ALTER TABLE l_label_recording
   ADD CONSTRAINT l_label_recording_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_label_recording
   ADD CONSTRAINT l_label_recording_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES label(id);

ALTER TABLE l_label_recording
   ADD CONSTRAINT l_label_recording_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES recording(id);

ALTER TABLE l_label_release
   ADD CONSTRAINT l_label_release_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_label_release
   ADD CONSTRAINT l_label_release_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES label(id);

ALTER TABLE l_label_release
   ADD CONSTRAINT l_label_release_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release(id);

ALTER TABLE l_label_release_group
   ADD CONSTRAINT l_label_release_group_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_label_release_group
   ADD CONSTRAINT l_label_release_group_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES label(id);

ALTER TABLE l_label_release_group
   ADD CONSTRAINT l_label_release_group_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release_group(id);

ALTER TABLE l_label_series
   ADD CONSTRAINT l_label_series_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_label_series
   ADD CONSTRAINT l_label_series_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES label(id);

ALTER TABLE l_label_series
   ADD CONSTRAINT l_label_series_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES series(id);

ALTER TABLE l_label_url
   ADD CONSTRAINT l_label_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_label_url
   ADD CONSTRAINT l_label_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES label(id);

ALTER TABLE l_label_url
   ADD CONSTRAINT l_label_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_label_work
   ADD CONSTRAINT l_label_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_label_work
   ADD CONSTRAINT l_label_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES label(id);

ALTER TABLE l_label_work
   ADD CONSTRAINT l_label_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_place_place
   ADD CONSTRAINT l_place_place_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_place_place
   ADD CONSTRAINT l_place_place_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES place(id);

ALTER TABLE l_place_place
   ADD CONSTRAINT l_place_place_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES place(id);

ALTER TABLE l_place_recording
   ADD CONSTRAINT l_place_recording_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_place_recording
   ADD CONSTRAINT l_place_recording_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES place(id);

ALTER TABLE l_place_recording
   ADD CONSTRAINT l_place_recording_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES recording(id);

ALTER TABLE l_place_release
   ADD CONSTRAINT l_place_release_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_place_release
   ADD CONSTRAINT l_place_release_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES place(id);

ALTER TABLE l_place_release
   ADD CONSTRAINT l_place_release_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release(id);

ALTER TABLE l_place_release_group
   ADD CONSTRAINT l_place_release_group_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_place_release_group
   ADD CONSTRAINT l_place_release_group_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES place(id);

ALTER TABLE l_place_release_group
   ADD CONSTRAINT l_place_release_group_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release_group(id);

ALTER TABLE l_place_series
   ADD CONSTRAINT l_place_series_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_place_series
   ADD CONSTRAINT l_place_series_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES place(id);

ALTER TABLE l_place_series
   ADD CONSTRAINT l_place_series_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES series(id);

ALTER TABLE l_place_url
   ADD CONSTRAINT l_place_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_place_url
   ADD CONSTRAINT l_place_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES place(id);

ALTER TABLE l_place_url
   ADD CONSTRAINT l_place_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_place_work
   ADD CONSTRAINT l_place_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_place_work
   ADD CONSTRAINT l_place_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES place(id);

ALTER TABLE l_place_work
   ADD CONSTRAINT l_place_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_recording_recording
   ADD CONSTRAINT l_recording_recording_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_recording_recording
   ADD CONSTRAINT l_recording_recording_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES recording(id);

ALTER TABLE l_recording_recording
   ADD CONSTRAINT l_recording_recording_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES recording(id);

ALTER TABLE l_recording_release
   ADD CONSTRAINT l_recording_release_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_recording_release
   ADD CONSTRAINT l_recording_release_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES recording(id);

ALTER TABLE l_recording_release
   ADD CONSTRAINT l_recording_release_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release(id);

ALTER TABLE l_recording_release_group
   ADD CONSTRAINT l_recording_release_group_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_recording_release_group
   ADD CONSTRAINT l_recording_release_group_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES recording(id);

ALTER TABLE l_recording_release_group
   ADD CONSTRAINT l_recording_release_group_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release_group(id);

ALTER TABLE l_recording_series
   ADD CONSTRAINT l_recording_series_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_recording_series
   ADD CONSTRAINT l_recording_series_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES recording(id);

ALTER TABLE l_recording_series
   ADD CONSTRAINT l_recording_series_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES series(id);

ALTER TABLE l_recording_url
   ADD CONSTRAINT l_recording_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_recording_url
   ADD CONSTRAINT l_recording_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES recording(id);

ALTER TABLE l_recording_url
   ADD CONSTRAINT l_recording_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_recording_work
   ADD CONSTRAINT l_recording_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_recording_work
   ADD CONSTRAINT l_recording_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES recording(id);

ALTER TABLE l_recording_work
   ADD CONSTRAINT l_recording_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_release_group_release_group
   ADD CONSTRAINT l_release_group_release_group_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_release_group_release_group
   ADD CONSTRAINT l_release_group_release_group_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES release_group(id);

ALTER TABLE l_release_group_release_group
   ADD CONSTRAINT l_release_group_release_group_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release_group(id);

ALTER TABLE l_release_group_series
   ADD CONSTRAINT l_release_group_series_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_release_group_series
   ADD CONSTRAINT l_release_group_series_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES release_group(id);

ALTER TABLE l_release_group_series
   ADD CONSTRAINT l_release_group_series_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES series(id);

ALTER TABLE l_release_group_url
   ADD CONSTRAINT l_release_group_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_release_group_url
   ADD CONSTRAINT l_release_group_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES release_group(id);

ALTER TABLE l_release_group_url
   ADD CONSTRAINT l_release_group_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_release_group_work
   ADD CONSTRAINT l_release_group_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_release_group_work
   ADD CONSTRAINT l_release_group_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES release_group(id);

ALTER TABLE l_release_group_work
   ADD CONSTRAINT l_release_group_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_release_release
   ADD CONSTRAINT l_release_release_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_release_release
   ADD CONSTRAINT l_release_release_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES release(id);

ALTER TABLE l_release_release
   ADD CONSTRAINT l_release_release_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release(id);

ALTER TABLE l_release_release_group
   ADD CONSTRAINT l_release_release_group_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_release_release_group
   ADD CONSTRAINT l_release_release_group_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES release(id);

ALTER TABLE l_release_release_group
   ADD CONSTRAINT l_release_release_group_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES release_group(id);

ALTER TABLE l_release_series
   ADD CONSTRAINT l_release_series_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_release_series
   ADD CONSTRAINT l_release_series_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES release(id);

ALTER TABLE l_release_series
   ADD CONSTRAINT l_release_series_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES series(id);

ALTER TABLE l_release_url
   ADD CONSTRAINT l_release_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_release_url
   ADD CONSTRAINT l_release_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES release(id);

ALTER TABLE l_release_url
   ADD CONSTRAINT l_release_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_release_work
   ADD CONSTRAINT l_release_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_release_work
   ADD CONSTRAINT l_release_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES release(id);

ALTER TABLE l_release_work
   ADD CONSTRAINT l_release_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_series_series
   ADD CONSTRAINT l_series_series_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_series_series
   ADD CONSTRAINT l_series_series_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES series(id);

ALTER TABLE l_series_series
   ADD CONSTRAINT l_series_series_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES series(id);

ALTER TABLE l_series_url
   ADD CONSTRAINT l_series_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_series_url
   ADD CONSTRAINT l_series_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES series(id);

ALTER TABLE l_series_url
   ADD CONSTRAINT l_series_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_series_work
   ADD CONSTRAINT l_series_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_series_work
   ADD CONSTRAINT l_series_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES series(id);

ALTER TABLE l_series_work
   ADD CONSTRAINT l_series_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_url_url
   ADD CONSTRAINT l_url_url_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_url_url
   ADD CONSTRAINT l_url_url_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES url(id);

ALTER TABLE l_url_url
   ADD CONSTRAINT l_url_url_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES url(id);

ALTER TABLE l_url_work
   ADD CONSTRAINT l_url_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_url_work
   ADD CONSTRAINT l_url_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES url(id);

ALTER TABLE l_url_work
   ADD CONSTRAINT l_url_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE l_work_work
   ADD CONSTRAINT l_work_work_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE l_work_work
   ADD CONSTRAINT l_work_work_fk_entity0
   FOREIGN KEY (entity0)
   REFERENCES work(id);

ALTER TABLE l_work_work
   ADD CONSTRAINT l_work_work_fk_entity1
   FOREIGN KEY (entity1)
   REFERENCES work(id);

ALTER TABLE label
   ADD CONSTRAINT label_fk_type
   FOREIGN KEY (type)
   REFERENCES label_type(id);

ALTER TABLE label
   ADD CONSTRAINT label_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE label_alias
   ADD CONSTRAINT label_alias_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE label_alias
   ADD CONSTRAINT label_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES label_alias_type(id);

ALTER TABLE label_alias_type
   ADD CONSTRAINT label_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES label_alias_type(id);

ALTER TABLE label_annotation
   ADD CONSTRAINT label_annotation_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE label_annotation
   ADD CONSTRAINT label_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE label_attribute
   ADD CONSTRAINT label_attribute_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE label_attribute
   ADD CONSTRAINT label_attribute_fk_label_attribute_type
   FOREIGN KEY (label_attribute_type)
   REFERENCES label_attribute_type(id);

ALTER TABLE label_attribute
   ADD CONSTRAINT label_attribute_fk_label_attribute_type_allowed_value
   FOREIGN KEY (label_attribute_type_allowed_value)
   REFERENCES label_attribute_type_allowed_value(id);

ALTER TABLE label_attribute_type
   ADD CONSTRAINT label_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES label_attribute_type(id);

ALTER TABLE label_attribute_type_allowed_value
   ADD CONSTRAINT label_attribute_type_allowed_value_fk_label_attribute_type
   FOREIGN KEY (label_attribute_type)
   REFERENCES label_attribute_type(id);

ALTER TABLE label_attribute_type_allowed_value
   ADD CONSTRAINT label_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES label_attribute_type_allowed_value(id);

ALTER TABLE label_gid_redirect
   ADD CONSTRAINT label_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES label(id);

ALTER TABLE label_ipi
   ADD CONSTRAINT label_ipi_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE label_isni
   ADD CONSTRAINT label_isni_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE label_meta
   ADD CONSTRAINT label_meta_fk_id
   FOREIGN KEY (id)
   REFERENCES label(id)
   ON DELETE CASCADE;

ALTER TABLE label_rating_raw
   ADD CONSTRAINT label_rating_raw_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE label_rating_raw
   ADD CONSTRAINT label_rating_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE label_tag
   ADD CONSTRAINT label_tag_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE label_tag
   ADD CONSTRAINT label_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE label_tag_raw
   ADD CONSTRAINT label_tag_raw_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE label_tag_raw
   ADD CONSTRAINT label_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE label_tag_raw
   ADD CONSTRAINT label_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE label_type
   ADD CONSTRAINT label_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES label_type(id);

ALTER TABLE link
   ADD CONSTRAINT link_fk_link_type
   FOREIGN KEY (link_type)
   REFERENCES link_type(id);

ALTER TABLE link_attribute
   ADD CONSTRAINT link_attribute_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE link_attribute
   ADD CONSTRAINT link_attribute_fk_attribute_type
   FOREIGN KEY (attribute_type)
   REFERENCES link_attribute_type(id);

ALTER TABLE link_attribute_credit
   ADD CONSTRAINT link_attribute_credit_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE link_attribute_credit
   ADD CONSTRAINT link_attribute_credit_fk_attribute_type
   FOREIGN KEY (attribute_type)
   REFERENCES link_creditable_attribute_type(attribute_type);

ALTER TABLE link_attribute_text_value
   ADD CONSTRAINT link_attribute_text_value_fk_link
   FOREIGN KEY (link)
   REFERENCES link(id);

ALTER TABLE link_attribute_text_value
   ADD CONSTRAINT link_attribute_text_value_fk_attribute_type
   FOREIGN KEY (attribute_type)
   REFERENCES link_text_attribute_type(attribute_type);

ALTER TABLE link_attribute_type
   ADD CONSTRAINT link_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES link_attribute_type(id);

ALTER TABLE link_attribute_type
   ADD CONSTRAINT link_attribute_type_fk_root
   FOREIGN KEY (root)
   REFERENCES link_attribute_type(id);

ALTER TABLE link_creditable_attribute_type
   ADD CONSTRAINT link_creditable_attribute_type_fk_attribute_type
   FOREIGN KEY (attribute_type)
   REFERENCES link_attribute_type(id)
   ON DELETE CASCADE;

ALTER TABLE link_text_attribute_type
   ADD CONSTRAINT link_text_attribute_type_fk_attribute_type
   FOREIGN KEY (attribute_type)
   REFERENCES link_attribute_type(id)
   ON DELETE CASCADE;

ALTER TABLE link_type
   ADD CONSTRAINT link_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES link_type(id);

ALTER TABLE link_type_attribute_type
   ADD CONSTRAINT link_type_attribute_type_fk_link_type
   FOREIGN KEY (link_type)
   REFERENCES link_type(id);

ALTER TABLE link_type_attribute_type
   ADD CONSTRAINT link_type_attribute_type_fk_attribute_type
   FOREIGN KEY (attribute_type)
   REFERENCES link_attribute_type(id);

ALTER TABLE medium
   ADD CONSTRAINT medium_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE medium
   ADD CONSTRAINT medium_fk_format
   FOREIGN KEY (format)
   REFERENCES medium_format(id);

ALTER TABLE medium_attribute
   ADD CONSTRAINT medium_attribute_fk_medium
   FOREIGN KEY (medium)
   REFERENCES medium(id);

ALTER TABLE medium_attribute
   ADD CONSTRAINT medium_attribute_fk_medium_attribute_type
   FOREIGN KEY (medium_attribute_type)
   REFERENCES medium_attribute_type(id);

ALTER TABLE medium_attribute
   ADD CONSTRAINT medium_attribute_fk_medium_attribute_type_allowed_value
   FOREIGN KEY (medium_attribute_type_allowed_value)
   REFERENCES medium_attribute_type_allowed_value(id);

ALTER TABLE medium_attribute_type
   ADD CONSTRAINT medium_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES medium_attribute_type(id);

ALTER TABLE medium_attribute_type_allowed_format
   ADD CONSTRAINT medium_attribute_type_allowed_format_fk_medium_format
   FOREIGN KEY (medium_format)
   REFERENCES medium_format(id);

ALTER TABLE medium_attribute_type_allowed_format
   ADD CONSTRAINT medium_attribute_type_allowed_format_fk_medium_attribute_type
   FOREIGN KEY (medium_attribute_type)
   REFERENCES medium_attribute_type(id);

ALTER TABLE medium_attribute_type_allowed_value
   ADD CONSTRAINT medium_attribute_type_allowed_value_fk_medium_attribute_type
   FOREIGN KEY (medium_attribute_type)
   REFERENCES medium_attribute_type(id);

ALTER TABLE medium_attribute_type_allowed_value
   ADD CONSTRAINT medium_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES medium_attribute_type_allowed_value(id);

ALTER TABLE medium_attribute_type_allowed_value_allowed_format
   ADD CONSTRAINT medium_attribute_type_allowed_value_allowed_format_fk_medium_format
   FOREIGN KEY (medium_format)
   REFERENCES medium_format(id);

ALTER TABLE medium_attribute_type_allowed_value_allowed_format
   ADD CONSTRAINT medium_attribute_type_allowed_value_allowed_format_fk_medium_attribute_type_allowed_value
   FOREIGN KEY (medium_attribute_type_allowed_value)
   REFERENCES medium_attribute_type_allowed_value(id);

ALTER TABLE medium_cdtoc
   ADD CONSTRAINT medium_cdtoc_fk_medium
   FOREIGN KEY (medium)
   REFERENCES medium(id);

ALTER TABLE medium_cdtoc
   ADD CONSTRAINT medium_cdtoc_fk_cdtoc
   FOREIGN KEY (cdtoc)
   REFERENCES cdtoc(id);

ALTER TABLE medium_format
   ADD CONSTRAINT medium_format_fk_parent
   FOREIGN KEY (parent)
   REFERENCES medium_format(id);

ALTER TABLE medium_index
   ADD CONSTRAINT medium_index_fk_medium
   FOREIGN KEY (medium)
   REFERENCES medium(id)
   ON DELETE CASCADE;

ALTER TABLE orderable_link_type
   ADD CONSTRAINT orderable_link_type_fk_link_type
   FOREIGN KEY (link_type)
   REFERENCES link_type(id);

ALTER TABLE place
   ADD CONSTRAINT place_fk_type
   FOREIGN KEY (type)
   REFERENCES place_type(id);

ALTER TABLE place
   ADD CONSTRAINT place_fk_area
   FOREIGN KEY (area)
   REFERENCES area(id);

ALTER TABLE place_alias
   ADD CONSTRAINT place_alias_fk_place
   FOREIGN KEY (place)
   REFERENCES place(id);

ALTER TABLE place_alias
   ADD CONSTRAINT place_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES place_alias_type(id);

ALTER TABLE place_alias_type
   ADD CONSTRAINT place_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES place_alias_type(id);

ALTER TABLE place_annotation
   ADD CONSTRAINT place_annotation_fk_place
   FOREIGN KEY (place)
   REFERENCES place(id);

ALTER TABLE place_annotation
   ADD CONSTRAINT place_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE place_attribute
   ADD CONSTRAINT place_attribute_fk_place
   FOREIGN KEY (place)
   REFERENCES place(id);

ALTER TABLE place_attribute
   ADD CONSTRAINT place_attribute_fk_place_attribute_type
   FOREIGN KEY (place_attribute_type)
   REFERENCES place_attribute_type(id);

ALTER TABLE place_attribute
   ADD CONSTRAINT place_attribute_fk_place_attribute_type_allowed_value
   FOREIGN KEY (place_attribute_type_allowed_value)
   REFERENCES place_attribute_type_allowed_value(id);

ALTER TABLE place_attribute_type
   ADD CONSTRAINT place_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES place_attribute_type(id);

ALTER TABLE place_attribute_type_allowed_value
   ADD CONSTRAINT place_attribute_type_allowed_value_fk_place_attribute_type
   FOREIGN KEY (place_attribute_type)
   REFERENCES place_attribute_type(id);

ALTER TABLE place_attribute_type_allowed_value
   ADD CONSTRAINT place_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES place_attribute_type_allowed_value(id);

ALTER TABLE place_gid_redirect
   ADD CONSTRAINT place_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES place(id);

ALTER TABLE place_tag
   ADD CONSTRAINT place_tag_fk_place
   FOREIGN KEY (place)
   REFERENCES place(id);

ALTER TABLE place_tag
   ADD CONSTRAINT place_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE place_tag_raw
   ADD CONSTRAINT place_tag_raw_fk_place
   FOREIGN KEY (place)
   REFERENCES place(id);

ALTER TABLE place_tag_raw
   ADD CONSTRAINT place_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE place_tag_raw
   ADD CONSTRAINT place_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE place_type
   ADD CONSTRAINT place_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES place_type(id);

ALTER TABLE recording
   ADD CONSTRAINT recording_fk_artist_credit
   FOREIGN KEY (artist_credit)
   REFERENCES artist_credit(id);

ALTER TABLE recording_alias
   ADD CONSTRAINT recording_alias_fk_recording
   FOREIGN KEY (recording)
   REFERENCES recording(id);

ALTER TABLE recording_alias
   ADD CONSTRAINT recording_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES recording_alias_type(id);

ALTER TABLE recording_alias_type
   ADD CONSTRAINT recording_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES recording_alias_type(id);

ALTER TABLE recording_annotation
   ADD CONSTRAINT recording_annotation_fk_recording
   FOREIGN KEY (recording)
   REFERENCES recording(id);

ALTER TABLE recording_annotation
   ADD CONSTRAINT recording_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE recording_attribute
   ADD CONSTRAINT recording_attribute_fk_recording
   FOREIGN KEY (recording)
   REFERENCES recording(id);

ALTER TABLE recording_attribute
   ADD CONSTRAINT recording_attribute_fk_recording_attribute_type
   FOREIGN KEY (recording_attribute_type)
   REFERENCES recording_attribute_type(id);

ALTER TABLE recording_attribute
   ADD CONSTRAINT recording_attribute_fk_recording_attribute_type_allowed_value
   FOREIGN KEY (recording_attribute_type_allowed_value)
   REFERENCES recording_attribute_type_allowed_value(id);

ALTER TABLE recording_attribute_type
   ADD CONSTRAINT recording_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES recording_attribute_type(id);

ALTER TABLE recording_attribute_type_allowed_value
   ADD CONSTRAINT recording_attribute_type_allowed_value_fk_recording_attribute_type
   FOREIGN KEY (recording_attribute_type)
   REFERENCES recording_attribute_type(id);

ALTER TABLE recording_attribute_type_allowed_value
   ADD CONSTRAINT recording_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES recording_attribute_type_allowed_value(id);

ALTER TABLE recording_gid_redirect
   ADD CONSTRAINT recording_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES recording(id);

ALTER TABLE recording_meta
   ADD CONSTRAINT recording_meta_fk_id
   FOREIGN KEY (id)
   REFERENCES recording(id)
   ON DELETE CASCADE;

ALTER TABLE recording_rating_raw
   ADD CONSTRAINT recording_rating_raw_fk_recording
   FOREIGN KEY (recording)
   REFERENCES recording(id);

ALTER TABLE recording_rating_raw
   ADD CONSTRAINT recording_rating_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE recording_tag
   ADD CONSTRAINT recording_tag_fk_recording
   FOREIGN KEY (recording)
   REFERENCES recording(id);

ALTER TABLE recording_tag
   ADD CONSTRAINT recording_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE recording_tag_raw
   ADD CONSTRAINT recording_tag_raw_fk_recording
   FOREIGN KEY (recording)
   REFERENCES recording(id);

ALTER TABLE recording_tag_raw
   ADD CONSTRAINT recording_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE recording_tag_raw
   ADD CONSTRAINT recording_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE release
   ADD CONSTRAINT release_fk_artist_credit
   FOREIGN KEY (artist_credit)
   REFERENCES artist_credit(id);

ALTER TABLE release
   ADD CONSTRAINT release_fk_release_group
   FOREIGN KEY (release_group)
   REFERENCES release_group(id);

ALTER TABLE release
   ADD CONSTRAINT release_fk_status
   FOREIGN KEY (status)
   REFERENCES release_status(id);

ALTER TABLE release
   ADD CONSTRAINT release_fk_packaging
   FOREIGN KEY (packaging)
   REFERENCES release_packaging(id);

ALTER TABLE release
   ADD CONSTRAINT release_fk_language
   FOREIGN KEY (language)
   REFERENCES language(id);

ALTER TABLE release
   ADD CONSTRAINT release_fk_script
   FOREIGN KEY (script)
   REFERENCES script(id);

ALTER TABLE release_alias
   ADD CONSTRAINT release_alias_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE release_alias
   ADD CONSTRAINT release_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES release_alias_type(id);

ALTER TABLE release_alias_type
   ADD CONSTRAINT release_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES release_alias_type(id);

ALTER TABLE release_annotation
   ADD CONSTRAINT release_annotation_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE release_annotation
   ADD CONSTRAINT release_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE release_attribute
   ADD CONSTRAINT release_attribute_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE release_attribute
   ADD CONSTRAINT release_attribute_fk_release_attribute_type
   FOREIGN KEY (release_attribute_type)
   REFERENCES release_attribute_type(id);

ALTER TABLE release_attribute
   ADD CONSTRAINT release_attribute_fk_release_attribute_type_allowed_value
   FOREIGN KEY (release_attribute_type_allowed_value)
   REFERENCES release_attribute_type_allowed_value(id);

ALTER TABLE release_attribute_type
   ADD CONSTRAINT release_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES release_attribute_type(id);

ALTER TABLE release_attribute_type_allowed_value
   ADD CONSTRAINT release_attribute_type_allowed_value_fk_release_attribute_type
   FOREIGN KEY (release_attribute_type)
   REFERENCES release_attribute_type(id);

ALTER TABLE release_attribute_type_allowed_value
   ADD CONSTRAINT release_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES release_attribute_type_allowed_value(id);

ALTER TABLE release_country
   ADD CONSTRAINT release_country_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE release_country
   ADD CONSTRAINT release_country_fk_country
   FOREIGN KEY (country)
   REFERENCES country_area(area);

ALTER TABLE release_coverart
   ADD CONSTRAINT release_coverart_fk_id
   FOREIGN KEY (id)
   REFERENCES release(id)
   ON DELETE CASCADE;

ALTER TABLE release_gid_redirect
   ADD CONSTRAINT release_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES release(id);

ALTER TABLE release_group
   ADD CONSTRAINT release_group_fk_artist_credit
   FOREIGN KEY (artist_credit)
   REFERENCES artist_credit(id);

ALTER TABLE release_group
   ADD CONSTRAINT release_group_fk_type
   FOREIGN KEY (type)
   REFERENCES release_group_primary_type(id);

ALTER TABLE release_group_alias
   ADD CONSTRAINT release_group_alias_fk_release_group
   FOREIGN KEY (release_group)
   REFERENCES release_group(id);

ALTER TABLE release_group_alias
   ADD CONSTRAINT release_group_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES release_group_alias_type(id);

ALTER TABLE release_group_alias_type
   ADD CONSTRAINT release_group_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES release_group_alias_type(id);

ALTER TABLE release_group_annotation
   ADD CONSTRAINT release_group_annotation_fk_release_group
   FOREIGN KEY (release_group)
   REFERENCES release_group(id);

ALTER TABLE release_group_annotation
   ADD CONSTRAINT release_group_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE release_group_attribute
   ADD CONSTRAINT release_group_attribute_fk_release_group
   FOREIGN KEY (release_group)
   REFERENCES release_group(id);

ALTER TABLE release_group_attribute
   ADD CONSTRAINT release_group_attribute_fk_release_group_attribute_type
   FOREIGN KEY (release_group_attribute_type)
   REFERENCES release_group_attribute_type(id);

ALTER TABLE release_group_attribute
   ADD CONSTRAINT release_group_attribute_fk_release_group_attribute_type_allowed_value
   FOREIGN KEY (release_group_attribute_type_allowed_value)
   REFERENCES release_group_attribute_type_allowed_value(id);

ALTER TABLE release_group_attribute_type
   ADD CONSTRAINT release_group_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES release_group_attribute_type(id);

ALTER TABLE release_group_attribute_type_allowed_value
   ADD CONSTRAINT release_group_attribute_type_allowed_value_fk_release_group_attribute_type
   FOREIGN KEY (release_group_attribute_type)
   REFERENCES release_group_attribute_type(id);

ALTER TABLE release_group_attribute_type_allowed_value
   ADD CONSTRAINT release_group_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES release_group_attribute_type_allowed_value(id);

ALTER TABLE release_group_gid_redirect
   ADD CONSTRAINT release_group_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES release_group(id);

ALTER TABLE release_group_meta
   ADD CONSTRAINT release_group_meta_fk_id
   FOREIGN KEY (id)
   REFERENCES release_group(id)
   ON DELETE CASCADE;

ALTER TABLE release_group_primary_type
   ADD CONSTRAINT release_group_primary_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES release_group_primary_type(id);

ALTER TABLE release_group_rating_raw
   ADD CONSTRAINT release_group_rating_raw_fk_release_group
   FOREIGN KEY (release_group)
   REFERENCES release_group(id);

ALTER TABLE release_group_rating_raw
   ADD CONSTRAINT release_group_rating_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE release_group_secondary_type
   ADD CONSTRAINT release_group_secondary_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES release_group_secondary_type(id);

ALTER TABLE release_group_secondary_type_join
   ADD CONSTRAINT release_group_secondary_type_join_fk_release_group
   FOREIGN KEY (release_group)
   REFERENCES release_group(id);

ALTER TABLE release_group_secondary_type_join
   ADD CONSTRAINT release_group_secondary_type_join_fk_secondary_type
   FOREIGN KEY (secondary_type)
   REFERENCES release_group_secondary_type(id);

ALTER TABLE release_group_tag
   ADD CONSTRAINT release_group_tag_fk_release_group
   FOREIGN KEY (release_group)
   REFERENCES release_group(id);

ALTER TABLE release_group_tag
   ADD CONSTRAINT release_group_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE release_group_tag_raw
   ADD CONSTRAINT release_group_tag_raw_fk_release_group
   FOREIGN KEY (release_group)
   REFERENCES release_group(id);

ALTER TABLE release_group_tag_raw
   ADD CONSTRAINT release_group_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE release_group_tag_raw
   ADD CONSTRAINT release_group_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE release_label
   ADD CONSTRAINT release_label_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE release_label
   ADD CONSTRAINT release_label_fk_label
   FOREIGN KEY (label)
   REFERENCES label(id);

ALTER TABLE release_meta
   ADD CONSTRAINT release_meta_fk_id
   FOREIGN KEY (id)
   REFERENCES release(id)
   ON DELETE CASCADE;

ALTER TABLE release_packaging
   ADD CONSTRAINT release_packaging_fk_parent
   FOREIGN KEY (parent)
   REFERENCES release_packaging(id);

ALTER TABLE release_status
   ADD CONSTRAINT release_status_fk_parent
   FOREIGN KEY (parent)
   REFERENCES release_status(id);

ALTER TABLE release_tag
   ADD CONSTRAINT release_tag_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE release_tag
   ADD CONSTRAINT release_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE release_tag_raw
   ADD CONSTRAINT release_tag_raw_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE release_tag_raw
   ADD CONSTRAINT release_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE release_tag_raw
   ADD CONSTRAINT release_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE release_unknown_country
   ADD CONSTRAINT release_unknown_country_fk_release
   FOREIGN KEY (release)
   REFERENCES release(id);

ALTER TABLE series
   ADD CONSTRAINT series_fk_type
   FOREIGN KEY (type)
   REFERENCES series_type(id);

ALTER TABLE series
   ADD CONSTRAINT series_fk_ordering_attribute
   FOREIGN KEY (ordering_attribute)
   REFERENCES link_text_attribute_type(attribute_type);

ALTER TABLE series
   ADD CONSTRAINT series_fk_ordering_type
   FOREIGN KEY (ordering_type)
   REFERENCES series_ordering_type(id);

ALTER TABLE series_alias
   ADD CONSTRAINT series_alias_fk_series
   FOREIGN KEY (series)
   REFERENCES series(id);

ALTER TABLE series_alias
   ADD CONSTRAINT series_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES series_alias_type(id);

ALTER TABLE series_alias_type
   ADD CONSTRAINT series_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES series_alias_type(id);

ALTER TABLE series_annotation
   ADD CONSTRAINT series_annotation_fk_series
   FOREIGN KEY (series)
   REFERENCES series(id);

ALTER TABLE series_annotation
   ADD CONSTRAINT series_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE series_attribute
   ADD CONSTRAINT series_attribute_fk_series
   FOREIGN KEY (series)
   REFERENCES series(id);

ALTER TABLE series_attribute
   ADD CONSTRAINT series_attribute_fk_series_attribute_type
   FOREIGN KEY (series_attribute_type)
   REFERENCES series_attribute_type(id);

ALTER TABLE series_attribute
   ADD CONSTRAINT series_attribute_fk_series_attribute_type_allowed_value
   FOREIGN KEY (series_attribute_type_allowed_value)
   REFERENCES series_attribute_type_allowed_value(id);

ALTER TABLE series_attribute_type
   ADD CONSTRAINT series_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES series_attribute_type(id);

ALTER TABLE series_attribute_type_allowed_value
   ADD CONSTRAINT series_attribute_type_allowed_value_fk_series_attribute_type
   FOREIGN KEY (series_attribute_type)
   REFERENCES series_attribute_type(id);

ALTER TABLE series_attribute_type_allowed_value
   ADD CONSTRAINT series_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES series_attribute_type_allowed_value(id);

ALTER TABLE series_gid_redirect
   ADD CONSTRAINT series_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES series(id);

ALTER TABLE series_ordering_type
   ADD CONSTRAINT series_ordering_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES series_ordering_type(id);

ALTER TABLE series_tag
   ADD CONSTRAINT series_tag_fk_series
   FOREIGN KEY (series)
   REFERENCES series(id);

ALTER TABLE series_tag
   ADD CONSTRAINT series_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE series_tag_raw
   ADD CONSTRAINT series_tag_raw_fk_series
   FOREIGN KEY (series)
   REFERENCES series(id);

ALTER TABLE series_tag_raw
   ADD CONSTRAINT series_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE series_tag_raw
   ADD CONSTRAINT series_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE series_type
   ADD CONSTRAINT series_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES series_type(id);

ALTER TABLE tag_relation
   ADD CONSTRAINT tag_relation_fk_tag1
   FOREIGN KEY (tag1)
   REFERENCES tag(id);

ALTER TABLE tag_relation
   ADD CONSTRAINT tag_relation_fk_tag2
   FOREIGN KEY (tag2)
   REFERENCES tag(id);

ALTER TABLE track
   ADD CONSTRAINT track_fk_recording
   FOREIGN KEY (recording)
   REFERENCES recording(id);

ALTER TABLE track
   ADD CONSTRAINT track_fk_medium
   FOREIGN KEY (medium)
   REFERENCES medium(id);

ALTER TABLE track
   ADD CONSTRAINT track_fk_artist_credit
   FOREIGN KEY (artist_credit)
   REFERENCES artist_credit(id);

ALTER TABLE track_gid_redirect
   ADD CONSTRAINT track_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES track(id);

ALTER TABLE track_raw
   ADD CONSTRAINT track_raw_fk_release
   FOREIGN KEY (release)
   REFERENCES release_raw(id);

ALTER TABLE url_gid_redirect
   ADD CONSTRAINT url_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES url(id);

ALTER TABLE vote
   ADD CONSTRAINT vote_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE vote
   ADD CONSTRAINT vote_fk_edit
   FOREIGN KEY (edit)
   REFERENCES edit(id);

ALTER TABLE work
   ADD CONSTRAINT work_fk_type
   FOREIGN KEY (type)
   REFERENCES work_type(id);

ALTER TABLE work_alias
   ADD CONSTRAINT work_alias_fk_work
   FOREIGN KEY (work)
   REFERENCES work(id);

ALTER TABLE work_alias
   ADD CONSTRAINT work_alias_fk_type
   FOREIGN KEY (type)
   REFERENCES work_alias_type(id);

ALTER TABLE work_alias_type
   ADD CONSTRAINT work_alias_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES work_alias_type(id);

ALTER TABLE work_annotation
   ADD CONSTRAINT work_annotation_fk_work
   FOREIGN KEY (work)
   REFERENCES work(id);

ALTER TABLE work_annotation
   ADD CONSTRAINT work_annotation_fk_annotation
   FOREIGN KEY (annotation)
   REFERENCES annotation(id);

ALTER TABLE work_attribute
   ADD CONSTRAINT work_attribute_fk_work
   FOREIGN KEY (work)
   REFERENCES work(id);

ALTER TABLE work_attribute
   ADD CONSTRAINT work_attribute_fk_work_attribute_type
   FOREIGN KEY (work_attribute_type)
   REFERENCES work_attribute_type(id);

ALTER TABLE work_attribute
   ADD CONSTRAINT work_attribute_fk_work_attribute_type_allowed_value
   FOREIGN KEY (work_attribute_type_allowed_value)
   REFERENCES work_attribute_type_allowed_value(id);

ALTER TABLE work_attribute_type
   ADD CONSTRAINT work_attribute_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES work_attribute_type(id);

ALTER TABLE work_attribute_type_allowed_value
   ADD CONSTRAINT work_attribute_type_allowed_value_fk_work_attribute_type
   FOREIGN KEY (work_attribute_type)
   REFERENCES work_attribute_type(id);

ALTER TABLE work_attribute_type_allowed_value
   ADD CONSTRAINT work_attribute_type_allowed_value_fk_parent
   FOREIGN KEY (parent)
   REFERENCES work_attribute_type_allowed_value(id);

ALTER TABLE work_gid_redirect
   ADD CONSTRAINT work_gid_redirect_fk_new_id
   FOREIGN KEY (new_id)
   REFERENCES work(id);

ALTER TABLE work_language
   ADD CONSTRAINT work_language_fk_work
   FOREIGN KEY (work)
   REFERENCES work(id);

ALTER TABLE work_language
   ADD CONSTRAINT work_language_fk_language
   FOREIGN KEY (language)
   REFERENCES language(id);

ALTER TABLE work_meta
   ADD CONSTRAINT work_meta_fk_id
   FOREIGN KEY (id)
   REFERENCES work(id)
   ON DELETE CASCADE;

ALTER TABLE work_rating_raw
   ADD CONSTRAINT work_rating_raw_fk_work
   FOREIGN KEY (work)
   REFERENCES work(id);

ALTER TABLE work_rating_raw
   ADD CONSTRAINT work_rating_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE work_tag
   ADD CONSTRAINT work_tag_fk_work
   FOREIGN KEY (work)
   REFERENCES work(id);

ALTER TABLE work_tag
   ADD CONSTRAINT work_tag_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE work_tag_raw
   ADD CONSTRAINT work_tag_raw_fk_work
   FOREIGN KEY (work)
   REFERENCES work(id);

ALTER TABLE work_tag_raw
   ADD CONSTRAINT work_tag_raw_fk_editor
   FOREIGN KEY (editor)
   REFERENCES editor(id);

ALTER TABLE work_tag_raw
   ADD CONSTRAINT work_tag_raw_fk_tag
   FOREIGN KEY (tag)
   REFERENCES tag(id);

ALTER TABLE work_type
   ADD CONSTRAINT work_type_fk_parent
   FOREIGN KEY (parent)
   REFERENCES work_type(id);

-- Automatically generated, do not edit.
\set ON_ERROR_STOP 1

ALTER TABLE alternative_medium ADD CONSTRAINT alternative_medium_pkey PRIMARY KEY (id);
ALTER TABLE alternative_medium_track ADD CONSTRAINT alternative_medium_track_pkey PRIMARY KEY (alternative_medium, track);
ALTER TABLE alternative_release ADD CONSTRAINT alternative_release_pkey PRIMARY KEY (id);
ALTER TABLE alternative_release_type ADD CONSTRAINT alternative_release_type_pkey PRIMARY KEY (id);
ALTER TABLE alternative_track ADD CONSTRAINT alternative_track_pkey PRIMARY KEY (id);
ALTER TABLE annotation ADD CONSTRAINT annotation_pkey PRIMARY KEY (id);
ALTER TABLE application ADD CONSTRAINT application_pkey PRIMARY KEY (id);
ALTER TABLE area ADD CONSTRAINT area_pkey PRIMARY KEY (id);
ALTER TABLE area_alias ADD CONSTRAINT area_alias_pkey PRIMARY KEY (id);
ALTER TABLE area_alias_type ADD CONSTRAINT area_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE area_annotation ADD CONSTRAINT area_annotation_pkey PRIMARY KEY (area, annotation);
ALTER TABLE area_attribute ADD CONSTRAINT area_attribute_pkey PRIMARY KEY (id);
ALTER TABLE area_attribute_type ADD CONSTRAINT area_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE area_attribute_type_allowed_value ADD CONSTRAINT area_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE area_gid_redirect ADD CONSTRAINT area_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE area_tag ADD CONSTRAINT area_tag_pkey PRIMARY KEY (area, tag);
ALTER TABLE area_tag_raw ADD CONSTRAINT area_tag_raw_pkey PRIMARY KEY (area, editor, tag);
ALTER TABLE area_type ADD CONSTRAINT area_type_pkey PRIMARY KEY (id);
ALTER TABLE artist ADD CONSTRAINT artist_pkey PRIMARY KEY (id);
ALTER TABLE artist_alias ADD CONSTRAINT artist_alias_pkey PRIMARY KEY (id);
ALTER TABLE artist_alias_type ADD CONSTRAINT artist_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE artist_annotation ADD CONSTRAINT artist_annotation_pkey PRIMARY KEY (artist, annotation);
ALTER TABLE artist_attribute ADD CONSTRAINT artist_attribute_pkey PRIMARY KEY (id);
ALTER TABLE artist_attribute_type ADD CONSTRAINT artist_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE artist_attribute_type_allowed_value ADD CONSTRAINT artist_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE artist_credit ADD CONSTRAINT artist_credit_pkey PRIMARY KEY (id);
ALTER TABLE artist_credit_name ADD CONSTRAINT artist_credit_name_pkey PRIMARY KEY (artist_credit, position);
ALTER TABLE artist_gid_redirect ADD CONSTRAINT artist_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE artist_ipi ADD CONSTRAINT artist_ipi_pkey PRIMARY KEY (artist, ipi);
ALTER TABLE artist_isni ADD CONSTRAINT artist_isni_pkey PRIMARY KEY (artist, isni);
ALTER TABLE artist_meta ADD CONSTRAINT artist_meta_pkey PRIMARY KEY (id);
ALTER TABLE artist_rating_raw ADD CONSTRAINT artist_rating_raw_pkey PRIMARY KEY (artist, editor);
ALTER TABLE artist_tag ADD CONSTRAINT artist_tag_pkey PRIMARY KEY (artist, tag);
ALTER TABLE artist_tag_raw ADD CONSTRAINT artist_tag_raw_pkey PRIMARY KEY (artist, editor, tag);
ALTER TABLE artist_type ADD CONSTRAINT artist_type_pkey PRIMARY KEY (id);
ALTER TABLE autoeditor_election ADD CONSTRAINT autoeditor_election_pkey PRIMARY KEY (id);
ALTER TABLE autoeditor_election_vote ADD CONSTRAINT autoeditor_election_vote_pkey PRIMARY KEY (id);
ALTER TABLE cdtoc ADD CONSTRAINT cdtoc_pkey PRIMARY KEY (id);
ALTER TABLE cdtoc_raw ADD CONSTRAINT cdtoc_raw_pkey PRIMARY KEY (id);
ALTER TABLE country_area ADD CONSTRAINT country_area_pkey PRIMARY KEY (area);
ALTER TABLE deleted_entity ADD CONSTRAINT deleted_entity_pkey PRIMARY KEY (gid);
ALTER TABLE edit ADD CONSTRAINT edit_pkey PRIMARY KEY (id);
ALTER TABLE edit_area ADD CONSTRAINT edit_area_pkey PRIMARY KEY (edit, area);
ALTER TABLE edit_artist ADD CONSTRAINT edit_artist_pkey PRIMARY KEY (edit, artist);
ALTER TABLE edit_data ADD CONSTRAINT edit_data_pkey PRIMARY KEY (edit);
ALTER TABLE edit_event ADD CONSTRAINT edit_event_pkey PRIMARY KEY (edit, event);
ALTER TABLE edit_instrument ADD CONSTRAINT edit_instrument_pkey PRIMARY KEY (edit, instrument);
ALTER TABLE edit_label ADD CONSTRAINT edit_label_pkey PRIMARY KEY (edit, label);
ALTER TABLE edit_note ADD CONSTRAINT edit_note_pkey PRIMARY KEY (id);
ALTER TABLE edit_note_recipient ADD CONSTRAINT edit_note_recipient_pkey PRIMARY KEY (recipient, edit_note);
ALTER TABLE edit_place ADD CONSTRAINT edit_place_pkey PRIMARY KEY (edit, place);
ALTER TABLE edit_recording ADD CONSTRAINT edit_recording_pkey PRIMARY KEY (edit, recording);
ALTER TABLE edit_release ADD CONSTRAINT edit_release_pkey PRIMARY KEY (edit, release);
ALTER TABLE edit_release_group ADD CONSTRAINT edit_release_group_pkey PRIMARY KEY (edit, release_group);
ALTER TABLE edit_series ADD CONSTRAINT edit_series_pkey PRIMARY KEY (edit, series);
ALTER TABLE edit_url ADD CONSTRAINT edit_url_pkey PRIMARY KEY (edit, url);
ALTER TABLE edit_work ADD CONSTRAINT edit_work_pkey PRIMARY KEY (edit, work);
ALTER TABLE editor ADD CONSTRAINT editor_pkey PRIMARY KEY (id);
ALTER TABLE editor_collection ADD CONSTRAINT editor_collection_pkey PRIMARY KEY (id);
ALTER TABLE editor_collection_area ADD CONSTRAINT editor_collection_area_pkey PRIMARY KEY (collection, area);
ALTER TABLE editor_collection_artist ADD CONSTRAINT editor_collection_artist_pkey PRIMARY KEY (collection, artist);
ALTER TABLE editor_collection_deleted_entity ADD CONSTRAINT editor_collection_deleted_entity_pkey PRIMARY KEY (collection, gid);
ALTER TABLE editor_collection_event ADD CONSTRAINT editor_collection_event_pkey PRIMARY KEY (collection, event);
ALTER TABLE editor_collection_instrument ADD CONSTRAINT editor_collection_instrument_pkey PRIMARY KEY (collection, instrument);
ALTER TABLE editor_collection_label ADD CONSTRAINT editor_collection_label_pkey PRIMARY KEY (collection, label);
ALTER TABLE editor_collection_place ADD CONSTRAINT editor_collection_place_pkey PRIMARY KEY (collection, place);
ALTER TABLE editor_collection_recording ADD CONSTRAINT editor_collection_recording_pkey PRIMARY KEY (collection, recording);
ALTER TABLE editor_collection_release ADD CONSTRAINT editor_collection_release_pkey PRIMARY KEY (collection, release);
ALTER TABLE editor_collection_release_group ADD CONSTRAINT editor_collection_release_group_pkey PRIMARY KEY (collection, release_group);
ALTER TABLE editor_collection_series ADD CONSTRAINT editor_collection_series_pkey PRIMARY KEY (collection, series);
ALTER TABLE editor_collection_type ADD CONSTRAINT editor_collection_type_pkey PRIMARY KEY (id);
ALTER TABLE editor_collection_work ADD CONSTRAINT editor_collection_work_pkey PRIMARY KEY (collection, work);
ALTER TABLE editor_language ADD CONSTRAINT editor_language_pkey PRIMARY KEY (editor, language);
ALTER TABLE editor_oauth_token ADD CONSTRAINT editor_oauth_token_pkey PRIMARY KEY (id);
ALTER TABLE editor_preference ADD CONSTRAINT editor_preference_pkey PRIMARY KEY (id);
ALTER TABLE editor_subscribe_artist ADD CONSTRAINT editor_subscribe_artist_pkey PRIMARY KEY (id);
ALTER TABLE editor_subscribe_artist_deleted ADD CONSTRAINT editor_subscribe_artist_deleted_pkey PRIMARY KEY (editor, gid);
ALTER TABLE editor_subscribe_collection ADD CONSTRAINT editor_subscribe_collection_pkey PRIMARY KEY (id);
ALTER TABLE editor_subscribe_editor ADD CONSTRAINT editor_subscribe_editor_pkey PRIMARY KEY (id);
ALTER TABLE editor_subscribe_label ADD CONSTRAINT editor_subscribe_label_pkey PRIMARY KEY (id);
ALTER TABLE editor_subscribe_label_deleted ADD CONSTRAINT editor_subscribe_label_deleted_pkey PRIMARY KEY (editor, gid);
ALTER TABLE editor_subscribe_series ADD CONSTRAINT editor_subscribe_series_pkey PRIMARY KEY (id);
ALTER TABLE editor_subscribe_series_deleted ADD CONSTRAINT editor_subscribe_series_deleted_pkey PRIMARY KEY (editor, gid);
ALTER TABLE editor_watch_artist ADD CONSTRAINT editor_watch_artist_pkey PRIMARY KEY (artist, editor);
ALTER TABLE editor_watch_preferences ADD CONSTRAINT editor_watch_preferences_pkey PRIMARY KEY (editor);
ALTER TABLE editor_watch_release_group_type ADD CONSTRAINT editor_watch_release_group_type_pkey PRIMARY KEY (editor, release_group_type);
ALTER TABLE editor_watch_release_status ADD CONSTRAINT editor_watch_release_status_pkey PRIMARY KEY (editor, release_status);
ALTER TABLE event ADD CONSTRAINT event_pkey PRIMARY KEY (id);
ALTER TABLE event_alias ADD CONSTRAINT event_alias_pkey PRIMARY KEY (id);
ALTER TABLE event_alias_type ADD CONSTRAINT event_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE event_annotation ADD CONSTRAINT event_annotation_pkey PRIMARY KEY (event, annotation);
ALTER TABLE event_attribute ADD CONSTRAINT event_attribute_pkey PRIMARY KEY (id);
ALTER TABLE event_attribute_type ADD CONSTRAINT event_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE event_attribute_type_allowed_value ADD CONSTRAINT event_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE event_gid_redirect ADD CONSTRAINT event_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE event_meta ADD CONSTRAINT event_meta_pkey PRIMARY KEY (id);
ALTER TABLE event_rating_raw ADD CONSTRAINT event_rating_raw_pkey PRIMARY KEY (event, editor);
ALTER TABLE event_tag ADD CONSTRAINT event_tag_pkey PRIMARY KEY (event, tag);
ALTER TABLE event_tag_raw ADD CONSTRAINT event_tag_raw_pkey PRIMARY KEY (event, editor, tag);
ALTER TABLE event_type ADD CONSTRAINT event_type_pkey PRIMARY KEY (id);
ALTER TABLE gender ADD CONSTRAINT gender_pkey PRIMARY KEY (id);
ALTER TABLE instrument ADD CONSTRAINT instrument_pkey PRIMARY KEY (id);
ALTER TABLE instrument_alias ADD CONSTRAINT instrument_alias_pkey PRIMARY KEY (id);
ALTER TABLE instrument_alias_type ADD CONSTRAINT instrument_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE instrument_annotation ADD CONSTRAINT instrument_annotation_pkey PRIMARY KEY (instrument, annotation);
ALTER TABLE instrument_attribute ADD CONSTRAINT instrument_attribute_pkey PRIMARY KEY (id);
ALTER TABLE instrument_attribute_type ADD CONSTRAINT instrument_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE instrument_attribute_type_allowed_value ADD CONSTRAINT instrument_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE instrument_gid_redirect ADD CONSTRAINT instrument_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE instrument_tag ADD CONSTRAINT instrument_tag_pkey PRIMARY KEY (instrument, tag);
ALTER TABLE instrument_tag_raw ADD CONSTRAINT instrument_tag_raw_pkey PRIMARY KEY (instrument, editor, tag);
ALTER TABLE instrument_type ADD CONSTRAINT instrument_type_pkey PRIMARY KEY (id);
ALTER TABLE iso_3166_1 ADD CONSTRAINT iso_3166_1_pkey PRIMARY KEY (code);
ALTER TABLE iso_3166_2 ADD CONSTRAINT iso_3166_2_pkey PRIMARY KEY (code);
ALTER TABLE iso_3166_3 ADD CONSTRAINT iso_3166_3_pkey PRIMARY KEY (code);
ALTER TABLE isrc ADD CONSTRAINT isrc_pkey PRIMARY KEY (id);
ALTER TABLE iswc ADD CONSTRAINT iswc_pkey PRIMARY KEY (id);
ALTER TABLE l_area_area ADD CONSTRAINT l_area_area_pkey PRIMARY KEY (id);
ALTER TABLE l_area_artist ADD CONSTRAINT l_area_artist_pkey PRIMARY KEY (id);
ALTER TABLE l_area_event ADD CONSTRAINT l_area_event_pkey PRIMARY KEY (id);
ALTER TABLE l_area_instrument ADD CONSTRAINT l_area_instrument_pkey PRIMARY KEY (id);
ALTER TABLE l_area_label ADD CONSTRAINT l_area_label_pkey PRIMARY KEY (id);
ALTER TABLE l_area_place ADD CONSTRAINT l_area_place_pkey PRIMARY KEY (id);
ALTER TABLE l_area_recording ADD CONSTRAINT l_area_recording_pkey PRIMARY KEY (id);
ALTER TABLE l_area_release ADD CONSTRAINT l_area_release_pkey PRIMARY KEY (id);
ALTER TABLE l_area_release_group ADD CONSTRAINT l_area_release_group_pkey PRIMARY KEY (id);
ALTER TABLE l_area_series ADD CONSTRAINT l_area_series_pkey PRIMARY KEY (id);
ALTER TABLE l_area_url ADD CONSTRAINT l_area_url_pkey PRIMARY KEY (id);
ALTER TABLE l_area_work ADD CONSTRAINT l_area_work_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_artist ADD CONSTRAINT l_artist_artist_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_event ADD CONSTRAINT l_artist_event_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_instrument ADD CONSTRAINT l_artist_instrument_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_label ADD CONSTRAINT l_artist_label_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_place ADD CONSTRAINT l_artist_place_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_recording ADD CONSTRAINT l_artist_recording_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_release ADD CONSTRAINT l_artist_release_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_release_group ADD CONSTRAINT l_artist_release_group_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_series ADD CONSTRAINT l_artist_series_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_url ADD CONSTRAINT l_artist_url_pkey PRIMARY KEY (id);
ALTER TABLE l_artist_work ADD CONSTRAINT l_artist_work_pkey PRIMARY KEY (id);
ALTER TABLE l_event_event ADD CONSTRAINT l_event_event_pkey PRIMARY KEY (id);
ALTER TABLE l_event_instrument ADD CONSTRAINT l_event_instrument_pkey PRIMARY KEY (id);
ALTER TABLE l_event_label ADD CONSTRAINT l_event_label_pkey PRIMARY KEY (id);
ALTER TABLE l_event_place ADD CONSTRAINT l_event_place_pkey PRIMARY KEY (id);
ALTER TABLE l_event_recording ADD CONSTRAINT l_event_recording_pkey PRIMARY KEY (id);
ALTER TABLE l_event_release ADD CONSTRAINT l_event_release_pkey PRIMARY KEY (id);
ALTER TABLE l_event_release_group ADD CONSTRAINT l_event_release_group_pkey PRIMARY KEY (id);
ALTER TABLE l_event_series ADD CONSTRAINT l_event_series_pkey PRIMARY KEY (id);
ALTER TABLE l_event_url ADD CONSTRAINT l_event_url_pkey PRIMARY KEY (id);
ALTER TABLE l_event_work ADD CONSTRAINT l_event_work_pkey PRIMARY KEY (id);
ALTER TABLE l_instrument_instrument ADD CONSTRAINT l_instrument_instrument_pkey PRIMARY KEY (id);
ALTER TABLE l_instrument_label ADD CONSTRAINT l_instrument_label_pkey PRIMARY KEY (id);
ALTER TABLE l_instrument_place ADD CONSTRAINT l_instrument_place_pkey PRIMARY KEY (id);
ALTER TABLE l_instrument_recording ADD CONSTRAINT l_instrument_recording_pkey PRIMARY KEY (id);
ALTER TABLE l_instrument_release ADD CONSTRAINT l_instrument_release_pkey PRIMARY KEY (id);
ALTER TABLE l_instrument_release_group ADD CONSTRAINT l_instrument_release_group_pkey PRIMARY KEY (id);
ALTER TABLE l_instrument_series ADD CONSTRAINT l_instrument_series_pkey PRIMARY KEY (id);
ALTER TABLE l_instrument_url ADD CONSTRAINT l_instrument_url_pkey PRIMARY KEY (id);
ALTER TABLE l_instrument_work ADD CONSTRAINT l_instrument_work_pkey PRIMARY KEY (id);
ALTER TABLE l_label_label ADD CONSTRAINT l_label_label_pkey PRIMARY KEY (id);
ALTER TABLE l_label_place ADD CONSTRAINT l_label_place_pkey PRIMARY KEY (id);
ALTER TABLE l_label_recording ADD CONSTRAINT l_label_recording_pkey PRIMARY KEY (id);
ALTER TABLE l_label_release ADD CONSTRAINT l_label_release_pkey PRIMARY KEY (id);
ALTER TABLE l_label_release_group ADD CONSTRAINT l_label_release_group_pkey PRIMARY KEY (id);
ALTER TABLE l_label_series ADD CONSTRAINT l_label_series_pkey PRIMARY KEY (id);
ALTER TABLE l_label_url ADD CONSTRAINT l_label_url_pkey PRIMARY KEY (id);
ALTER TABLE l_label_work ADD CONSTRAINT l_label_work_pkey PRIMARY KEY (id);
ALTER TABLE l_place_place ADD CONSTRAINT l_place_place_pkey PRIMARY KEY (id);
ALTER TABLE l_place_recording ADD CONSTRAINT l_place_recording_pkey PRIMARY KEY (id);
ALTER TABLE l_place_release ADD CONSTRAINT l_place_release_pkey PRIMARY KEY (id);
ALTER TABLE l_place_release_group ADD CONSTRAINT l_place_release_group_pkey PRIMARY KEY (id);
ALTER TABLE l_place_series ADD CONSTRAINT l_place_series_pkey PRIMARY KEY (id);
ALTER TABLE l_place_url ADD CONSTRAINT l_place_url_pkey PRIMARY KEY (id);
ALTER TABLE l_place_work ADD CONSTRAINT l_place_work_pkey PRIMARY KEY (id);
ALTER TABLE l_recording_recording ADD CONSTRAINT l_recording_recording_pkey PRIMARY KEY (id);
ALTER TABLE l_recording_release ADD CONSTRAINT l_recording_release_pkey PRIMARY KEY (id);
ALTER TABLE l_recording_release_group ADD CONSTRAINT l_recording_release_group_pkey PRIMARY KEY (id);
ALTER TABLE l_recording_series ADD CONSTRAINT l_recording_series_pkey PRIMARY KEY (id);
ALTER TABLE l_recording_url ADD CONSTRAINT l_recording_url_pkey PRIMARY KEY (id);
ALTER TABLE l_recording_work ADD CONSTRAINT l_recording_work_pkey PRIMARY KEY (id);
ALTER TABLE l_release_group_release_group ADD CONSTRAINT l_release_group_release_group_pkey PRIMARY KEY (id);
ALTER TABLE l_release_group_series ADD CONSTRAINT l_release_group_series_pkey PRIMARY KEY (id);
ALTER TABLE l_release_group_url ADD CONSTRAINT l_release_group_url_pkey PRIMARY KEY (id);
ALTER TABLE l_release_group_work ADD CONSTRAINT l_release_group_work_pkey PRIMARY KEY (id);
ALTER TABLE l_release_release ADD CONSTRAINT l_release_release_pkey PRIMARY KEY (id);
ALTER TABLE l_release_release_group ADD CONSTRAINT l_release_release_group_pkey PRIMARY KEY (id);
ALTER TABLE l_release_series ADD CONSTRAINT l_release_series_pkey PRIMARY KEY (id);
ALTER TABLE l_release_url ADD CONSTRAINT l_release_url_pkey PRIMARY KEY (id);
ALTER TABLE l_release_work ADD CONSTRAINT l_release_work_pkey PRIMARY KEY (id);
ALTER TABLE l_series_series ADD CONSTRAINT l_series_series_pkey PRIMARY KEY (id);
ALTER TABLE l_series_url ADD CONSTRAINT l_series_url_pkey PRIMARY KEY (id);
ALTER TABLE l_series_work ADD CONSTRAINT l_series_work_pkey PRIMARY KEY (id);
ALTER TABLE l_url_url ADD CONSTRAINT l_url_url_pkey PRIMARY KEY (id);
ALTER TABLE l_url_work ADD CONSTRAINT l_url_work_pkey PRIMARY KEY (id);
ALTER TABLE l_work_work ADD CONSTRAINT l_work_work_pkey PRIMARY KEY (id);
ALTER TABLE label ADD CONSTRAINT label_pkey PRIMARY KEY (id);
ALTER TABLE label_alias ADD CONSTRAINT label_alias_pkey PRIMARY KEY (id);
ALTER TABLE label_alias_type ADD CONSTRAINT label_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE label_annotation ADD CONSTRAINT label_annotation_pkey PRIMARY KEY (label, annotation);
ALTER TABLE label_attribute ADD CONSTRAINT label_attribute_pkey PRIMARY KEY (id);
ALTER TABLE label_attribute_type ADD CONSTRAINT label_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE label_attribute_type_allowed_value ADD CONSTRAINT label_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE label_gid_redirect ADD CONSTRAINT label_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE label_ipi ADD CONSTRAINT label_ipi_pkey PRIMARY KEY (label, ipi);
ALTER TABLE label_isni ADD CONSTRAINT label_isni_pkey PRIMARY KEY (label, isni);
ALTER TABLE label_meta ADD CONSTRAINT label_meta_pkey PRIMARY KEY (id);
ALTER TABLE label_rating_raw ADD CONSTRAINT label_rating_raw_pkey PRIMARY KEY (label, editor);
ALTER TABLE label_tag ADD CONSTRAINT label_tag_pkey PRIMARY KEY (label, tag);
ALTER TABLE label_tag_raw ADD CONSTRAINT label_tag_raw_pkey PRIMARY KEY (label, editor, tag);
ALTER TABLE label_type ADD CONSTRAINT label_type_pkey PRIMARY KEY (id);
ALTER TABLE language ADD CONSTRAINT language_pkey PRIMARY KEY (id);
ALTER TABLE link ADD CONSTRAINT link_pkey PRIMARY KEY (id);
ALTER TABLE link_attribute ADD CONSTRAINT link_attribute_pkey PRIMARY KEY (link, attribute_type);
ALTER TABLE link_attribute_credit ADD CONSTRAINT link_attribute_credit_pkey PRIMARY KEY (link, attribute_type);
ALTER TABLE link_attribute_text_value ADD CONSTRAINT link_attribute_text_value_pkey PRIMARY KEY (link, attribute_type);
ALTER TABLE link_attribute_type ADD CONSTRAINT link_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE link_creditable_attribute_type ADD CONSTRAINT link_creditable_attribute_type_pkey PRIMARY KEY (attribute_type);
ALTER TABLE link_text_attribute_type ADD CONSTRAINT link_text_attribute_type_pkey PRIMARY KEY (attribute_type);
ALTER TABLE link_type ADD CONSTRAINT link_type_pkey PRIMARY KEY (id);
ALTER TABLE link_type_attribute_type ADD CONSTRAINT link_type_attribute_type_pkey PRIMARY KEY (link_type, attribute_type);
ALTER TABLE medium ADD CONSTRAINT medium_pkey PRIMARY KEY (id);
ALTER TABLE medium_attribute ADD CONSTRAINT medium_attribute_pkey PRIMARY KEY (id);
ALTER TABLE medium_attribute_type ADD CONSTRAINT medium_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE medium_attribute_type_allowed_format ADD CONSTRAINT medium_attribute_type_allowed_format_pkey PRIMARY KEY (medium_format, medium_attribute_type);
ALTER TABLE medium_attribute_type_allowed_value ADD CONSTRAINT medium_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE medium_attribute_type_allowed_value_allowed_format ADD CONSTRAINT medium_attribute_type_allowed_value_allowed_format_pkey PRIMARY KEY (medium_format, medium_attribute_type_allowed_value);
ALTER TABLE medium_cdtoc ADD CONSTRAINT medium_cdtoc_pkey PRIMARY KEY (id);
ALTER TABLE medium_format ADD CONSTRAINT medium_format_pkey PRIMARY KEY (id);
ALTER TABLE medium_index ADD CONSTRAINT medium_index_pkey PRIMARY KEY (medium);
ALTER TABLE orderable_link_type ADD CONSTRAINT orderable_link_type_pkey PRIMARY KEY (link_type);
ALTER TABLE place ADD CONSTRAINT place_pkey PRIMARY KEY (id);
ALTER TABLE place_alias ADD CONSTRAINT place_alias_pkey PRIMARY KEY (id);
ALTER TABLE place_alias_type ADD CONSTRAINT place_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE place_annotation ADD CONSTRAINT place_annotation_pkey PRIMARY KEY (place, annotation);
ALTER TABLE place_attribute ADD CONSTRAINT place_attribute_pkey PRIMARY KEY (id);
ALTER TABLE place_attribute_type ADD CONSTRAINT place_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE place_attribute_type_allowed_value ADD CONSTRAINT place_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE place_gid_redirect ADD CONSTRAINT place_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE place_tag ADD CONSTRAINT place_tag_pkey PRIMARY KEY (place, tag);
ALTER TABLE place_tag_raw ADD CONSTRAINT place_tag_raw_pkey PRIMARY KEY (place, editor, tag);
ALTER TABLE place_type ADD CONSTRAINT place_type_pkey PRIMARY KEY (id);
ALTER TABLE recording ADD CONSTRAINT recording_pkey PRIMARY KEY (id);
ALTER TABLE recording_alias ADD CONSTRAINT recording_alias_pkey PRIMARY KEY (id);
ALTER TABLE recording_alias_type ADD CONSTRAINT recording_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE recording_annotation ADD CONSTRAINT recording_annotation_pkey PRIMARY KEY (recording, annotation);
ALTER TABLE recording_attribute ADD CONSTRAINT recording_attribute_pkey PRIMARY KEY (id);
ALTER TABLE recording_attribute_type ADD CONSTRAINT recording_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE recording_attribute_type_allowed_value ADD CONSTRAINT recording_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE recording_gid_redirect ADD CONSTRAINT recording_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE recording_meta ADD CONSTRAINT recording_meta_pkey PRIMARY KEY (id);
ALTER TABLE recording_rating_raw ADD CONSTRAINT recording_rating_raw_pkey PRIMARY KEY (recording, editor);
ALTER TABLE recording_tag ADD CONSTRAINT recording_tag_pkey PRIMARY KEY (recording, tag);
ALTER TABLE recording_tag_raw ADD CONSTRAINT recording_tag_raw_pkey PRIMARY KEY (recording, editor, tag);
ALTER TABLE release ADD CONSTRAINT release_pkey PRIMARY KEY (id);
ALTER TABLE release_alias ADD CONSTRAINT release_alias_pkey PRIMARY KEY (id);
ALTER TABLE release_alias_type ADD CONSTRAINT release_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE release_annotation ADD CONSTRAINT release_annotation_pkey PRIMARY KEY (release, annotation);
ALTER TABLE release_attribute ADD CONSTRAINT release_attribute_pkey PRIMARY KEY (id);
ALTER TABLE release_attribute_type ADD CONSTRAINT release_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE release_attribute_type_allowed_value ADD CONSTRAINT release_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE release_country ADD CONSTRAINT release_country_pkey PRIMARY KEY (release, country);
ALTER TABLE release_coverart ADD CONSTRAINT release_coverart_pkey PRIMARY KEY (id);
ALTER TABLE release_gid_redirect ADD CONSTRAINT release_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE release_group ADD CONSTRAINT release_group_pkey PRIMARY KEY (id);
ALTER TABLE release_group_alias ADD CONSTRAINT release_group_alias_pkey PRIMARY KEY (id);
ALTER TABLE release_group_alias_type ADD CONSTRAINT release_group_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE release_group_annotation ADD CONSTRAINT release_group_annotation_pkey PRIMARY KEY (release_group, annotation);
ALTER TABLE release_group_attribute ADD CONSTRAINT release_group_attribute_pkey PRIMARY KEY (id);
ALTER TABLE release_group_attribute_type ADD CONSTRAINT release_group_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE release_group_attribute_type_allowed_value ADD CONSTRAINT release_group_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE release_group_gid_redirect ADD CONSTRAINT release_group_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE release_group_meta ADD CONSTRAINT release_group_meta_pkey PRIMARY KEY (id);
ALTER TABLE release_group_primary_type ADD CONSTRAINT release_group_primary_type_pkey PRIMARY KEY (id);
ALTER TABLE release_group_rating_raw ADD CONSTRAINT release_group_rating_raw_pkey PRIMARY KEY (release_group, editor);
ALTER TABLE release_group_secondary_type ADD CONSTRAINT release_group_secondary_type_pkey PRIMARY KEY (id);
ALTER TABLE release_group_secondary_type_join ADD CONSTRAINT release_group_secondary_type_join_pkey PRIMARY KEY (release_group, secondary_type);
ALTER TABLE release_group_tag ADD CONSTRAINT release_group_tag_pkey PRIMARY KEY (release_group, tag);
ALTER TABLE release_group_tag_raw ADD CONSTRAINT release_group_tag_raw_pkey PRIMARY KEY (release_group, editor, tag);
ALTER TABLE release_label ADD CONSTRAINT release_label_pkey PRIMARY KEY (id);
ALTER TABLE release_meta ADD CONSTRAINT release_meta_pkey PRIMARY KEY (id);
ALTER TABLE release_packaging ADD CONSTRAINT release_packaging_pkey PRIMARY KEY (id);
ALTER TABLE release_raw ADD CONSTRAINT release_raw_pkey PRIMARY KEY (id);
ALTER TABLE release_status ADD CONSTRAINT release_status_pkey PRIMARY KEY (id);
ALTER TABLE release_tag ADD CONSTRAINT release_tag_pkey PRIMARY KEY (release, tag);
ALTER TABLE release_tag_raw ADD CONSTRAINT release_tag_raw_pkey PRIMARY KEY (release, editor, tag);
ALTER TABLE release_unknown_country ADD CONSTRAINT release_unknown_country_pkey PRIMARY KEY (release);
ALTER TABLE replication_control ADD CONSTRAINT replication_control_pkey PRIMARY KEY (id);
ALTER TABLE script ADD CONSTRAINT script_pkey PRIMARY KEY (id);
ALTER TABLE series ADD CONSTRAINT series_pkey PRIMARY KEY (id);
ALTER TABLE series_alias ADD CONSTRAINT series_alias_pkey PRIMARY KEY (id);
ALTER TABLE series_alias_type ADD CONSTRAINT series_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE series_annotation ADD CONSTRAINT series_annotation_pkey PRIMARY KEY (series, annotation);
ALTER TABLE series_attribute ADD CONSTRAINT series_attribute_pkey PRIMARY KEY (id);
ALTER TABLE series_attribute_type ADD CONSTRAINT series_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE series_attribute_type_allowed_value ADD CONSTRAINT series_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE series_gid_redirect ADD CONSTRAINT series_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE series_ordering_type ADD CONSTRAINT series_ordering_type_pkey PRIMARY KEY (id);
ALTER TABLE series_tag ADD CONSTRAINT series_tag_pkey PRIMARY KEY (series, tag);
ALTER TABLE series_tag_raw ADD CONSTRAINT series_tag_raw_pkey PRIMARY KEY (series, editor, tag);
ALTER TABLE series_type ADD CONSTRAINT series_type_pkey PRIMARY KEY (id);
ALTER TABLE tag ADD CONSTRAINT tag_pkey PRIMARY KEY (id);
ALTER TABLE tag_relation ADD CONSTRAINT tag_relation_pkey PRIMARY KEY (tag1, tag2);
ALTER TABLE track ADD CONSTRAINT track_pkey PRIMARY KEY (id);
ALTER TABLE track_gid_redirect ADD CONSTRAINT track_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE track_raw ADD CONSTRAINT track_raw_pkey PRIMARY KEY (id);
ALTER TABLE url ADD CONSTRAINT url_pkey PRIMARY KEY (id);
ALTER TABLE url_gid_redirect ADD CONSTRAINT url_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE vote ADD CONSTRAINT vote_pkey PRIMARY KEY (id);
ALTER TABLE work ADD CONSTRAINT work_pkey PRIMARY KEY (id);
ALTER TABLE work_alias ADD CONSTRAINT work_alias_pkey PRIMARY KEY (id);
ALTER TABLE work_alias_type ADD CONSTRAINT work_alias_type_pkey PRIMARY KEY (id);
ALTER TABLE work_annotation ADD CONSTRAINT work_annotation_pkey PRIMARY KEY (work, annotation);
ALTER TABLE work_attribute ADD CONSTRAINT work_attribute_pkey PRIMARY KEY (id);
ALTER TABLE work_attribute_type ADD CONSTRAINT work_attribute_type_pkey PRIMARY KEY (id);
ALTER TABLE work_attribute_type_allowed_value ADD CONSTRAINT work_attribute_type_allowed_value_pkey PRIMARY KEY (id);
ALTER TABLE work_gid_redirect ADD CONSTRAINT work_gid_redirect_pkey PRIMARY KEY (gid);
ALTER TABLE work_language ADD CONSTRAINT work_language_pkey PRIMARY KEY (work, language);
ALTER TABLE work_meta ADD CONSTRAINT work_meta_pkey PRIMARY KEY (id);
ALTER TABLE work_rating_raw ADD CONSTRAINT work_rating_raw_pkey PRIMARY KEY (work, editor);
ALTER TABLE work_tag ADD CONSTRAINT work_tag_pkey PRIMARY KEY (work, tag);
ALTER TABLE work_tag_raw ADD CONSTRAINT work_tag_raw_pkey PRIMARY KEY (work, editor, tag);
ALTER TABLE work_type ADD CONSTRAINT work_type_pkey PRIMARY KEY (id);
-- Note: This script has all CREATE TABLE commented that are not part of MusicBrainz' core dump.

\set ON_ERROR_STOP 1
BEGIN;

-- CREATE TABLE alternative_release ( -- replicate
--     id                      SERIAL, -- PK
--     gid                     UUID NOT NULL,
--     release                 INTEGER NOT NULL, -- references release.id
--     name                    VARCHAR,
--     artist_credit           INTEGER, -- references artist_credit.id
--     type                    INTEGER NOT NULL, -- references alternative_release_type.id
--     language                INTEGER NOT NULL, -- references language.id
--     script                  INTEGER NOT NULL, -- references script.id
--     comment                 VARCHAR(255) NOT NULL DEFAULT ''
--     CHECK (name != '')
-- );

CREATE TABLE alternative_release_type ( -- replicate
    id                  SERIAL, -- PK
    name                TEXT NOT NULL,
    parent              INTEGER, -- references alternative_release_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 UUID NOT NULL
);

-- CREATE TABLE alternative_medium ( -- replicate
--     id                      SERIAL, -- PK
--     medium                  INTEGER NOT NULL, -- FK, references medium.id
--     alternative_release     INTEGER NOT NULL, -- references alternative_release.id
--     name                    VARCHAR
--     CHECK (name != '')
-- );
--
-- CREATE TABLE alternative_track ( -- replicate
--     id                      SERIAL, -- PK
--     name                    VARCHAR,
--     artist_credit           INTEGER, -- references artist_credit.id
--     ref_count               INTEGER NOT NULL DEFAULT 0
--     CHECK (name != '' AND (name IS NOT NULL OR artist_credit IS NOT NULL))
-- );
--
-- CREATE TABLE alternative_medium_track ( -- replicate
--     alternative_medium      INTEGER NOT NULL, -- PK, references alternative_medium.id
--     track                   INTEGER NOT NULL, -- PK, references track.id
--     alternative_track       INTEGER NOT NULL -- references alternative_track.id
-- );
--
-- CREATE TABLE annotation ( -- replicate (verbose)
--     id                  SERIAL,
--     editor              INTEGER NOT NULL, -- references editor.id
--     text                TEXT,
--     changelog           VARCHAR(255),
--     created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );
--
-- CREATE TABLE application
-- (
--     id                  SERIAL,
--     owner               INTEGER NOT NULL, -- references editor.id
--     name                TEXT NOT NULL,
--     oauth_id            TEXT NOT NULL,
--     oauth_secret        TEXT NOT NULL,
--     oauth_redirect_uri  TEXT
-- );

CREATE TABLE area_type ( -- replicate
    id                  SERIAL, -- PK
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references area_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE area ( -- replicate (verbose)
    id                  SERIAL, -- PK
    gid                 uuid NOT NULL,
    name                VARCHAR NOT NULL,
    type                INTEGER, -- references area_type.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >=0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
    comment             VARCHAR(255) NOT NULL DEFAULT ''
);

CREATE TABLE area_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references area.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE area_alias_type ( -- replicate
    id                  SERIAL, -- PK,
    name                TEXT NOT NULL,
    parent              INTEGER, -- references area_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE area_alias ( -- replicate (verbose)
    id                  SERIAL, --PK
    area                INTEGER NOT NULL, -- references area.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >=0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references area_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
             CONSTRAINT primary_check
                 CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)));

-- CREATE TABLE area_annotation ( -- replicate (verbose)
--     area        INTEGER NOT NULL, -- PK, references area.id
--     annotation  INTEGER NOT NULL -- PK, references annotation.id
-- );

-- CREATE TABLE area_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references area_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );

-- CREATE TABLE area_attribute_type_allowed_value ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     area_attribute_type INTEGER NOT NULL, -- references area_attribute_type.id
--     value               TEXT,
--     parent              INTEGER, -- references area_attribute_type_allowed_value.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE area_attribute ( -- replicate (verbose)
--     id                                  SERIAL,  -- PK
--     area                                INTEGER NOT NULL, -- references area.id
--     area_attribute_type                 INTEGER NOT NULL, -- references area_attribute_type.id
--     area_attribute_type_allowed_value   INTEGER, -- references area_attribute_type_allowed_value.id
--     area_attribute_text                 TEXT
--     CHECK (
--         (area_attribute_type_allowed_value IS NULL AND area_attribute_text IS NOT NULL)
--         OR
--         (area_attribute_type_allowed_value IS NOT NULL AND area_attribute_text IS NULL)
--     )
-- );
--
-- CREATE TABLE area_tag ( -- replicate (verbose)
--     area                INTEGER NOT NULL, -- PK, references area.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );
--
-- CREATE TABLE area_tag_raw (
--     area                INTEGER NOT NULL, -- PK, references area.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );

CREATE TABLE artist ( -- replicate (verbose)
    id                  SERIAL,
    gid                 UUID NOT NULL,
    name                VARCHAR NOT NULL,
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    type                INTEGER, -- references artist_type.id
    area                INTEGER, -- references area.id
    gender              INTEGER, -- references gender.id
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CONSTRAINT artist_ended_check CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
    begin_area          INTEGER, -- references area.id
    end_area            INTEGER -- references area.id
);

CREATE TABLE artist_alias_type ( -- replicate
    id                  SERIAL,
    name                TEXT NOT NULL,
    parent              INTEGER, -- references artist_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE artist_alias ( -- replicate (verbose)
    id                  SERIAL,
    artist              INTEGER NOT NULL, -- references artist.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references artist_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
    CONSTRAINT primary_check CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)),
    CONSTRAINT search_hints_are_empty
      CHECK (
        (type <> 3) OR (
          type = 3 AND sort_name = name AND
          begin_date_year IS NULL AND begin_date_month IS NULL AND begin_date_day IS NULL AND
          end_date_year IS NULL AND end_date_month IS NULL AND end_date_day IS NULL AND
          primary_for_locale IS FALSE AND locale IS NULL
        )
      )
);

-- CREATE TABLE artist_annotation ( -- replicate (verbose)
--     artist              INTEGER NOT NULL, -- PK, references artist.id
--     annotation          INTEGER NOT NULL -- PK, references annotation.id
-- );
--
-- CREATE TABLE artist_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references artist_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE artist_attribute_type_allowed_value ( -- replicate (verbose)
--     id                          SERIAL,  -- PK
--     artist_attribute_type       INTEGER NOT NULL, -- references artist_attribute_type.id
--     value                       TEXT,
--     parent                      INTEGER, -- references artist_attribute_type_allowed_value.id
--     child_order                 INTEGER NOT NULL DEFAULT 0,
--     description                 TEXT,
--     gid                         uuid NOT NULL
-- );
--
-- CREATE TABLE artist_attribute ( -- replicate (verbose)
--     id                                  SERIAL,  -- PK
--     artist                              INTEGER NOT NULL, -- references artist.id
--     artist_attribute_type               INTEGER NOT NULL, -- references artist_attribute_type.id
--     artist_attribute_type_allowed_value INTEGER, -- references artist_attribute_type_allowed_value.id
--     artist_attribute_text               TEXT
--     CHECK (
--         (artist_attribute_type_allowed_value IS NULL AND artist_attribute_text IS NOT NULL)
--         OR
--         (artist_attribute_type_allowed_value IS NOT NULL AND artist_attribute_text IS NULL)
--     )
-- );

CREATE TABLE artist_ipi ( -- replicate (verbose)
    artist              INTEGER NOT NULL, -- PK, references artist.id
    ipi                 CHAR(11) NOT NULL CHECK (ipi ~ E'^\\d{11}$'), -- PK
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE artist_isni ( -- replicate (verbose)
    artist              INTEGER NOT NULL, -- PK, references artist.id
    isni                CHAR(16) NOT NULL CHECK (isni ~ E'^\\d{15}[\\dX]$'), -- PK
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE artist_meta ( -- replicate
--     id                  INTEGER NOT NULL, -- PK, references artist.id CASCADE
--     rating              SMALLINT CHECK (rating >= 0 AND rating <= 100),
--     rating_count        INTEGER
-- );
--
-- CREATE TABLE artist_tag ( -- replicate (verbose)
--     artist              INTEGER NOT NULL, -- PK, references artist.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );
--
-- CREATE TABLE artist_rating_raw
-- (
--     artist              INTEGER NOT NULL, -- PK, references artist.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     rating              SMALLINT NOT NULL CHECK (rating >= 0 AND rating <= 100)
-- );
--
-- CREATE TABLE artist_tag_raw
-- (
--     artist              INTEGER NOT NULL, -- PK, references artist.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );

CREATE TABLE artist_credit ( -- replicate
    id                  SERIAL,
    name                VARCHAR NOT NULL,
    artist_count        SMALLINT NOT NULL,
    ref_count           INTEGER DEFAULT 0,
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE artist_credit_name ( -- replicate (verbose)
    artist_credit       INTEGER NOT NULL, -- PK, references artist_credit.id CASCADE
    position            SMALLINT NOT NULL, -- PK
    artist              INTEGER NOT NULL, -- references artist.id CASCADE
    name                VARCHAR NOT NULL,
    join_phrase         TEXT NOT NULL DEFAULT ''
);

CREATE TABLE artist_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references artist.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE artist_type ( -- replicate
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references artist_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

-- CREATE TABLE autoeditor_election
-- (
--     id                  SERIAL,
--     candidate           INTEGER NOT NULL, -- references editor.id
--     proposer            INTEGER NOT NULL, -- references editor.id
--     seconder_1          INTEGER, -- references editor.id
--     seconder_2          INTEGER, -- references editor.id
--     status              INTEGER NOT NULL DEFAULT 1
--                             CHECK (status IN (1,2,3,4,5,6)),
--                             -- 1 : has proposer
--                             -- 2 : has seconder_1
--                             -- 3 : has seconder_2 (voting open)
--                             -- 4 : accepted!
--                             -- 5 : rejected
--                             -- 6 : cancelled (by proposer)
--     yes_votes           INTEGER NOT NULL DEFAULT 0,
--     no_votes            INTEGER NOT NULL DEFAULT 0,
--     propose_time        TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
--     open_time           TIMESTAMP WITH TIME ZONE,
--     close_time          TIMESTAMP WITH TIME ZONE
-- );
--
-- CREATE TABLE autoeditor_election_vote
-- (
--     id                  SERIAL,
--     autoeditor_election INTEGER NOT NULL, -- references autoeditor_election.id
--     voter               INTEGER NOT NULL, -- references editor.id
--     vote                INTEGER NOT NULL CHECK (vote IN (-1,0,1)),
--     vote_time           TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
-- );

CREATE TABLE cdtoc ( -- replicate
    id                  SERIAL,
    discid              CHAR(28) NOT NULL,
    freedb_id           CHAR(8) NOT NULL,
    track_count         INTEGER NOT NULL,
    leadout_offset      INTEGER NOT NULL,
    track_offset        INTEGER[] NOT NULL,
    degraded            BOOLEAN NOT NULL DEFAULT FALSE,
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE cdtoc_raw ( -- replicate
--     id                  SERIAL, -- PK
--     release             INTEGER NOT NULL, -- references release_raw.id
--     discid              CHAR(28) NOT NULL,
--     track_count          INTEGER NOT NULL,
--     leadout_offset       INTEGER NOT NULL,
--     track_offset         INTEGER[] NOT NULL
-- );

CREATE TABLE country_area ( -- replicate (verbose)
    area                INTEGER -- PK, references area.id
);

-- CREATE TABLE deleted_entity (
--     gid UUID NOT NULL, -- PK
--     data JSONB NOT NULL,
--     deleted_at timestamptz NOT NULL DEFAULT now()
-- );
--
-- CREATE TABLE edit
-- (
--     id                  SERIAL,
--     editor              INTEGER NOT NULL, -- references editor.id
--     type                SMALLINT NOT NULL,
--     status              SMALLINT NOT NULL,
--     autoedit            SMALLINT NOT NULL DEFAULT 0,
--     open_time            TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     close_time           TIMESTAMP WITH TIME ZONE,
--     expire_time          TIMESTAMP WITH TIME ZONE NOT NULL,
--     language            INTEGER, -- references language.id
--     quality             SMALLINT NOT NULL DEFAULT 1
-- );
--
-- CREATE TABLE edit_data
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     data                JSONB NOT NULL
-- );
--
-- CREATE TABLE edit_note
-- (
--     id                  SERIAL,
--     editor              INTEGER NOT NULL, -- references editor.id
--     edit                INTEGER NOT NULL, -- references edit.id
--     text                TEXT NOT NULL,
--     post_time            TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );
--
-- CREATE TABLE edit_note_recipient (
--     recipient           INTEGER NOT NULL, -- PK, references editor.id
--     edit_note           INTEGER NOT NULL  -- PK, references edit_note.id
-- );
--
-- CREATE TABLE edit_area
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     area                INTEGER NOT NULL  -- PK, references area.id CASCADE
-- );
--
-- CREATE TABLE edit_artist
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     artist              INTEGER NOT NULL, -- PK, references artist.id CASCADE
--     status              SMALLINT NOT NULL -- materialized from edit.status
-- );
--
-- CREATE TABLE edit_event
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     event               INTEGER NOT NULL  -- PK, references event.id CASCADE
-- );
--
-- CREATE TABLE edit_instrument
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     instrument          INTEGER NOT NULL  -- PK, references instrument.id CASCADE
-- );
--
-- CREATE TABLE edit_label
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     label               INTEGER NOT NULL, -- PK, references label.id CASCADE
--     status              SMALLINT NOT NULL -- materialized from edit.status
-- );
--
-- CREATE TABLE edit_place
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     place               INTEGER NOT NULL  -- PK, references place.id CASCADE
-- );
--
-- CREATE TABLE edit_release
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     release             INTEGER NOT NULL  -- PK, references release.id CASCADE
-- );
--
-- CREATE TABLE edit_release_group
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     release_group       INTEGER NOT NULL  -- PK, references release_group.id CASCADE
-- );
--
-- CREATE TABLE edit_recording
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     recording           INTEGER NOT NULL  -- PK, references recording.id CASCADE
-- );
--
-- CREATE TABLE edit_series
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     series              INTEGER NOT NULL  -- PK, references series.id CASCADE
-- );
--
-- CREATE TABLE edit_work
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     work                INTEGER NOT NULL  -- PK, references work.id CASCADE
-- );
--
-- CREATE TABLE edit_url
-- (
--     edit                INTEGER NOT NULL, -- PK, references edit.id
--     url                 INTEGER NOT NULL  -- PK, references url.id CASCADE
-- );

-- CREATE TABLE editor
-- (
--     id                  SERIAL,
--     name                VARCHAR(64) NOT NULL,
--     privs               INTEGER DEFAULT 0,
--     email               VARCHAR(64) DEFAULT NULL,
--     website             VARCHAR(255) DEFAULT NULL,
--     bio                 TEXT DEFAULT NULL,
--     member_since        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     email_confirm_date  TIMESTAMP WITH TIME ZONE,
--     last_login_date     TIMESTAMP WITH TIME ZONE DEFAULT now(),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     birth_date          DATE,
--     gender              INTEGER, -- references gender.id
--     area                INTEGER, -- references area.id
--     password            VARCHAR(128) NOT NULL,
--     ha1                 CHAR(32) NOT NULL,
--     deleted             BOOLEAN NOT NULL DEFAULT FALSE
-- );
--
-- CREATE TABLE old_editor_name (
--     name    VARCHAR(64) NOT NULL
-- );
--
-- CREATE TYPE FLUENCY AS ENUM ('basic', 'intermediate', 'advanced', 'native');
--
-- CREATE TABLE editor_language (
--     editor   INTEGER NOT NULL,  -- PK, references editor.id
--     language INTEGER NOT NULL,  -- PK, references language.id
--     fluency  FLUENCY NOT NULL
-- );
--
-- CREATE TABLE editor_preference
-- (
--     id                  SERIAL,
--     editor              INTEGER NOT NULL, -- references editor.id
--     name                VARCHAR(50) NOT NULL,
--     value               VARCHAR(100) NOT NULL
-- );
--
-- CREATE TABLE editor_subscribe_artist
-- (
--     id                  SERIAL,
--     editor              INTEGER NOT NULL, -- references editor.id
--     artist              INTEGER NOT NULL, -- references artist.id
--     last_edit_sent      INTEGER NOT NULL -- references edit.id
-- );
--
-- CREATE TABLE editor_subscribe_artist_deleted
-- (
--     editor INTEGER NOT NULL, -- PK, references editor.id
--     gid UUID NOT NULL, -- PK, references deleted_entity.gid
--     deleted_by INTEGER NOT NULL -- references edit.id
-- );
--
-- CREATE TABLE editor_subscribe_collection
-- (
--     id                  SERIAL,
--     editor              INTEGER NOT NULL,              -- references editor.id
--     collection          INTEGER NOT NULL,              -- weakly references editor_collection.id
--     last_edit_sent      INTEGER NOT NULL,              -- weakly references edit.id
--     available           BOOLEAN NOT NULL DEFAULT TRUE,
--     last_seen_name      VARCHAR(255)
-- );
--
-- CREATE TABLE editor_subscribe_label
-- (
--     id                  SERIAL,
--     editor              INTEGER NOT NULL, -- references editor.id
--     label               INTEGER NOT NULL, -- references label.id
--     last_edit_sent      INTEGER NOT NULL -- references edit.id
-- );
--
-- CREATE TABLE editor_subscribe_label_deleted
-- (
--     editor INTEGER NOT NULL, -- PK, references editor.id
--     gid UUID NOT NULL, -- PK, references deleted_entity.gid
--     deleted_by INTEGER NOT NULL -- references edit.id
-- );
--
-- CREATE TABLE editor_subscribe_editor
-- (
--     id                  SERIAL,
--     editor              INTEGER NOT NULL, -- references editor.id (the one who has subscribed)
--     subscribed_editor   INTEGER NOT NULL, -- references editor.id (the one being subscribed)
--     last_edit_sent      INTEGER NOT NULL  -- weakly references edit.id
-- );
--
-- CREATE TABLE editor_subscribe_series
-- (
--     id                  SERIAL,
--     editor              INTEGER NOT NULL, -- references editor.id
--     series              INTEGER NOT NULL, -- references series.id
--     last_edit_sent      INTEGER NOT NULL -- references edit.id
-- );
--
-- CREATE TABLE editor_subscribe_series_deleted
-- (
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     gid                 UUID NOT NULL, -- PK, references deleted_entity.gid
--     deleted_by          INTEGER NOT NULL -- references edit.id
-- );

CREATE TABLE event ( -- replicate (verbose)
    id                  SERIAL,
    gid                 UUID NOT NULL,
    name                VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    time                TIME WITHOUT TIME ZONE,
    type                INTEGER, -- references event_type.id
    cancelled           BOOLEAN NOT NULL DEFAULT FALSE,
    setlist             TEXT,
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CONSTRAINT event_ended_check CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      )
);

-- CREATE TABLE event_meta ( -- replicate
--     id                  INTEGER NOT NULL, -- PK, references event.id CASCADE
--     rating              SMALLINT CHECK (rating >= 0 AND rating <= 100),
--     rating_count        INTEGER
-- );
--
-- CREATE TABLE event_rating_raw (
--     event               INTEGER NOT NULL, -- PK, references event.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     rating              SMALLINT NOT NULL CHECK (rating >= 0 AND rating <= 100)
-- );
--
-- CREATE TABLE event_tag_raw (
--     event               INTEGER NOT NULL, -- PK, references event.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );

CREATE TABLE event_alias_type ( -- replicate
    id                  SERIAL,
    name                TEXT NOT NULL,
    parent              INTEGER, -- references event_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE event_alias ( -- replicate (verbose)
    id                  SERIAL,
    event               INTEGER NOT NULL, -- references event.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references event_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
    CONSTRAINT primary_check CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)),
    CONSTRAINT search_hints_are_empty
      CHECK (
        (type <> 2) OR (
          type = 2 AND sort_name = name AND
          begin_date_year IS NULL AND begin_date_month IS NULL AND begin_date_day IS NULL AND
          end_date_year IS NULL AND end_date_month IS NULL AND end_date_day IS NULL AND
          primary_for_locale IS FALSE AND locale IS NULL
        )
      )
);

-- CREATE TABLE event_annotation ( -- replicate (verbose)
--     event               INTEGER NOT NULL, -- PK, references event.id
--     annotation          INTEGER NOT NULL -- PK, references annotation.id
-- );
--
-- CREATE TABLE event_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references event_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE event_attribute_type_allowed_value ( -- replicate (verbose)
--     id                          SERIAL,  -- PK
--     event_attribute_type        INTEGER NOT NULL, -- references event_attribute_type.id
--     value                       TEXT,
--     parent                      INTEGER, -- references event_attribute_type_allowed_value.id
--     child_order                 INTEGER NOT NULL DEFAULT 0,
--     description                 TEXT,
--     gid                         uuid NOT NULL
-- );
--
-- CREATE TABLE event_attribute ( -- replicate (verbose)
--     id                                  SERIAL,  -- PK
--     event                               INTEGER NOT NULL, -- references event.id
--     event_attribute_type                INTEGER NOT NULL, -- references event_attribute_type.id
--     event_attribute_type_allowed_value  INTEGER, -- references event_attribute_type_allowed_value.id
--     event_attribute_text                TEXT
--     CHECK (
--         (event_attribute_type_allowed_value IS NULL AND event_attribute_text IS NOT NULL)
--         OR
--         (event_attribute_type_allowed_value IS NOT NULL AND event_attribute_text IS NULL)
--     )
-- );
--
CREATE TABLE event_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references event.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
--
-- CREATE TABLE event_tag ( -- replicate (verbose)
--     event               INTEGER NOT NULL, -- PK, references event.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );

CREATE TABLE event_type ( -- replicate
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references event_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE gender ( -- replicate
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references gender.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE instrument_type ( -- replicate
    id                  SERIAL, -- PK
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references instrument_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE instrument ( -- replicate (verbose)
    id                  SERIAL, -- PK
    gid                 uuid NOT NULL,
    name                VARCHAR NOT NULL,
    type                INTEGER, -- references instrument_type.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >=0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    description         TEXT NOT NULL DEFAULT ''
);

CREATE TABLE instrument_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references instrument.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE instrument_alias_type ( -- replicate
    id                  SERIAL, -- PK,
    name                TEXT NOT NULL,
    parent              INTEGER, -- references instrument_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE instrument_alias ( -- replicate (verbose)
    id                  SERIAL, --PK
    instrument          INTEGER NOT NULL, -- references instrument.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >=0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references instrument_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
    CONSTRAINT primary_check CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)),
    CONSTRAINT search_hints_are_empty
      CHECK (
        (type <> 2) OR (
          type = 2 AND sort_name = name AND
          begin_date_year IS NULL AND begin_date_month IS NULL AND begin_date_day IS NULL AND
          end_date_year IS NULL AND end_date_month IS NULL AND end_date_day IS NULL AND
          primary_for_locale IS FALSE AND locale IS NULL
        )
      )
);

-- CREATE TABLE instrument_annotation ( -- replicate (verbose)
--     instrument  INTEGER NOT NULL, -- PK, references instrument.id
--     annotation  INTEGER NOT NULL -- PK, references annotation.id
-- );
--
-- CREATE TABLE instrument_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references instrument_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE instrument_attribute_type_allowed_value ( -- replicate (verbose)
--     id                          SERIAL,  -- PK
--     instrument_attribute_type   INTEGER NOT NULL, -- references instrument_attribute_type.id
--     value                       TEXT,
--     parent                      INTEGER, -- references instrument_attribute_type_allowed_value.id
--     child_order                 INTEGER NOT NULL DEFAULT 0,
--     description                 TEXT,
--     gid                         uuid NOT NULL
-- );
--
-- CREATE TABLE instrument_attribute ( -- replicate (verbose)
--     id                                          SERIAL,  -- PK
--     instrument                                  INTEGER NOT NULL, -- references instrument.id
--     instrument_attribute_type                   INTEGER NOT NULL, -- references instrument_attribute_type.id
--     instrument_attribute_type_allowed_value     INTEGER, -- references instrument_attribute_type_allowed_value.id
--     instrument_attribute_text                   TEXT
--     CHECK (
--         (instrument_attribute_type_allowed_value IS NULL AND instrument_attribute_text IS NOT NULL)
--         OR
--         (instrument_attribute_type_allowed_value IS NOT NULL AND instrument_attribute_text IS NULL)
--     )
-- );
--
-- CREATE TABLE instrument_tag ( -- replicate (verbose)
--     instrument          INTEGER NOT NULL, -- PK, references instrument.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );
--
-- CREATE TABLE instrument_tag_raw (
--     instrument          INTEGER NOT NULL, -- PK, references instrument.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );

CREATE TABLE iso_3166_1 ( -- replicate
    area      INTEGER NOT NULL, -- references area.id
    code      CHAR(2) -- PK
);
CREATE TABLE iso_3166_2 ( -- replicate
    area      INTEGER NOT NULL, -- references area.id
    code      VARCHAR(10) -- PK
);
CREATE TABLE iso_3166_3 ( -- replicate
    area      INTEGER NOT NULL, -- references area.id
    code      CHAR(4) -- PK
);

CREATE TABLE isrc ( -- replicate (verbose)
    id                  SERIAL,
    recording           INTEGER NOT NULL, -- references recording.id
    isrc                CHAR(12) NOT NULL CHECK (isrc ~ E'^[A-Z]{2}[A-Z0-9]{3}[0-9]{7}$'),
    source              SMALLINT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE iswc ( -- replicate (verbose)
    id SERIAL NOT NULL,
    work INTEGER NOT NULL, -- references work.id
    iswc CHARACTER(15) CHECK (iswc ~ E'^T-?\\d{3}.?\\d{3}.?\\d{3}[-.]?\\d$'),
    source SMALLINT,
    edits_pending INTEGER NOT NULL DEFAULT 0,
    created TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

CREATE TABLE l_area_area ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references area.id
    entity1             INTEGER NOT NULL, -- references area.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_area_artist ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references area.id
--     entity1             INTEGER NOT NULL, -- references artist.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_area_event ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references area.id
    entity1             INTEGER NOT NULL, -- references event.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_area_instrument ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references area.id
    entity1             INTEGER NOT NULL, -- references instrument.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_area_label ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references area.id
--     entity1             INTEGER NOT NULL, -- references label.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

-- CREATE TABLE l_area_place ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references area.id
--     entity1             INTEGER NOT NULL, -- references place.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_area_recording ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references area.id
    entity1             INTEGER NOT NULL, -- references recording.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_area_release ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references area.id
    entity1             INTEGER NOT NULL, -- references release.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_area_release_group ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references area.id
--     entity1             INTEGER NOT NULL, -- references release_group.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

-- CREATE TABLE l_area_series ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references area.id
--     entity1             INTEGER NOT NULL, -- references series.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_area_url ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references area.id
    entity1             INTEGER NOT NULL, -- references url.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_area_work ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references area.id
    entity1             INTEGER NOT NULL, -- references work.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_artist ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references artist.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_event ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references event.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_instrument ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references instrument.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_label ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references label.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_place ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references place.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_recording ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references recording.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_release ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references release.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_release_group ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references release_group.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_series ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references series.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_url ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references url.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_artist_work ( -- replicate (verbose)
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references artist.id
    entity1             INTEGER NOT NULL, -- references work.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_event_event ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references event.id
    entity1             INTEGER NOT NULL, -- references event.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_event_instrument ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references event.id
--     entity1             INTEGER NOT NULL, -- references instrument.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

-- CREATE TABLE l_event_label ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references event.id
--     entity1             INTEGER NOT NULL, -- references label.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_event_place ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references event.id
    entity1             INTEGER NOT NULL, -- references place.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_event_recording ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references event.id
    entity1             INTEGER NOT NULL, -- references recording.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_event_release ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references event.id
    entity1             INTEGER NOT NULL, -- references release.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_event_release_group ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references event.id
    entity1             INTEGER NOT NULL, -- references release_group.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_event_series ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references event.id
    entity1             INTEGER NOT NULL, -- references series.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_event_url ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references event.id
    entity1             INTEGER NOT NULL, -- references url.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_event_work ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references event.id
    entity1             INTEGER NOT NULL, -- references work.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_label_label ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references label.id
    entity1             INTEGER NOT NULL, -- references label.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_instrument_instrument ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references instrument.id
    entity1             INTEGER NOT NULL, -- references instrument.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_instrument_label ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references instrument.id
    entity1             INTEGER NOT NULL, -- references label.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_instrument_place ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references instrument.id
--     entity1             INTEGER NOT NULL, -- references place.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

-- CREATE TABLE l_instrument_recording ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references instrument.id
--     entity1             INTEGER NOT NULL, -- references recording.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );
--
-- CREATE TABLE l_instrument_release ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references instrument.id
--     entity1             INTEGER NOT NULL, -- references release.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );
--
-- CREATE TABLE l_instrument_release_group ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references instrument.id
--     entity1             INTEGER NOT NULL, -- references release_group.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );
--
-- CREATE TABLE l_instrument_series ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references instrument.id
--     entity1             INTEGER NOT NULL, -- references series.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );
--
CREATE TABLE l_instrument_url ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references instrument.id
    entity1             INTEGER NOT NULL, -- references url.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);
--
-- CREATE TABLE l_instrument_work ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references instrument.id
--     entity1             INTEGER NOT NULL, -- references work.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

-- CREATE TABLE l_label_place ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references label.id
--     entity1             INTEGER NOT NULL, -- references place.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_label_recording ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references label.id
    entity1             INTEGER NOT NULL, -- references recording.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_label_release ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references label.id
    entity1             INTEGER NOT NULL, -- references release.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_label_release_group ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references label.id
--     entity1             INTEGER NOT NULL, -- references release_group.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );
--
-- CREATE TABLE l_label_series ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references label.id
--     entity1             INTEGER NOT NULL, -- references series.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_label_url ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references label.id
    entity1             INTEGER NOT NULL, -- references url.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_label_work ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references label.id
    entity1             INTEGER NOT NULL, -- references work.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_place_place ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references place.id
    entity1             INTEGER NOT NULL, -- references place.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_place_recording ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references place.id
    entity1             INTEGER NOT NULL, -- references recording.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_place_release ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references place.id
    entity1             INTEGER NOT NULL, -- references release.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_place_release_group ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references place.id
--     entity1             INTEGER NOT NULL, -- references release_group.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

-- CREATE TABLE l_place_series ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references place.id
--     entity1             INTEGER NOT NULL, -- references series.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_place_url ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references place.id
    entity1             INTEGER NOT NULL, -- references url.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_place_work ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references place.id
    entity1             INTEGER NOT NULL, -- references work.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_recording_recording ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references recording.id
    entity1             INTEGER NOT NULL, -- references recording.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_recording_release ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references recording.id
    entity1             INTEGER NOT NULL, -- references release.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_recording_release_group ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references recording.id
--     entity1             INTEGER NOT NULL, -- references release_group.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_recording_series ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references recording.id
    entity1             INTEGER NOT NULL, -- references series.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_recording_url ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references recording.id
    entity1             INTEGER NOT NULL, -- references url.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_recording_work ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references recording.id
    entity1             INTEGER NOT NULL, -- references work.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_release_release ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references release.id
    entity1             INTEGER NOT NULL, -- references release.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_release_release_group ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references release.id
--     entity1             INTEGER NOT NULL, -- references release_group.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_release_series ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references release.id
    entity1             INTEGER NOT NULL, -- references series.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_release_url ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references release.id
    entity1             INTEGER NOT NULL, -- references url.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_release_work ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references release.id
--     entity1             INTEGER NOT NULL, -- references work.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_release_group_release_group ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references release_group.id
    entity1             INTEGER NOT NULL, -- references release_group.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_release_group_series ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references release_group.id
    entity1             INTEGER NOT NULL, -- references series.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_release_group_url ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references release_group.id
    entity1             INTEGER NOT NULL, -- references url.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_release_group_work ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references release_group.id
--     entity1             INTEGER NOT NULL, -- references work.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_series_series ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references series.id
    entity1             INTEGER NOT NULL, -- references series.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_series_url ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references series.id
    entity1             INTEGER NOT NULL, -- references url.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_series_work ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references series.id
    entity1             INTEGER NOT NULL, -- references work.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

-- CREATE TABLE l_url_url ( -- replicate
--     id                  SERIAL,
--     link                INTEGER NOT NULL, -- references link.id
--     entity0             INTEGER NOT NULL, -- references url.id
--     entity1             INTEGER NOT NULL, -- references url.id
--     edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
--     entity0_credit      TEXT NOT NULL DEFAULT '',
--     entity1_credit      TEXT NOT NULL DEFAULT ''
-- );

CREATE TABLE l_url_work ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references url.id
    entity1             INTEGER NOT NULL, -- references work.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE l_work_work ( -- replicate
    id                  SERIAL,
    link                INTEGER NOT NULL, -- references link.id
    entity0             INTEGER NOT NULL, -- references work.id
    entity1             INTEGER NOT NULL, -- references work.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    link_order          INTEGER NOT NULL DEFAULT 0 CHECK (link_order >= 0),
    entity0_credit      TEXT NOT NULL DEFAULT '',
    entity1_credit      TEXT NOT NULL DEFAULT ''
);

CREATE TABLE label ( -- replicate (verbose)
    id                  SERIAL,
    gid                 UUID NOT NULL,
    name                VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    label_code          INTEGER CHECK (label_code > 0 AND label_code < 100000),
    type                INTEGER, -- references label_type.id
    area                INTEGER, -- references area.id
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CONSTRAINT label_ended_check CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      )
);

-- CREATE TABLE label_rating_raw
-- (
--     label               INTEGER NOT NULL, -- PK, references label.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     rating              SMALLINT NOT NULL CHECK (rating >= 0 AND rating <= 100)
-- );
--
-- CREATE TABLE label_tag_raw
-- (
--     label               INTEGER NOT NULL, -- PK, references label.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );

CREATE TABLE label_alias_type ( -- replicate
    id                  SERIAL,
    name                TEXT NOT NULL,
    parent              INTEGER, -- references label_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE label_alias ( -- replicate (verbose)
    id                  SERIAL,
    label               INTEGER NOT NULL, -- references label.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references label_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
    CONSTRAINT primary_check CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)),
    CONSTRAINT search_hints_are_empty
      CHECK (
        (type <> 2) OR (
          type = 2 AND sort_name = name AND
          begin_date_year IS NULL AND begin_date_month IS NULL AND begin_date_day IS NULL AND
          end_date_year IS NULL AND end_date_month IS NULL AND end_date_day IS NULL AND
          primary_for_locale IS FALSE AND locale IS NULL
        )
      )
);

-- CREATE TABLE label_annotation ( -- replicate (verbose)
--     label               INTEGER NOT NULL, -- PK, references label.id
--     annotation          INTEGER NOT NULL -- PK, references annotation.id
-- );
--
-- CREATE TABLE label_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references label_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE label_attribute_type_allowed_value ( -- replicate (verbose)
--     id                          SERIAL,  -- PK
--     label_attribute_type        INTEGER NOT NULL, -- references label_attribute_type.id
--     value                       TEXT,
--     parent                      INTEGER, -- references label_attribute_type_allowed_value.id
--     child_order                 INTEGER NOT NULL DEFAULT 0,
--     description                 TEXT,
--     gid                         uuid NOT NULL
-- );
--
-- CREATE TABLE label_attribute ( -- replicate (verbose)
--     id                                  SERIAL,  -- PK
--     label                               INTEGER NOT NULL, -- references label.id
--     label_attribute_type                INTEGER NOT NULL, -- references label_attribute_type.id
--     label_attribute_type_allowed_value  INTEGER, -- references label_attribute_type_allowed_value.id
--     label_attribute_text                TEXT
--     CHECK (
--         (label_attribute_type_allowed_value IS NULL AND label_attribute_text IS NOT NULL)
--         OR
--         (label_attribute_type_allowed_value IS NOT NULL AND label_attribute_text IS NULL)
--     )
-- );

CREATE TABLE label_ipi ( -- replicate (verbose)
    label               INTEGER NOT NULL, -- PK, references label.id
    ipi                 CHAR(11) NOT NULL CHECK (ipi ~ E'^\\d{11}$'), -- PK
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE label_isni ( -- replicate (verbose)
    label               INTEGER NOT NULL, -- PK, references label.id
    isni                CHAR(16) NOT NULL CHECK (isni ~ E'^\\d{15}[\\dX]$'), -- PK
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE label_meta ( -- replicate
--     id                  INTEGER NOT NULL, -- PK, references label.id CASCADE
--     rating              SMALLINT CHECK (rating >= 0 AND rating <= 100),
--     rating_count        INTEGER
-- );

CREATE TABLE label_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references label.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE label_tag ( -- replicate (verbose)
--     label               INTEGER NOT NULL, -- PK, references label.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );

CREATE TABLE label_type ( -- replicate
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references label_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE language ( -- replicate
    id                  SERIAL,
    iso_code_2t         CHAR(3), -- ISO 639-2 (T)
    iso_code_2b         CHAR(3), -- ISO 639-2 (B)
    iso_code_1          CHAR(2), -- ISO 639
    name                VARCHAR(100) NOT NULL,
    frequency           INTEGER NOT NULL DEFAULT 0,
    iso_code_3          CHAR(3)  -- ISO 639-3
);

ALTER TABLE language
      ADD CONSTRAINT iso_code_check
      CHECK (iso_code_2t IS NOT NULL OR iso_code_3  IS NOT NULL);

CREATE TABLE link ( -- replicate
    id                  SERIAL,
    link_type           INTEGER NOT NULL, -- references link_type.id
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    attribute_count     INTEGER NOT NULL DEFAULT 0,
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CONSTRAINT link_ended_check CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      )
);

CREATE TABLE link_attribute ( -- replicate
    link                INTEGER NOT NULL, -- PK, references link.id
    attribute_type      INTEGER NOT NULL, -- PK, references link_attribute_type.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE link_attribute_type ( -- replicate
    id                  SERIAL,
    parent              INTEGER, -- references link_attribute_type.id
    root                INTEGER NOT NULL, -- references link_attribute_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    gid                 UUID NOT NULL,
    name                VARCHAR(255) NOT NULL,
    description         TEXT,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE link_creditable_attribute_type ( -- replicate
  attribute_type INT NOT NULL -- PK, references link_attribute_type.id CASCADE
);

CREATE TABLE link_attribute_credit ( -- replicate
  link INT NOT NULL, -- PK, references link.id
  attribute_type INT NOT NULL, -- PK, references link_creditable_attribute_type.attribute_type
  credited_as TEXT NOT NULL
);

CREATE TABLE link_text_attribute_type ( -- replicate
    attribute_type      INT NOT NULL -- PK, references link_attribute_type.id CASCADE
);

CREATE TABLE link_attribute_text_value ( -- replicate
    link                INT NOT NULL, -- PK, references link.id
    attribute_type      INT NOT NULL, -- PK, references link_text_attribute_type.attribute_type
    text_value          TEXT NOT NULL
);

CREATE TABLE link_type ( -- replicate
    id                  SERIAL,
    parent              INTEGER, -- references link_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    gid                 UUID NOT NULL,
    entity_type0        VARCHAR(50) NOT NULL,
    entity_type1        VARCHAR(50) NOT NULL,
    name                VARCHAR(255) NOT NULL,
    description         TEXT,
    link_phrase         VARCHAR(255) NOT NULL,
    reverse_link_phrase VARCHAR(255) NOT NULL,
    long_link_phrase    VARCHAR(255) NOT NULL,
    priority            INTEGER NOT NULL DEFAULT 0,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    is_deprecated       BOOLEAN NOT NULL DEFAULT false,
    has_dates           BOOLEAN NOT NULL DEFAULT true,
    entity0_cardinality INTEGER NOT NULL DEFAULT 0,
    entity1_cardinality INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE link_type_attribute_type ( -- replicate
    link_type           INTEGER NOT NULL, -- PK, references link_type.id
    attribute_type      INTEGER NOT NULL, -- PK, references link_attribute_type.id
    min                 SMALLINT,
    max                 SMALLINT,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE editor_collection
-- (
--     id                  SERIAL,
--     gid                 UUID NOT NULL,
--     editor              INTEGER NOT NULL, -- references editor.id
--     name                VARCHAR NOT NULL,
--     public              BOOLEAN NOT NULL DEFAULT FALSE,
--     description         TEXT DEFAULT '' NOT NULL,
--     type                INTEGER NOT NULL -- references editor_collection_type.id
-- );

CREATE TABLE editor_collection_type ( -- replicate
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    entity_type         VARCHAR(50) NOT NULL,
    parent              INTEGER, -- references editor_collection_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

-- CREATE TABLE editor_collection_area (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     area INTEGER NOT NULL -- PK, references area.id
-- );
--
-- CREATE TABLE editor_collection_artist (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     artist INTEGER NOT NULL -- PK, references artist.id
-- );
--
-- CREATE TABLE editor_collection_event (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     event INTEGER NOT NULL -- PK, references event.id
-- );
--
-- CREATE TABLE editor_collection_instrument (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     instrument INTEGER NOT NULL -- PK, references instrument.id
-- );
--
-- CREATE TABLE editor_collection_label (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     label INTEGER NOT NULL -- PK, references label.id
-- );
--
-- CREATE TABLE editor_collection_place (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     place INTEGER NOT NULL -- PK, references place.id
-- );
--
-- CREATE TABLE editor_collection_recording (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     recording INTEGER NOT NULL -- PK, references recording.id
-- );
--
-- CREATE TABLE editor_collection_release (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     release INTEGER NOT NULL -- PK, references release.id
-- );
--
-- CREATE TABLE editor_collection_release_group (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     release_group INTEGER NOT NULL -- PK, references release_group.id
-- );
--
-- CREATE TABLE editor_collection_series (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     series INTEGER NOT NULL -- PK, references series.id
-- );
--
-- CREATE TABLE editor_collection_work (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     work INTEGER NOT NULL -- PK, references work.id
-- );
--
-- CREATE TABLE editor_collection_deleted_entity (
--     collection INTEGER NOT NULL, -- PK, references editor_collection.id
--     gid UUID NOT NULL -- PK, references deleted_entity.gid
-- );
--
-- CREATE TABLE editor_oauth_token
-- (
--     id                  SERIAL,
--     editor              INTEGER NOT NULL, -- references editor.id
--     application         INTEGER NOT NULL, -- references application.id
--     authorization_code  TEXT,
--     refresh_token       TEXT,
--     access_token        TEXT,
--     expire_time         TIMESTAMP WITH TIME ZONE NOT NULL,
--     scope               INTEGER NOT NULL DEFAULT 0,
--     granted             TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
-- );
--
-- CREATE TABLE editor_watch_preferences
-- (
--     editor INTEGER NOT NULL, -- PK, references editor.id CASCADE
--     notify_via_email BOOLEAN NOT NULL DEFAULT TRUE,
--     notification_timeframe INTERVAL NOT NULL DEFAULT '1 week',
--     last_checked TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
-- );
--
-- CREATE TABLE editor_watch_artist
-- (
--     artist INTEGER NOT NULL, -- PK, references artist.id CASCADE
--     editor INTEGER NOT NULL  -- PK, references editor.id CASCADE
-- );
--
-- CREATE TABLE editor_watch_release_group_type
-- (
--     editor INTEGER NOT NULL, -- PK, references editor.id CASCADE
--     release_group_type INTEGER NOT NULL -- PK, references release_group_primary_type.id
-- );
--
-- CREATE TABLE editor_watch_release_status
-- (
--     editor INTEGER NOT NULL, -- PK, references editor.id CASCADE
--     release_status INTEGER NOT NULL -- PK, references release_status.id
-- );

CREATE TABLE medium ( -- replicate (verbose)
    id                  SERIAL,
    release             INTEGER NOT NULL, -- references release.id
    position            INTEGER NOT NULL,
    format              INTEGER, -- references medium_format.id
    name                VARCHAR NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    track_count         INTEGER NOT NULL DEFAULT 0
);

-- CREATE TABLE medium_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references medium_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE medium_attribute_type_allowed_format ( -- replicate (verbose)
--     medium_format INTEGER NOT NULL, -- PK, references medium_format.id,
--     medium_attribute_type INTEGER NOT NULL -- PK, references medium_attribute_type.id
-- );
--
-- CREATE TABLE medium_attribute_type_allowed_value ( -- replicate (verbose)
--     id                          SERIAL,  -- PK
--     medium_attribute_type       INTEGER NOT NULL, -- references medium_attribute_type.id
--     value                       TEXT,
--     parent                      INTEGER, -- references medium_attribute_type_allowed_value.id
--     child_order                 INTEGER NOT NULL DEFAULT 0,
--     description                 TEXT,
--     gid                         uuid NOT NULL
-- );
--
-- CREATE TABLE medium_attribute_type_allowed_value_allowed_format ( -- replicate (verbose)
--     medium_format INTEGER NOT NULL, -- PK, references medium_format.id,
--     medium_attribute_type_allowed_value INTEGER NOT NULL -- PK, references medium_attribute_type_allowed_value.id
-- );
--
-- CREATE TABLE medium_attribute ( -- replicate (verbose)
--     id                                  SERIAL,  -- PK
--     medium                              INTEGER NOT NULL, -- references medium.id
--     medium_attribute_type               INTEGER NOT NULL, -- references medium_attribute_type.id
--     medium_attribute_type_allowed_value INTEGER, -- references medium_attribute_type_allowed_value.id
--     medium_attribute_text               TEXT
--     CHECK (
--         (medium_attribute_type_allowed_value IS NULL AND medium_attribute_text IS NOT NULL)
--         OR
--         (medium_attribute_type_allowed_value IS NOT NULL AND medium_attribute_text IS NULL)
--     )
-- );

CREATE TABLE medium_cdtoc ( -- replicate (verbose)
    id                  SERIAL,
    medium              INTEGER NOT NULL, -- references medium.id
    cdtoc               INTEGER NOT NULL, -- references cdtoc.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE medium_format ( -- replicate
    id                  SERIAL,
    name                VARCHAR(100) NOT NULL,
    parent              INTEGER, -- references medium_format.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    year                SMALLINT,
    has_discids         BOOLEAN NOT NULL DEFAULT FALSE,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE orderable_link_type ( -- replicate
    link_type           INTEGER NOT NULL, -- PK, references link_type.id
    direction           SMALLINT NOT NULL DEFAULT 1 CHECK (direction = 1 OR direction = 2)
);

CREATE TABLE place ( -- replicate (verbose)
    id                  SERIAL, -- PK
    gid                 uuid NOT NULL,
    name                VARCHAR NOT NULL,
    type                INTEGER, -- references place_type.id
    address             VARCHAR NOT NULL DEFAULT '',
    area                INTEGER, -- references area.id
    coordinates         POINT,
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >=0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      )
);

CREATE TABLE place_alias ( -- replicate (verbose)
    id                  SERIAL,
    place               INTEGER NOT NULL, -- references place.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references place_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
    CONSTRAINT primary_check CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)),
    CONSTRAINT search_hints_are_empty
      CHECK (
        (type <> 2) OR (
          type = 2 AND sort_name = name AND
          begin_date_year IS NULL AND begin_date_month IS NULL AND begin_date_day IS NULL AND
          end_date_year IS NULL AND end_date_month IS NULL AND end_date_day IS NULL AND
          primary_for_locale IS FALSE AND locale IS NULL
        )
      )
);

CREATE TABLE place_alias_type ( -- replicate
    id                  SERIAL,
    name                TEXT NOT NULL,
    parent              INTEGER, -- references place_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

-- CREATE TABLE place_annotation ( -- replicate (verbose)
--     place               INTEGER NOT NULL, -- PK, references place.id
--     annotation          INTEGER NOT NULL -- PK, references annotation.id
-- );
--
-- CREATE TABLE place_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references place_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE place_attribute_type_allowed_value ( -- replicate (verbose)
--     id                          SERIAL,  -- PK
--     place_attribute_type        INTEGER NOT NULL, -- references place_attribute_type.id
--     value                       TEXT,
--     parent                      INTEGER, -- references place_attribute_type_allowed_value.id
--     child_order                 INTEGER NOT NULL DEFAULT 0,
--     description                 TEXT,
--     gid                         uuid NOT NULL
-- );
--
-- CREATE TABLE place_attribute ( -- replicate (verbose)
--     id                                  SERIAL,  -- PK
--     place                               INTEGER NOT NULL, -- references place.id
--     place_attribute_type                INTEGER NOT NULL, -- references place_attribute_type.id
--     place_attribute_type_allowed_value  INTEGER, -- references place_attribute_type_allowed_value.id
--     place_attribute_text                TEXT
--     CHECK (
--         (place_attribute_type_allowed_value IS NULL AND place_attribute_text IS NOT NULL)
--         OR
--         (place_attribute_type_allowed_value IS NOT NULL AND place_attribute_text IS NULL)
--     )
-- );

CREATE TABLE place_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references place.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE place_tag ( -- replicate (verbose)
--     place               INTEGER NOT NULL, -- PK, references place.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );
--
-- CREATE TABLE place_tag_raw
-- (
--     place               INTEGER NOT NULL, -- PK, references place.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );

CREATE TABLE place_type ( -- replicate
    id                  SERIAL, -- PK
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references place_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE replication_control ( -- replicate
    id                              SERIAL,
    current_schema_sequence         INTEGER NOT NULL,
    current_replication_sequence    INTEGER,
    last_replication_date           TIMESTAMP WITH TIME ZONE
);

CREATE TABLE recording ( -- replicate (verbose)
    id                  SERIAL,
    gid                 UUID NOT NULL,
    name                VARCHAR NOT NULL,
    artist_credit       INTEGER NOT NULL, -- references artist_credit.id
    length              INTEGER CHECK (length IS NULL OR length > 0),
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    video               BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE recording_alias_type ( -- replicate
    id                  SERIAL, -- PK,
    name                TEXT NOT NULL,
    parent              INTEGER, -- references recording_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE recording_alias ( -- replicate (verbose)
    id                  SERIAL, --PK
    recording           INTEGER NOT NULL, -- references recording.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >=0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references recording_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
             CONSTRAINT primary_check
                 CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)));

-- CREATE TABLE recording_rating_raw
-- (
--     recording           INTEGER NOT NULL, -- PK, references recording.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     rating              SMALLINT NOT NULL CHECK (rating >= 0 AND rating <= 100)
-- );
--
-- CREATE TABLE recording_tag_raw
-- (
--     recording           INTEGER NOT NULL, -- PK, references recording.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );
--
-- CREATE TABLE recording_annotation ( -- replicate (verbose)
--     recording           INTEGER NOT NULL, -- PK, references recording.id
--     annotation          INTEGER NOT NULL -- PK, references annotation.id
-- );
--
-- CREATE TABLE recording_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references recording_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE recording_attribute_type_allowed_value ( -- replicate (verbose)
--     id                          SERIAL,  -- PK
--     recording_attribute_type    INTEGER NOT NULL, -- references recording_attribute_type.id
--     value                       TEXT,
--     parent                      INTEGER, -- references recording_attribute_type_allowed_value.id
--     child_order                 INTEGER NOT NULL DEFAULT 0,
--     description                 TEXT,
--     gid                         uuid NOT NULL
-- );
--
-- CREATE TABLE recording_attribute ( -- replicate (verbose)
--     id                                          SERIAL,  -- PK
--     recording                                   INTEGER NOT NULL, -- references recording.id
--     recording_attribute_type                    INTEGER NOT NULL, -- references recording_attribute_type.id
--     recording_attribute_type_allowed_value      INTEGER, -- references recording_attribute_type_allowed_value.id
--     recording_attribute_text                    TEXT
--     CHECK (
--         (recording_attribute_type_allowed_value IS NULL AND recording_attribute_text IS NOT NULL)
--         OR
--         (recording_attribute_type_allowed_value IS NOT NULL AND recording_attribute_text IS NULL)
--     )
-- );
--
-- CREATE TABLE recording_meta ( -- replicate
--     id                  INTEGER NOT NULL, -- PK, references recording.id CASCADE
--     rating              SMALLINT CHECK (rating >= 0 AND rating <= 100),
--     rating_count        INTEGER
-- );

CREATE TABLE recording_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references recording.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE recording_tag ( -- replicate (verbose)
--     recording           INTEGER NOT NULL, -- PK, references recording.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );

CREATE TABLE release ( -- replicate (verbose)
    id                  SERIAL,
    gid                 UUID NOT NULL,
    name                VARCHAR NOT NULL,
    artist_credit       INTEGER NOT NULL, -- references artist_credit.id
    release_group       INTEGER NOT NULL, -- references release_group.id
    status              INTEGER, -- references release_status.id
    packaging           INTEGER, -- references release_packaging.id
    language            INTEGER, -- references language.id
    script              INTEGER, -- references script.id
    barcode             VARCHAR(255),
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    quality             SMALLINT NOT NULL DEFAULT -1,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE release_alias_type ( -- replicate
    id                  SERIAL, -- PK,
    name                TEXT NOT NULL,
    parent              INTEGER, -- references release_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE release_alias ( -- replicate (verbose)
    id                  SERIAL, --PK
    release             INTEGER NOT NULL, -- references release.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >=0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references release_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
             CONSTRAINT primary_check
                 CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)));

CREATE TABLE release_country ( -- replicate (verbose)
  release INTEGER NOT NULL,  -- PK, references release.id
  country INTEGER NOT NULL,  -- PK, references country_area.area
  date_year SMALLINT,
  date_month SMALLINT,
  date_day SMALLINT
);

CREATE TABLE release_unknown_country ( -- replicate (verbose)
  release INTEGER NOT NULL,  -- PK, references release.id
  date_year SMALLINT,
  date_month SMALLINT,
  date_day SMALLINT
);

-- CREATE TABLE release_raw ( -- replicate
--     id                  SERIAL, -- PK
--     title               VARCHAR(255) NOT NULL,
--     artist              VARCHAR(255),
--     added               TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     last_modified        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     lookup_count         INTEGER DEFAULT 0,
--     modify_count         INTEGER DEFAULT 0,
--     source              INTEGER DEFAULT 0,
--     barcode             VARCHAR(255),
--     comment             VARCHAR(255) NOT NULL DEFAULT ''
-- );

-- CREATE TABLE release_tag_raw
-- (
--     release             INTEGER NOT NULL, -- PK, references release.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );
--
-- CREATE TABLE release_annotation ( -- replicate (verbose)
--     release             INTEGER NOT NULL, -- PK, references release.id
--     annotation          INTEGER NOT NULL -- PK, references annotation.id
-- );
--
-- CREATE TABLE release_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references release_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE release_attribute_type_allowed_value ( -- replicate (verbose)
--     id                          SERIAL,  -- PK
--     release_attribute_type      INTEGER NOT NULL, -- references release_attribute_type.id
--     value                       TEXT,
--     parent                      INTEGER, -- references release_attribute_type_allowed_value.id
--     child_order                 INTEGER NOT NULL DEFAULT 0,
--     description                 TEXT,
--     gid                         uuid NOT NULL
-- );
--
-- CREATE TABLE release_attribute ( -- replicate (verbose)
--     id                                          SERIAL,  -- PK
--     release                                     INTEGER NOT NULL, -- references release.id
--     release_attribute_type                      INTEGER NOT NULL, -- references release_attribute_type.id
--     release_attribute_type_allowed_value        INTEGER, -- references release_attribute_type_allowed_value.id
--     release_attribute_text                      TEXT
--     CHECK (
--         (release_attribute_type_allowed_value IS NULL AND release_attribute_text IS NOT NULL)
--         OR
--         (release_attribute_type_allowed_value IS NOT NULL AND release_attribute_text IS NULL)
--     )
-- );
--
CREATE TABLE release_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references release.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
--
-- CREATE TYPE cover_art_presence AS ENUM ('absent', 'present', 'darkened');
--
-- CREATE TABLE release_meta ( -- replicate (verbose)
--     id                  INTEGER NOT NULL, -- PK, references release.id CASCADE
--     date_added          TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     info_url            VARCHAR(255),
--     amazon_asin         VARCHAR(10),
--     amazon_store        VARCHAR(20),
--     cover_art_presence  cover_art_presence NOT NULL DEFAULT 'absent'
-- );
--
-- CREATE TABLE release_coverart
-- (
--     id                  INTEGER NOT NULL, -- PK, references release.id CASCADE
--     last_updated        TIMESTAMP WITH TIME ZONE,
--     cover_art_url       VARCHAR(255)
-- );

CREATE TABLE release_label ( -- replicate (verbose)
    id                  SERIAL,
    release             INTEGER NOT NULL, -- references release.id
    label               INTEGER, -- references label.id
    catalog_number      VARCHAR(255),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE release_packaging ( -- replicate
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references release_packaging.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE release_status ( -- replicate
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references release_status.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

-- CREATE TABLE release_tag ( -- replicate (verbose)
--     release             INTEGER NOT NULL, -- PK, references release.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );

CREATE TABLE release_group ( -- replicate (verbose)
    id                  SERIAL,
    gid                 UUID NOT NULL,
    name                VARCHAR NOT NULL,
    artist_credit       INTEGER NOT NULL, -- references artist_credit.id
    type                INTEGER, -- references release_group_primary_type.id
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE release_group_alias_type ( -- replicate
    id                  SERIAL, -- PK,
    name                TEXT NOT NULL,
    parent              INTEGER, -- references release_group_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE release_group_alias ( -- replicate (verbose)
    id                  SERIAL, --PK
    release_group       INTEGER NOT NULL, -- references release_group.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >=0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references release_group_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
             CONSTRAINT primary_check
                 CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)));

-- CREATE TABLE release_group_rating_raw
-- (
--     release_group       INTEGER NOT NULL, -- PK, references release_group.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     rating              SMALLINT NOT NULL CHECK (rating >= 0 AND rating <= 100)
-- );
--
-- CREATE TABLE release_group_tag_raw
-- (
--     release_group       INTEGER NOT NULL, -- PK, references release_group.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );
--
-- CREATE TABLE release_group_annotation ( -- replicate (verbose)
--     release_group       INTEGER NOT NULL, -- PK, references release_group.id
--     annotation          INTEGER NOT NULL -- PK, references annotation.id
-- );
--
-- CREATE TABLE release_group_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references release_group_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE release_group_attribute_type_allowed_value ( -- replicate (verbose)
--     id                                  SERIAL,  -- PK
--     release_group_attribute_type        INTEGER NOT NULL, -- references release_group_attribute_type.id
--     value                               TEXT,
--     parent                              INTEGER, -- references release_group_attribute_type_allowed_value.id
--     child_order                         INTEGER NOT NULL DEFAULT 0,
--     description                         TEXT,
--     gid                                 uuid NOT NULL
-- );
--
-- CREATE TABLE release_group_attribute ( -- replicate (verbose)
--     id                                          SERIAL,  -- PK
--     release_group                               INTEGER NOT NULL, -- references release_group.id
--     release_group_attribute_type                INTEGER NOT NULL, -- references release_group_attribute_type.id
--     release_group_attribute_type_allowed_value  INTEGER, -- references release_group_attribute_type_allowed_value.id
--     release_group_attribute_text                TEXT
--     CHECK (
--         (release_group_attribute_type_allowed_value IS NULL AND release_group_attribute_text IS NOT NULL)
--         OR
--         (release_group_attribute_type_allowed_value IS NOT NULL AND release_group_attribute_text IS NULL)
--     )
-- );

CREATE TABLE release_group_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references release_group.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE release_group_meta ( -- replicate
--     id                  INTEGER NOT NULL, -- PK, references release_group.id CASCADE
--     release_count       INTEGER NOT NULL DEFAULT 0,
--     first_release_date_year   SMALLINT,
--     first_release_date_month  SMALLINT,
--     first_release_date_day    SMALLINT,
--     rating              SMALLINT CHECK (rating >= 0 AND rating <= 100),
--     rating_count        INTEGER
-- );
--
-- CREATE TABLE release_group_tag ( -- replicate (verbose)
--     release_group       INTEGER NOT NULL, -- PK, references release_group.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );

CREATE TABLE release_group_primary_type ( -- replicate
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references release_group_primary_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE release_group_secondary_type ( -- replicate
    id                  SERIAL NOT NULL, -- PK
    name                TEXT NOT NULL,
    parent              INTEGER, -- references release_group_secondary_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE release_group_secondary_type_join ( -- replicate (verbose)
    release_group INTEGER NOT NULL, -- PK, references release_group.id,
    secondary_type INTEGER NOT NULL, -- PK, references release_group_secondary_type.id
    created TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

CREATE TABLE script ( -- replicate
    id                  SERIAL,
    iso_code            CHAR(4) NOT NULL, -- ISO 15924
    iso_number          CHAR(3) NOT NULL, -- ISO 15924
    name                VARCHAR(100) NOT NULL,
    frequency           INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE series ( -- replicate (verbose)
    id                  SERIAL,
    gid                 UUID NOT NULL,
    name                VARCHAR NOT NULL,
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    type                INTEGER NOT NULL, -- references series_type.id
    ordering_attribute  INTEGER NOT NULL, -- references link_text_attribute_type.attribute_type
    ordering_type       INTEGER NOT NULL, -- references series_ordering_type.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE series_type ( -- replicate (verbose)
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    entity_type         VARCHAR(50) NOT NULL,
    parent              INTEGER, -- references series_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE series_ordering_type ( -- replicate (verbose)
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references series_ordering_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE series_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references series.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE series_alias_type ( -- replicate (verbose)
    id                  SERIAL, -- PK
    name                TEXT NOT NULL,
    parent              INTEGER, -- references series_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE series_alias ( -- replicate (verbose)
    id                  SERIAL, -- PK
    series              INTEGER NOT NULL, -- references series.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references series_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT FALSE,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
    CONSTRAINT primary_check CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)),
    CONSTRAINT search_hints_are_empty
      CHECK (
        (type <> 2) OR (
          type = 2 AND sort_name = name AND
          begin_date_year IS NULL AND begin_date_month IS NULL AND begin_date_day IS NULL AND
          end_date_year IS NULL AND end_date_month IS NULL AND end_date_day IS NULL AND
          primary_for_locale IS FALSE AND locale IS NULL
        )
      )
);

-- CREATE TABLE series_annotation ( -- replicate (verbose)
--     series              INTEGER NOT NULL, -- PK, references series.id
--     annotation          INTEGER NOT NULL -- PK, references annotation.id
-- );
--
-- CREATE TABLE series_attribute_type ( -- replicate (verbose)
--     id                  SERIAL,  -- PK
--     name                VARCHAR(255) NOT NULL,
--     comment             VARCHAR(255) NOT NULL DEFAULT '',
--     free_text           BOOLEAN NOT NULL,
--     parent              INTEGER, -- references series_attribute_type.id
--     child_order         INTEGER NOT NULL DEFAULT 0,
--     description         TEXT,
--     gid                 uuid NOT NULL
-- );
--
-- CREATE TABLE series_attribute_type_allowed_value ( -- replicate (verbose)
--     id                          SERIAL,  -- PK
--     series_attribute_type       INTEGER NOT NULL, -- references series_attribute_type.id
--     value                       TEXT,
--     parent                      INTEGER, -- references series_attribute_type_allowed_value.id
--     child_order                 INTEGER NOT NULL DEFAULT 0,
--     description                 TEXT,
--     gid                         uuid NOT NULL
-- );
--
-- CREATE TABLE series_attribute ( -- replicate (verbose)
--     id                                  SERIAL,  -- PK
--     series                              INTEGER NOT NULL, -- references series.id
--     series_attribute_type               INTEGER NOT NULL, -- references series_attribute_type.id
--     series_attribute_type_allowed_value INTEGER, -- references series_attribute_type_allowed_value.id
--     series_attribute_text               TEXT
--     CHECK (
--         (series_attribute_type_allowed_value IS NULL AND series_attribute_text IS NOT NULL)
--         OR
--         (series_attribute_type_allowed_value IS NOT NULL AND series_attribute_text IS NULL)
--     )
-- );
--
-- CREATE TABLE series_tag ( -- replicate (verbose)
--     series              INTEGER NOT NULL, -- PK, references series.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );
--
-- CREATE TABLE series_tag_raw (
--     series              INTEGER NOT NULL, -- PK, references series.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );

-- CREATE TABLE tag ( -- replicate (verbose)
--     id                  SERIAL,
--     name                VARCHAR(255) NOT NULL,
--     ref_count           INTEGER NOT NULL DEFAULT 0
-- );
--
-- CREATE TABLE tag_relation
-- (
--     tag1                INTEGER NOT NULL, -- PK, references tag.id
--     tag2                INTEGER NOT NULL, -- PK, references tag.id
--     weight              INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     CHECK (tag1 < tag2)
-- );

CREATE TABLE track ( -- replicate (verbose)
    id                  SERIAL,
    gid                 UUID NOT NULL,
    recording           INTEGER NOT NULL, -- references recording.id
    medium              INTEGER NOT NULL, -- references medium.id
    position            INTEGER NOT NULL,
    number              TEXT NOT NULL,
    name                VARCHAR NOT NULL,
    artist_credit       INTEGER NOT NULL, -- references artist_credit.id
    length              INTEGER CHECK (length IS NULL OR length > 0),
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    is_data_track       BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE track_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references track.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE track_raw ( -- replicate
--     id                  SERIAL, -- PK
--     release             INTEGER NOT NULL,   -- references release_raw.id
--     title               VARCHAR(255) NOT NULL,
--     artist              VARCHAR(255),   -- For VA albums, otherwise empty
--     sequence            INTEGER NOT NULL
-- );

-- CREATE TABLE medium_index ( -- replicate
--     medium              INTEGER, -- PK, references medium.id CASCADE
--     toc                 CUBE
-- );

CREATE TABLE url ( -- replicate
    id                  SERIAL,
    gid                 UUID NOT NULL,
    url                 TEXT NOT NULL,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE url_gid_redirect ( -- replicate
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references url.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE vote
-- (
--     id                  SERIAL,
--     editor              INTEGER NOT NULL, -- references editor.id
--     edit                INTEGER NOT NULL, -- references edit.id
--     vote                SMALLINT NOT NULL,
--     vote_time            TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
--     superseded          BOOLEAN NOT NULL DEFAULT FALSE
-- );

CREATE TABLE work ( -- replicate (verbose)
    id                  SERIAL,
    gid                 UUID NOT NULL,
    name                VARCHAR NOT NULL,
    type                INTEGER, -- references work_type.id
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE work_language ( -- replicate (verbose)
    work                INTEGER NOT NULL, -- PK, references work.id
    language            INTEGER NOT NULL, -- PK, references language.id
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE work_rating_raw
-- (
--     work                INTEGER NOT NULL, -- PK, references work.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     rating              SMALLINT NOT NULL CHECK (rating >= 0 AND rating <= 100)
-- );
--
-- CREATE TABLE work_tag_raw
-- (
--     work                INTEGER NOT NULL, -- PK, references work.id
--     editor              INTEGER NOT NULL, -- PK, references editor.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     is_upvote           BOOLEAN NOT NULL DEFAULT TRUE
-- );

CREATE TABLE work_alias_type ( -- replicate
    id                  SERIAL,
    name                TEXT NOT NULL,
    parent              INTEGER, -- references work_alias_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE work_alias ( -- replicate (verbose)
    id                  SERIAL,
    work                INTEGER NOT NULL, -- references work.id
    name                VARCHAR NOT NULL,
    locale              TEXT,
    edits_pending       INTEGER NOT NULL DEFAULT 0 CHECK (edits_pending >= 0),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    type                INTEGER, -- references work_alias_type.id
    sort_name           VARCHAR NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    primary_for_locale  BOOLEAN NOT NULL DEFAULT false,
    ended               BOOLEAN NOT NULL DEFAULT FALSE
      CHECK (
        (
          -- If any end date fields are not null, then ended must be true
          (end_date_year IS NOT NULL OR
           end_date_month IS NOT NULL OR
           end_date_day IS NOT NULL) AND
          ended = TRUE
        ) OR (
          -- Otherwise, all end date fields must be null
          (end_date_year IS NULL AND
           end_date_month IS NULL AND
           end_date_day IS NULL)
        )
      ),
    CONSTRAINT primary_check CHECK ((locale IS NULL AND primary_for_locale IS FALSE) OR (locale IS NOT NULL)),
    CONSTRAINT search_hints_are_empty
      CHECK (
        (type <> 2) OR (
          type = 2 AND sort_name = name AND
          begin_date_year IS NULL AND begin_date_month IS NULL AND begin_date_day IS NULL AND
          end_date_year IS NULL AND end_date_month IS NULL AND end_date_day IS NULL AND
          primary_for_locale IS FALSE AND locale IS NULL
        )
      )
);

-- CREATE TABLE work_annotation ( -- replicate (verbose)
--     work                INTEGER NOT NULL, -- PK, references work.id
--     annotation          INTEGER NOT NULL -- PK, references annotation.id
-- );

CREATE TABLE work_gid_redirect ( -- replicate (verbose)
    gid                 UUID NOT NULL, -- PK
    new_id              INTEGER NOT NULL, -- references work.id
    created             TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- CREATE TABLE work_meta ( -- replicate
--     id                  INTEGER NOT NULL, -- PK, references work.id CASCADE
--     rating              SMALLINT CHECK (rating >= 0 AND rating <= 100),
--     rating_count        INTEGER
-- );
--
-- CREATE TABLE work_tag ( -- replicate (verbose)
--     work                INTEGER NOT NULL, -- PK, references work.id
--     tag                 INTEGER NOT NULL, -- PK, references tag.id
--     count               INTEGER NOT NULL,
--     last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
-- );

CREATE TABLE work_type ( -- replicate
    id                  SERIAL,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references work_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE work_attribute_type ( -- replicate (verbose)
    id                  SERIAL,  -- PK
    name                VARCHAR(255) NOT NULL,
    comment             VARCHAR(255) NOT NULL DEFAULT '',
    free_text           BOOLEAN NOT NULL,
    parent              INTEGER, -- references work_attribute_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE work_attribute_type_allowed_value ( -- replicate (verbose)
    id                  SERIAL,  -- PK
    work_attribute_type INTEGER NOT NULL, -- references work_attribute_type.id
    value               TEXT,
    parent              INTEGER, -- references work_attribute_type_allowed_value.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 uuid NOT NULL
);

CREATE TABLE work_attribute ( -- replicate (verbose)
    id                                  SERIAL,  -- PK
    work                                INTEGER NOT NULL, -- references work.id
    work_attribute_type                 INTEGER NOT NULL, -- references work_attribute_type.id
    work_attribute_type_allowed_value   INTEGER, -- references work_attribute_type_allowed_value.id
    work_attribute_text                 TEXT
    CHECK (
        (work_attribute_type_allowed_value IS NULL AND work_attribute_text IS NOT NULL)
        OR
        (work_attribute_type_allowed_value IS NOT NULL AND work_attribute_text IS NULL)
    )
);

COMMIT;

-- vi: set ts=4 sw=4 et :
