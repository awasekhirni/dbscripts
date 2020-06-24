# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          crmeins.dez                                     #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-06-23 20:50                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `tblcontact_permissions` DROP FOREIGN KEY `tblclients_tblcontact_permissions`;

ALTER TABLE `tblcontacts` DROP FOREIGN KEY `tblclients_tblcontacts`;

ALTER TABLE `tblcontract_comments` DROP FOREIGN KEY `tblstaff_tblcontract_comments`;

ALTER TABLE `tblcreditnote_refunds` DROP FOREIGN KEY `tblstaff_tblcreditnote_refunds`;

ALTER TABLE `tblcredits` DROP FOREIGN KEY `tblstaff_tblcredits`;

ALTER TABLE `tblcustomer_admins` DROP FOREIGN KEY `tblstaff_tblcustomer_admins`;

ALTER TABLE `tblcustomer_groups` DROP FOREIGN KEY `tblknowledge_base_groups_tblcustomer_groups`;

ALTER TABLE `tbldismissed_announcements` DROP FOREIGN KEY `tblannouncements_tbldismissed_announcements`;

ALTER TABLE `tbldismissed_announcements` DROP FOREIGN KEY `tblclients_tbldismissed_announcements`;

ALTER TABLE `tblevents` DROP FOREIGN KEY `tblclients_tblevents`;

ALTER TABLE `tblfiles` DROP FOREIGN KEY `tblstaff_tblfiles`;

ALTER TABLE `tblform_question_box` DROP FOREIGN KEY `tblform_questions_tblform_question_box`;

ALTER TABLE `tblform_question_box_description` DROP FOREIGN KEY `tblform_questions_tblform_question_box_description`;

ALTER TABLE `tblform_results` DROP FOREIGN KEY `tblform_question_box_tblform_results`;

ALTER TABLE `tblform_results` DROP FOREIGN KEY `tblform_questions_tblform_results`;

ALTER TABLE `tblitems` DROP FOREIGN KEY `tblknowledge_base_groups_tblitems`;

ALTER TABLE `tblknowedge_base_article_feedback` DROP FOREIGN KEY `tblknowledge_base_tblknowedge_base_article_feedback`;

ALTER TABLE `tbllead_activity_log` DROP FOREIGN KEY `tblstaff_tbllead_activity_log`;

ALTER TABLE `tblnewsfeed_comment_likes` DROP FOREIGN KEY `tblclients_tblnewsfeed_comment_likes`;

ALTER TABLE `tblnewsfeed_comment_likes` DROP FOREIGN KEY `tblnewsfeed_posts_tblnewsfeed_comment_likes`;

ALTER TABLE `tblnewsfeed_post_comments` DROP FOREIGN KEY `tblclients_tblnewsfeed_post_comments`;

ALTER TABLE `tblnewsfeed_post_comments` DROP FOREIGN KEY `tblnewsfeed_posts_tblnewsfeed_post_comments`;

ALTER TABLE `tblnewsfeed_post_likes` DROP FOREIGN KEY `tblclients_tblnewsfeed_post_likes`;

ALTER TABLE `tblnewsfeed_post_likes` DROP FOREIGN KEY `tblnewsfeed_posts_tblnewsfeed_post_likes`;

ALTER TABLE `tblnotifications` DROP FOREIGN KEY `tblclients_tblnotifications`;

ALTER TABLE `tblpinned_projects` DROP FOREIGN KEY `tblstaff_tblpinned_projects`;

ALTER TABLE `tblproject_activity` DROP FOREIGN KEY `tblstaff_tblproject_activity`;

ALTER TABLE `tblproject_files` DROP FOREIGN KEY `tblstaff_tblproject_files`;

ALTER TABLE `tblproject_members` DROP FOREIGN KEY `tblstaff_tblproject_members`;

ALTER TABLE `tblproject_notes` DROP FOREIGN KEY `tblstaff_tblproject_notes`;

ALTER TABLE `tblprojectdiscussioncomments` DROP FOREIGN KEY `tblstaff_tblprojectdiscussioncomments`;

ALTER TABLE `tblprojectdiscussions` DROP FOREIGN KEY `tblstaff_tblprojectdiscussions`;

ALTER TABLE `tblproposal_comments` DROP FOREIGN KEY `tblstaff_tblproposal_comments`;

ALTER TABLE `tblstaff_departments` DROP FOREIGN KEY `tbldepartments_tblstaff_departments`;

ALTER TABLE `tblstaff_departments` DROP FOREIGN KEY `tblstaff_tblstaff_departments`;

ALTER TABLE `tblstaff_permissions` DROP FOREIGN KEY `tblstaff_tblstaff_permissions`;

ALTER TABLE `tbltask_assigned` DROP FOREIGN KEY `tblstaff_tbltask_assigned`;

ALTER TABLE `tbltask_comments` DROP FOREIGN KEY `tblstaff_tbltask_comments`;

ALTER TABLE `tbltask_followers` DROP FOREIGN KEY `tblstaff_tbltask_followers`;

ALTER TABLE `tbltasks` DROP FOREIGN KEY `tbltickets_priorities_tbltasks`;

ALTER TABLE `tbltaskstimers` DROP FOREIGN KEY `tblstaff_tbltaskstimers`;

ALTER TABLE `tblticket_attachments` DROP FOREIGN KEY `tbltickets_tblticket_attachments`;

ALTER TABLE `tblticket_replies` DROP FOREIGN KEY `tblclients_tblticket_replies`;

ALTER TABLE `tblticket_replies` DROP FOREIGN KEY `tbltickets_tblticket_replies`;

ALTER TABLE `tbltickets` DROP FOREIGN KEY `tblclients_tbltickets`;

ALTER TABLE `tbltickets` DROP FOREIGN KEY `tbldepartments_tbltickets`;

ALTER TABLE `tbltickets` DROP FOREIGN KEY `tbltickets_priorities_tbltickets`;

ALTER TABLE `tbltodos` DROP FOREIGN KEY `tblstaff_tbltodos`;

# ---------------------------------------------------------------------- #
# Drop table "tblticket_replies"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblticket_replies` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblticket_replies` ALTER COLUMN `contactid` DROP DEFAULT;

ALTER TABLE `tblticket_replies` DROP PRIMARY KEY;

DROP TABLE `tblticket_replies`;

# ---------------------------------------------------------------------- #
# Drop table "tblticket_attachments"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblticket_attachments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblticket_attachments` DROP PRIMARY KEY;

DROP TABLE `tblticket_attachments`;

# ---------------------------------------------------------------------- #
# Drop table "tbltickets"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltickets` MODIFY `ticketid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltickets` ALTER COLUMN `adminreplying` DROP DEFAULT;

ALTER TABLE `tbltickets` ALTER COLUMN `contactid` DROP DEFAULT;

ALTER TABLE `tbltickets` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `tbltickets` ALTER COLUMN `clientread` DROP DEFAULT;

ALTER TABLE `tbltickets` ALTER COLUMN `adminread` DROP DEFAULT;

ALTER TABLE `tbltickets` ALTER COLUMN `assigned` DROP DEFAULT;

ALTER TABLE `tbltickets` DROP PRIMARY KEY;

DROP TABLE `tbltickets`;

# ---------------------------------------------------------------------- #
# Drop table "tbltasks"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltasks` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltasks` ALTER COLUMN `is_added_from_contact` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `recurring` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `cycles` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `total_cycles` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `custom_recurring` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `is_public` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `billable` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `billed` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `invoice_id` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `hourly_rate` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `milestone` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `kanban_order` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `milestone_order` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `visible_to_client` DROP DEFAULT;

ALTER TABLE `tbltasks` ALTER COLUMN `deadline_notified` DROP DEFAULT;

ALTER TABLE `tbltasks` DROP PRIMARY KEY;

DROP TABLE `tbltasks`;

# ---------------------------------------------------------------------- #
# Drop table "tblproposal_comments"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblproposal_comments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblproposal_comments` DROP PRIMARY KEY;

DROP TABLE `tblproposal_comments`;

# ---------------------------------------------------------------------- #
# Drop table "tblprojectdiscussions"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblprojectdiscussions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblprojectdiscussions` ALTER COLUMN `show_to_customer` DROP DEFAULT;

ALTER TABLE `tblprojectdiscussions` ALTER COLUMN `staff_id` DROP DEFAULT;

ALTER TABLE `tblprojectdiscussions` ALTER COLUMN `contact_id` DROP DEFAULT;

ALTER TABLE `tblprojectdiscussions` DROP PRIMARY KEY;

DROP TABLE `tblprojectdiscussions`;

# ---------------------------------------------------------------------- #
# Drop table "tblprojectdiscussioncomments"                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblprojectdiscussioncomments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblprojectdiscussioncomments` ALTER COLUMN `contact_id` DROP DEFAULT;

ALTER TABLE `tblprojectdiscussioncomments` DROP PRIMARY KEY;

DROP TABLE `tblprojectdiscussioncomments`;

# ---------------------------------------------------------------------- #
# Drop table "tblproject_notes"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblproject_notes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblproject_notes` DROP PRIMARY KEY;

DROP TABLE `tblproject_notes`;

# ---------------------------------------------------------------------- #
# Drop table "tblproject_members"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblproject_members` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblproject_members` DROP PRIMARY KEY;

DROP TABLE `tblproject_members`;

# ---------------------------------------------------------------------- #
# Drop table "tblproject_files"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblproject_files` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblproject_files` ALTER COLUMN `visible_to_customer` DROP DEFAULT;

ALTER TABLE `tblproject_files` ALTER COLUMN `contact_id` DROP DEFAULT;

ALTER TABLE `tblproject_files` DROP PRIMARY KEY;

DROP TABLE `tblproject_files`;

# ---------------------------------------------------------------------- #
# Drop table "tblproject_activity"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblproject_activity` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblproject_activity` ALTER COLUMN `staff_id` DROP DEFAULT;

ALTER TABLE `tblproject_activity` ALTER COLUMN `contact_id` DROP DEFAULT;

ALTER TABLE `tblproject_activity` ALTER COLUMN `visible_to_customer` DROP DEFAULT;

ALTER TABLE `tblproject_activity` DROP PRIMARY KEY;

DROP TABLE `tblproject_activity`;

# ---------------------------------------------------------------------- #
# Drop table "tblpinned_projects"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblpinned_projects` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblpinned_projects` DROP PRIMARY KEY;

DROP TABLE `tblpinned_projects`;

# ---------------------------------------------------------------------- #
# Drop table "tblnewsfeed_post_likes"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblnewsfeed_post_likes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblnewsfeed_post_likes` DROP PRIMARY KEY;

DROP TABLE `tblnewsfeed_post_likes`;

# ---------------------------------------------------------------------- #
# Drop table "tblnewsfeed_post_comments"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblnewsfeed_post_comments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblnewsfeed_post_comments` DROP PRIMARY KEY;

DROP TABLE `tblnewsfeed_post_comments`;

# ---------------------------------------------------------------------- #
# Drop table "tblnewsfeed_comment_likes"                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblnewsfeed_comment_likes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblnewsfeed_comment_likes` DROP PRIMARY KEY;

DROP TABLE `tblnewsfeed_comment_likes`;

# ---------------------------------------------------------------------- #
# Drop table "tbllead_activity_log"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbllead_activity_log` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbllead_activity_log` ALTER COLUMN `custom_activity` DROP DEFAULT;

ALTER TABLE `tbllead_activity_log` DROP PRIMARY KEY;

DROP TABLE `tbllead_activity_log`;

# ---------------------------------------------------------------------- #
# Drop table "tblknowedge_base_article_feedback"                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblknowedge_base_article_feedback` MODIFY `articleanswerid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblknowedge_base_article_feedback` DROP PRIMARY KEY;

DROP TABLE `tblknowedge_base_article_feedback`;

# ---------------------------------------------------------------------- #
# Drop table "tblitems"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblitems` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblitems` ALTER COLUMN `group_id` DROP DEFAULT;

ALTER TABLE `tblitems` DROP PRIMARY KEY;

DROP TABLE `tblitems`;

# ---------------------------------------------------------------------- #
# Drop table "tblform_results"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblform_results` MODIFY `resultid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblform_results` DROP PRIMARY KEY;

DROP TABLE `tblform_results`;

# ---------------------------------------------------------------------- #
# Drop table "tblform_question_box_description"                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblform_question_box_description` MODIFY `questionboxdescriptionid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblform_question_box_description` DROP PRIMARY KEY;

DROP TABLE `tblform_question_box_description`;

# ---------------------------------------------------------------------- #
# Drop table "tblform_question_box"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblform_question_box` MODIFY `boxid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblform_question_box` DROP PRIMARY KEY;

DROP TABLE `tblform_question_box`;

# ---------------------------------------------------------------------- #
# Drop table "tblfiles"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblfiles` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblfiles` ALTER COLUMN `visible_to_customer` DROP DEFAULT;

ALTER TABLE `tblfiles` ALTER COLUMN `contact_id` DROP DEFAULT;

ALTER TABLE `tblfiles` ALTER COLUMN `task_comment_id` DROP DEFAULT;

ALTER TABLE `tblfiles` DROP PRIMARY KEY;

DROP TABLE `tblfiles`;

# ---------------------------------------------------------------------- #
# Drop table "tblcustomer_groups"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcustomer_groups` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcustomer_groups` DROP PRIMARY KEY;

DROP TABLE `tblcustomer_groups`;

# ---------------------------------------------------------------------- #
# Drop table "tblcustomer_admins"                                        #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `tblcustomer_admins`;

# ---------------------------------------------------------------------- #
# Drop table "tblcredits"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcredits` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcredits` DROP PRIMARY KEY;

DROP TABLE `tblcredits`;

# ---------------------------------------------------------------------- #
# Drop table "tblcreditnote_refunds"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcreditnote_refunds` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcreditnote_refunds` DROP PRIMARY KEY;

DROP TABLE `tblcreditnote_refunds`;

# ---------------------------------------------------------------------- #
# Drop table "tblcontract_comments"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcontract_comments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcontract_comments` DROP PRIMARY KEY;

DROP TABLE `tblcontract_comments`;

# ---------------------------------------------------------------------- #
# Drop table "tblweb_to_lead"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblweb_to_lead` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblweb_to_lead` ALTER COLUMN `notify_lead_imported` DROP DEFAULT;

ALTER TABLE `tblweb_to_lead` ALTER COLUMN `responsible` DROP DEFAULT;

ALTER TABLE `tblweb_to_lead` ALTER COLUMN `recaptcha` DROP DEFAULT;

ALTER TABLE `tblweb_to_lead` ALTER COLUMN `allow_duplicate` DROP DEFAULT;

ALTER TABLE `tblweb_to_lead` ALTER COLUMN `mark_public` DROP DEFAULT;

ALTER TABLE `tblweb_to_lead` ALTER COLUMN `create_task_on_duplicate` DROP DEFAULT;

ALTER TABLE `tblweb_to_lead` DROP PRIMARY KEY;

DROP TABLE `tblweb_to_lead`;

# ---------------------------------------------------------------------- #
# Drop table "tblviews_tracking"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblviews_tracking` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblviews_tracking` DROP PRIMARY KEY;

DROP TABLE `tblviews_tracking`;

# ---------------------------------------------------------------------- #
# Drop table "tblvault"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblvault` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblvault` ALTER COLUMN `visibility` DROP DEFAULT;

ALTER TABLE `tblvault` ALTER COLUMN `share_in_projects` DROP DEFAULT;

ALTER TABLE `tblvault` DROP PRIMARY KEY;

DROP TABLE `tblvault`;

# ---------------------------------------------------------------------- #
# Drop table "tbluser_meta"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbluser_meta` MODIFY `umeta_id` BIGINT(20) UNSIGNED NOT NULL;

# Drop constraints #

ALTER TABLE `tbluser_meta` ALTER COLUMN `staff_id` DROP DEFAULT;

ALTER TABLE `tbluser_meta` ALTER COLUMN `client_id` DROP DEFAULT;

ALTER TABLE `tbluser_meta` ALTER COLUMN `contact_id` DROP DEFAULT;

ALTER TABLE `tbluser_meta` DROP PRIMARY KEY;

DROP TABLE `tbluser_meta`;

# ---------------------------------------------------------------------- #
# Drop table "tbluser_auto_login"                                        #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tbluser_auto_login` ALTER COLUMN `last_login` DROP DEFAULT;

DROP TABLE `tbluser_auto_login`;

# ---------------------------------------------------------------------- #
# Drop table "tbltracked_mails"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltracked_mails` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltracked_mails` ALTER COLUMN `opened` DROP DEFAULT;

ALTER TABLE `tbltracked_mails` DROP PRIMARY KEY;

DROP TABLE `tbltracked_mails`;

# ---------------------------------------------------------------------- #
# Drop table "tbltodos"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltodos` MODIFY `todoid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltodos` DROP PRIMARY KEY;

DROP TABLE `tbltodos`;

# ---------------------------------------------------------------------- #
# Drop table "tbltickets_status"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltickets_status` MODIFY `ticketstatusid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltickets_status` ALTER COLUMN `isdefault` DROP DEFAULT;

ALTER TABLE `tbltickets_status` DROP PRIMARY KEY;

DROP TABLE `tbltickets_status`;

# ---------------------------------------------------------------------- #
# Drop table "tbltickets_priorities"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltickets_priorities` MODIFY `priorityid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltickets_priorities` DROP PRIMARY KEY;

DROP TABLE `tbltickets_priorities`;

# ---------------------------------------------------------------------- #
# Drop table "tbltickets_predefined_replies"                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltickets_predefined_replies` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltickets_predefined_replies` DROP PRIMARY KEY;

DROP TABLE `tbltickets_predefined_replies`;

# ---------------------------------------------------------------------- #
# Drop table "tbltickets_pipe_log"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltickets_pipe_log` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltickets_pipe_log` DROP PRIMARY KEY;

DROP TABLE `tbltickets_pipe_log`;

# ---------------------------------------------------------------------- #
# Drop table "tbltaxes"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltaxes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltaxes` DROP PRIMARY KEY;

DROP TABLE `tbltaxes`;

# ---------------------------------------------------------------------- #
# Drop table "tbltaskstimers"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltaskstimers` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltaskstimers` ALTER COLUMN `hourly_rate` DROP DEFAULT;

ALTER TABLE `tbltaskstimers` DROP PRIMARY KEY;

DROP TABLE `tbltaskstimers`;

# ---------------------------------------------------------------------- #
# Drop table "tbltasks_checklist_templates"                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltasks_checklist_templates` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltasks_checklist_templates` DROP PRIMARY KEY;

DROP TABLE `tbltasks_checklist_templates`;

# ---------------------------------------------------------------------- #
# Drop table "tbltask_followers"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltask_followers` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltask_followers` DROP PRIMARY KEY;

DROP TABLE `tbltask_followers`;

# ---------------------------------------------------------------------- #
# Drop table "tbltask_comments"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltask_comments` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltask_comments` ALTER COLUMN `contact_id` DROP DEFAULT;

ALTER TABLE `tbltask_comments` ALTER COLUMN `file_id` DROP DEFAULT;

ALTER TABLE `tbltask_comments` DROP PRIMARY KEY;

DROP TABLE `tbltask_comments`;

# ---------------------------------------------------------------------- #
# Drop table "tbltask_checklist_items"                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltask_checklist_items` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltask_checklist_items` ALTER COLUMN `finished` DROP DEFAULT;

ALTER TABLE `tbltask_checklist_items` ALTER COLUMN `finished_from` DROP DEFAULT;

ALTER TABLE `tbltask_checklist_items` ALTER COLUMN `list_order` DROP DEFAULT;

ALTER TABLE `tbltask_checklist_items` DROP PRIMARY KEY;

DROP TABLE `tbltask_checklist_items`;

# ---------------------------------------------------------------------- #
# Drop table "tbltask_assigned"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltask_assigned` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltask_assigned` ALTER COLUMN `assigned_from` DROP DEFAULT;

ALTER TABLE `tbltask_assigned` ALTER COLUMN `is_assigned_from_contact` DROP DEFAULT;

ALTER TABLE `tbltask_assigned` DROP PRIMARY KEY;

DROP TABLE `tbltask_assigned`;

# ---------------------------------------------------------------------- #
# Drop table "tbltags"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbltags` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbltags` DROP PRIMARY KEY;

DROP TABLE `tbltags`;

# ---------------------------------------------------------------------- #
# Drop table "tbltaggables"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tbltaggables` ALTER COLUMN `tag_order` DROP DEFAULT;

DROP TABLE `tbltaggables`;

# ---------------------------------------------------------------------- #
# Drop table "tblsubscriptions"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblsubscriptions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblsubscriptions` ALTER COLUMN `description_in_item` DROP DEFAULT;

ALTER TABLE `tblsubscriptions` ALTER COLUMN `tax_id` DROP DEFAULT;

ALTER TABLE `tblsubscriptions` ALTER COLUMN `quantity` DROP DEFAULT;

ALTER TABLE `tblsubscriptions` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `tblsubscriptions` DROP PRIMARY KEY;

DROP TABLE `tblsubscriptions`;

# ---------------------------------------------------------------------- #
# Drop table "tblstaff_permissions"                                      #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `tblstaff_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "tblstaff_departments"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblstaff_departments` MODIFY `staffdepartmentid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblstaff_departments` DROP PRIMARY KEY;

DROP TABLE `tblstaff_departments`;

# ---------------------------------------------------------------------- #
# Drop table "tblstaff"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblstaff` MODIFY `staffid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblstaff` ALTER COLUMN `admin` DROP DEFAULT;

ALTER TABLE `tblstaff` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `tblstaff` ALTER COLUMN `is_not_staff` DROP DEFAULT;

ALTER TABLE `tblstaff` ALTER COLUMN `hourly_rate` DROP DEFAULT;

ALTER TABLE `tblstaff` ALTER COLUMN `two_factor_auth_enabled` DROP DEFAULT;

ALTER TABLE `tblstaff` DROP PRIMARY KEY;

DROP TABLE `tblstaff`;

# ---------------------------------------------------------------------- #
# Drop table "tblspam_filters"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblspam_filters` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblspam_filters` DROP PRIMARY KEY;

DROP TABLE `tblspam_filters`;

# ---------------------------------------------------------------------- #
# Drop table "tblshared_customer_files"                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `tblshared_customer_files`;

# ---------------------------------------------------------------------- #
# Drop table "tblsessions"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tblsessions` ALTER COLUMN `timestamp` DROP DEFAULT;

ALTER TABLE `tblsessions` DROP PRIMARY KEY;

DROP TABLE `tblsessions`;

# ---------------------------------------------------------------------- #
# Drop table "tblservices"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblservices` MODIFY `serviceid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblservices` DROP PRIMARY KEY;

DROP TABLE `tblservices`;

# ---------------------------------------------------------------------- #
# Drop table "tblscheduled_emails"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblscheduled_emails` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblscheduled_emails` ALTER COLUMN `attach_pdf` DROP DEFAULT;

ALTER TABLE `tblscheduled_emails` DROP PRIMARY KEY;

DROP TABLE `tblscheduled_emails`;

# ---------------------------------------------------------------------- #
# Drop table "tblsales_activity"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblsales_activity` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblsales_activity` DROP PRIMARY KEY;

DROP TABLE `tblsales_activity`;

# ---------------------------------------------------------------------- #
# Drop table "tblroles"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblroles` MODIFY `roleid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblroles` DROP PRIMARY KEY;

DROP TABLE `tblroles`;

# ---------------------------------------------------------------------- #
# Drop table "tblreminders"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblreminders` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblreminders` ALTER COLUMN `isnotified` DROP DEFAULT;

ALTER TABLE `tblreminders` ALTER COLUMN `notify_by_email` DROP DEFAULT;

ALTER TABLE `tblreminders` DROP PRIMARY KEY;

DROP TABLE `tblreminders`;

# ---------------------------------------------------------------------- #
# Drop table "tblrelated_items"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblrelated_items` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblrelated_items` DROP PRIMARY KEY;

DROP TABLE `tblrelated_items`;

# ---------------------------------------------------------------------- #
# Drop table "tblproposals"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblproposals` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblproposals` ALTER COLUMN `total_tax` DROP DEFAULT;

ALTER TABLE `tblproposals` ALTER COLUMN `show_quantity_as` DROP DEFAULT;

ALTER TABLE `tblproposals` ALTER COLUMN `country` DROP DEFAULT;

ALTER TABLE `tblproposals` ALTER COLUMN `allow_comments` DROP DEFAULT;

ALTER TABLE `tblproposals` ALTER COLUMN `pipeline_order` DROP DEFAULT;

ALTER TABLE `tblproposals` ALTER COLUMN `is_expiry_notified` DROP DEFAULT;

ALTER TABLE `tblproposals` DROP PRIMARY KEY;

DROP TABLE `tblproposals`;

# ---------------------------------------------------------------------- #
# Drop table "tblprojects"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblprojects` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblprojects` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tblprojects` ALTER COLUMN `progress` DROP DEFAULT;

ALTER TABLE `tblprojects` ALTER COLUMN `progress_from_tasks` DROP DEFAULT;

ALTER TABLE `tblprojects` DROP PRIMARY KEY;

DROP TABLE `tblprojects`;

# ---------------------------------------------------------------------- #
# Drop table "tblproject_settings"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblproject_settings` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblproject_settings` DROP PRIMARY KEY;

DROP TABLE `tblproject_settings`;

# ---------------------------------------------------------------------- #
# Drop table "tblpayment_modes"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblpayment_modes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblpayment_modes` ALTER COLUMN `show_on_pdf` DROP DEFAULT;

ALTER TABLE `tblpayment_modes` ALTER COLUMN `invoices_only` DROP DEFAULT;

ALTER TABLE `tblpayment_modes` ALTER COLUMN `expenses_only` DROP DEFAULT;

ALTER TABLE `tblpayment_modes` ALTER COLUMN `selected_by_default` DROP DEFAULT;

ALTER TABLE `tblpayment_modes` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `tblpayment_modes` DROP PRIMARY KEY;

DROP TABLE `tblpayment_modes`;

# ---------------------------------------------------------------------- #
# Drop table "tbloptions"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbloptions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbloptions` ALTER COLUMN `autoload` DROP DEFAULT;

ALTER TABLE `tbloptions` DROP PRIMARY KEY;

DROP TABLE `tbloptions`;

# ---------------------------------------------------------------------- #
# Drop table "tblnotifications"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblnotifications` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblnotifications` ALTER COLUMN `isread` DROP DEFAULT;

ALTER TABLE `tblnotifications` ALTER COLUMN `isread_inline` DROP DEFAULT;

ALTER TABLE `tblnotifications` ALTER COLUMN `fromclientid` DROP DEFAULT;

ALTER TABLE `tblnotifications` DROP PRIMARY KEY;

DROP TABLE `tblnotifications`;

# ---------------------------------------------------------------------- #
# Drop table "tblnotes"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblnotes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblnotes` DROP PRIMARY KEY;

DROP TABLE `tblnotes`;

# ---------------------------------------------------------------------- #
# Drop table "tblnewsfeed_posts"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblnewsfeed_posts` MODIFY `postid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblnewsfeed_posts` DROP PRIMARY KEY;

DROP TABLE `tblnewsfeed_posts`;

# ---------------------------------------------------------------------- #
# Drop table "tblmodules"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblmodules` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblmodules` DROP PRIMARY KEY;

DROP TABLE `tblmodules`;

# ---------------------------------------------------------------------- #
# Drop table "tblmilestones"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblmilestones` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblmilestones` ALTER COLUMN `description_visible_to_customer` DROP DEFAULT;

ALTER TABLE `tblmilestones` ALTER COLUMN `milestone_order` DROP DEFAULT;

ALTER TABLE `tblmilestones` DROP PRIMARY KEY;

DROP TABLE `tblmilestones`;

# ---------------------------------------------------------------------- #
# Drop table "tblmigrations"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `tblmigrations`;

# ---------------------------------------------------------------------- #
# Drop table "tblmail_queue"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblmail_queue` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblmail_queue` DROP PRIMARY KEY;

DROP TABLE `tblmail_queue`;

# ---------------------------------------------------------------------- #
# Drop table "tblleads_status"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblleads_status` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblleads_status` ALTER COLUMN `color` DROP DEFAULT;

ALTER TABLE `tblleads_status` ALTER COLUMN `isdefault` DROP DEFAULT;

ALTER TABLE `tblleads_status` DROP PRIMARY KEY;

DROP TABLE `tblleads_status`;

# ---------------------------------------------------------------------- #
# Drop table "tblleads_sources"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblleads_sources` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblleads_sources` DROP PRIMARY KEY;

DROP TABLE `tblleads_sources`;

# ---------------------------------------------------------------------- #
# Drop table "tblleads_email_integration"                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblleads_email_integration` MODIFY `id` INTEGER(11) NOT NULL COMMENT 'the ID always must be 1';

# Drop constraints #

ALTER TABLE `tblleads_email_integration` ALTER COLUMN `check_every` DROP DEFAULT;

ALTER TABLE `tblleads_email_integration` ALTER COLUMN `notify_lead_imported` DROP DEFAULT;

ALTER TABLE `tblleads_email_integration` ALTER COLUMN `notify_lead_contact_more_times` DROP DEFAULT;

ALTER TABLE `tblleads_email_integration` ALTER COLUMN `mark_public` DROP DEFAULT;

ALTER TABLE `tblleads_email_integration` ALTER COLUMN `only_loop_on_unseen_emails` DROP DEFAULT;

ALTER TABLE `tblleads_email_integration` ALTER COLUMN `delete_after_import` DROP DEFAULT;

ALTER TABLE `tblleads_email_integration` ALTER COLUMN `create_task_if_customer` DROP DEFAULT;

ALTER TABLE `tblleads_email_integration` DROP PRIMARY KEY;

DROP TABLE `tblleads_email_integration`;

# ---------------------------------------------------------------------- #
# Drop table "tblleads"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblleads` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblleads` ALTER COLUMN `country` DROP DEFAULT;

ALTER TABLE `tblleads` ALTER COLUMN `assigned` DROP DEFAULT;

ALTER TABLE `tblleads` ALTER COLUMN `from_form_id` DROP DEFAULT;

ALTER TABLE `tblleads` ALTER COLUMN `leadorder` DROP DEFAULT;

ALTER TABLE `tblleads` ALTER COLUMN `lost` DROP DEFAULT;

ALTER TABLE `tblleads` ALTER COLUMN `junk` DROP DEFAULT;

ALTER TABLE `tblleads` ALTER COLUMN `last_lead_status` DROP DEFAULT;

ALTER TABLE `tblleads` ALTER COLUMN `is_imported_from_email_integration` DROP DEFAULT;

ALTER TABLE `tblleads` ALTER COLUMN `is_public` DROP DEFAULT;

ALTER TABLE `tblleads` ALTER COLUMN `client_id` DROP DEFAULT;

ALTER TABLE `tblleads` DROP PRIMARY KEY;

DROP TABLE `tblleads`;

# ---------------------------------------------------------------------- #
# Drop table "tbllead_integration_emails"                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbllead_integration_emails` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbllead_integration_emails` DROP PRIMARY KEY;

DROP TABLE `tbllead_integration_emails`;

# ---------------------------------------------------------------------- #
# Drop table "tblknowledge_base_groups"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblknowledge_base_groups` MODIFY `groupid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblknowledge_base_groups` ALTER COLUMN `color` DROP DEFAULT;

ALTER TABLE `tblknowledge_base_groups` ALTER COLUMN `group_order` DROP DEFAULT;

ALTER TABLE `tblknowledge_base_groups` DROP PRIMARY KEY;

DROP TABLE `tblknowledge_base_groups`;

# ---------------------------------------------------------------------- #
# Drop table "tblknowledge_base"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblknowledge_base` MODIFY `articleid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblknowledge_base` ALTER COLUMN `article_order` DROP DEFAULT;

ALTER TABLE `tblknowledge_base` ALTER COLUMN `staff_article` DROP DEFAULT;

ALTER TABLE `tblknowledge_base` DROP PRIMARY KEY;

DROP TABLE `tblknowledge_base`;

# ---------------------------------------------------------------------- #
# Drop table "tblitems_groups"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblitems_groups` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblitems_groups` DROP PRIMARY KEY;

DROP TABLE `tblitems_groups`;

# ---------------------------------------------------------------------- #
# Drop table "tblitemable"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblitemable` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblitemable` DROP PRIMARY KEY;

DROP TABLE `tblitemable`;

# ---------------------------------------------------------------------- #
# Drop table "tblitem_tax"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblitem_tax` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblitem_tax` DROP PRIMARY KEY;

DROP TABLE `tblitem_tax`;

# ---------------------------------------------------------------------- #
# Drop table "tblinvoices"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblinvoices` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblinvoices` ALTER COLUMN `sent` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `number_format` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `total_tax` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `cancel_overdue_reminders` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `discount_percent` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `discount_total` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `recurring` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `custom_recurring` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `cycles` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `total_cycles` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `sale_agent` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `show_shipping_on_invoice` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `show_quantity_as` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `tblinvoices` ALTER COLUMN `subscription_id` DROP DEFAULT;

ALTER TABLE `tblinvoices` DROP PRIMARY KEY;

DROP TABLE `tblinvoices`;

# ---------------------------------------------------------------------- #
# Drop table "tblinvoicepaymentrecords"                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblinvoicepaymentrecords` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblinvoicepaymentrecords` DROP PRIMARY KEY;

DROP TABLE `tblinvoicepaymentrecords`;

# ---------------------------------------------------------------------- #
# Drop table "tblgdpr_requests"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblgdpr_requests` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblgdpr_requests` ALTER COLUMN `clientid` DROP DEFAULT;

ALTER TABLE `tblgdpr_requests` ALTER COLUMN `contact_id` DROP DEFAULT;

ALTER TABLE `tblgdpr_requests` ALTER COLUMN `lead_id` DROP DEFAULT;

ALTER TABLE `tblgdpr_requests` DROP PRIMARY KEY;

DROP TABLE `tblgdpr_requests`;

# ---------------------------------------------------------------------- #
# Drop table "tblform_questions"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblform_questions` MODIFY `questionid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblform_questions` ALTER COLUMN `required` DROP DEFAULT;

ALTER TABLE `tblform_questions` DROP PRIMARY KEY;

DROP TABLE `tblform_questions`;

# ---------------------------------------------------------------------- #
# Drop table "tblexpenses_categories"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblexpenses_categories` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblexpenses_categories` DROP PRIMARY KEY;

DROP TABLE `tblexpenses_categories`;

# ---------------------------------------------------------------------- #
# Drop table "tblexpenses"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblexpenses` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblexpenses` ALTER COLUMN `tax2` DROP DEFAULT;

ALTER TABLE `tblexpenses` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `tblexpenses` ALTER COLUMN `billable` DROP DEFAULT;

ALTER TABLE `tblexpenses` ALTER COLUMN `recurring` DROP DEFAULT;

ALTER TABLE `tblexpenses` ALTER COLUMN `cycles` DROP DEFAULT;

ALTER TABLE `tblexpenses` ALTER COLUMN `total_cycles` DROP DEFAULT;

ALTER TABLE `tblexpenses` ALTER COLUMN `custom_recurring` DROP DEFAULT;

ALTER TABLE `tblexpenses` DROP PRIMARY KEY;

DROP TABLE `tblexpenses`;

# ---------------------------------------------------------------------- #
# Drop table "tblevents"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblevents` MODIFY `eventid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblevents` ALTER COLUMN `public` DROP DEFAULT;

ALTER TABLE `tblevents` ALTER COLUMN `isstartnotified` DROP DEFAULT;

ALTER TABLE `tblevents` ALTER COLUMN `reminder_before` DROP DEFAULT;

ALTER TABLE `tblevents` DROP PRIMARY KEY;

DROP TABLE `tblevents`;

# ---------------------------------------------------------------------- #
# Drop table "tblestimates"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblestimates` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblestimates` ALTER COLUMN `sent` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `number_format` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `total_tax` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `discount_percent` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `discount_total` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `sale_agent` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `show_shipping_on_estimate` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `show_quantity_as` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `pipeline_order` DROP DEFAULT;

ALTER TABLE `tblestimates` ALTER COLUMN `is_expiry_notified` DROP DEFAULT;

ALTER TABLE `tblestimates` DROP PRIMARY KEY;

DROP TABLE `tblestimates`;

# ---------------------------------------------------------------------- #
# Drop table "tblemailtemplates"                                         #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblemailtemplates` MODIFY `emailtemplateid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblemailtemplates` ALTER COLUMN `plaintext` DROP DEFAULT;

ALTER TABLE `tblemailtemplates` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `tblemailtemplates` DROP PRIMARY KEY;

DROP TABLE `tblemailtemplates`;

# ---------------------------------------------------------------------- #
# Drop table "tbldismissed_announcements"                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbldismissed_announcements` MODIFY `dismissedannouncementid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbldismissed_announcements` DROP PRIMARY KEY;

DROP TABLE `tbldismissed_announcements`;

# ---------------------------------------------------------------------- #
# Drop table "tbldepartments"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbldepartments` MODIFY `departmentid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tbldepartments` ALTER COLUMN `email_from_header` DROP DEFAULT;

ALTER TABLE `tbldepartments` ALTER COLUMN `delete_after_import` DROP DEFAULT;

ALTER TABLE `tbldepartments` ALTER COLUMN `hidefromclient` DROP DEFAULT;

ALTER TABLE `tbldepartments` DROP PRIMARY KEY;

DROP TABLE `tbldepartments`;

# ---------------------------------------------------------------------- #
# Drop table "tblcustomfieldsvalues"                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcustomfieldsvalues` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcustomfieldsvalues` DROP PRIMARY KEY;

DROP TABLE `tblcustomfieldsvalues`;

# ---------------------------------------------------------------------- #
# Drop table "tblcustomfields"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcustomfields` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcustomfields` ALTER COLUMN `required` DROP DEFAULT;

ALTER TABLE `tblcustomfields` ALTER COLUMN `display_inline` DROP DEFAULT;

ALTER TABLE `tblcustomfields` ALTER COLUMN `field_order` DROP DEFAULT;

ALTER TABLE `tblcustomfields` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `tblcustomfields` ALTER COLUMN `show_on_pdf` DROP DEFAULT;

ALTER TABLE `tblcustomfields` ALTER COLUMN `show_on_ticket_form` DROP DEFAULT;

ALTER TABLE `tblcustomfields` ALTER COLUMN `only_admin` DROP DEFAULT;

ALTER TABLE `tblcustomfields` ALTER COLUMN `show_on_table` DROP DEFAULT;

ALTER TABLE `tblcustomfields` ALTER COLUMN `show_on_client_portal` DROP DEFAULT;

ALTER TABLE `tblcustomfields` ALTER COLUMN `disalow_client_to_edit` DROP DEFAULT;

ALTER TABLE `tblcustomfields` ALTER COLUMN `bs_column` DROP DEFAULT;

ALTER TABLE `tblcustomfields` DROP PRIMARY KEY;

DROP TABLE `tblcustomfields`;

# ---------------------------------------------------------------------- #
# Drop table "tblcustomers_groups"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcustomers_groups` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcustomers_groups` DROP PRIMARY KEY;

DROP TABLE `tblcustomers_groups`;

# ---------------------------------------------------------------------- #
# Drop table "tblcurrencies"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcurrencies` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcurrencies` ALTER COLUMN `isdefault` DROP DEFAULT;

ALTER TABLE `tblcurrencies` DROP PRIMARY KEY;

DROP TABLE `tblcurrencies`;

# ---------------------------------------------------------------------- #
# Drop table "tblcreditnotes"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcreditnotes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcreditnotes` ALTER COLUMN `number_format` DROP DEFAULT;

ALTER TABLE `tblcreditnotes` ALTER COLUMN `total_tax` DROP DEFAULT;

ALTER TABLE `tblcreditnotes` ALTER COLUMN `status` DROP DEFAULT;

ALTER TABLE `tblcreditnotes` ALTER COLUMN `project_id` DROP DEFAULT;

ALTER TABLE `tblcreditnotes` ALTER COLUMN `discount_percent` DROP DEFAULT;

ALTER TABLE `tblcreditnotes` ALTER COLUMN `discount_total` DROP DEFAULT;

ALTER TABLE `tblcreditnotes` ALTER COLUMN `show_shipping_on_credit_note` DROP DEFAULT;

ALTER TABLE `tblcreditnotes` ALTER COLUMN `show_quantity_as` DROP DEFAULT;

ALTER TABLE `tblcreditnotes` DROP PRIMARY KEY;

DROP TABLE `tblcreditnotes`;

# ---------------------------------------------------------------------- #
# Drop table "tblcountries"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcountries` MODIFY `country_id` INTEGER(5) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcountries` ALTER COLUMN `short_name` DROP DEFAULT;

ALTER TABLE `tblcountries` ALTER COLUMN `long_name` DROP DEFAULT;

ALTER TABLE `tblcountries` DROP PRIMARY KEY;

DROP TABLE `tblcountries`;

# ---------------------------------------------------------------------- #
# Drop table "tblcontracts_types"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcontracts_types` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcontracts_types` DROP PRIMARY KEY;

DROP TABLE `tblcontracts_types`;

# ---------------------------------------------------------------------- #
# Drop table "tblcontracts"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcontracts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcontracts` ALTER COLUMN `isexpirynotified` DROP DEFAULT;

ALTER TABLE `tblcontracts` ALTER COLUMN `trash` DROP DEFAULT;

ALTER TABLE `tblcontracts` ALTER COLUMN `not_visible_to_client` DROP DEFAULT;

ALTER TABLE `tblcontracts` ALTER COLUMN `signed` DROP DEFAULT;

ALTER TABLE `tblcontracts` ALTER COLUMN `marked_as_signed` DROP DEFAULT;

ALTER TABLE `tblcontracts` DROP PRIMARY KEY;

DROP TABLE `tblcontracts`;

# ---------------------------------------------------------------------- #
# Drop table "tblcontract_renewals"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcontract_renewals` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcontract_renewals` ALTER COLUMN `renewed_by_staff_id` DROP DEFAULT;

ALTER TABLE `tblcontract_renewals` ALTER COLUMN `is_on_old_expiry_notified` DROP DEFAULT;

ALTER TABLE `tblcontract_renewals` DROP PRIMARY KEY;

DROP TABLE `tblcontract_renewals`;

# ---------------------------------------------------------------------- #
# Drop table "tblcontacts"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcontacts` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcontacts` ALTER COLUMN `is_primary` DROP DEFAULT;

ALTER TABLE `tblcontacts` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `tblcontacts` ALTER COLUMN `invoice_emails` DROP DEFAULT;

ALTER TABLE `tblcontacts` ALTER COLUMN `estimate_emails` DROP DEFAULT;

ALTER TABLE `tblcontacts` ALTER COLUMN `credit_note_emails` DROP DEFAULT;

ALTER TABLE `tblcontacts` ALTER COLUMN `contract_emails` DROP DEFAULT;

ALTER TABLE `tblcontacts` ALTER COLUMN `task_emails` DROP DEFAULT;

ALTER TABLE `tblcontacts` ALTER COLUMN `project_emails` DROP DEFAULT;

ALTER TABLE `tblcontacts` ALTER COLUMN `ticket_emails` DROP DEFAULT;

ALTER TABLE `tblcontacts` DROP PRIMARY KEY;

DROP TABLE `tblcontacts`;

# ---------------------------------------------------------------------- #
# Drop table "tblcontact_permissions"                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblcontact_permissions` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblcontact_permissions` DROP PRIMARY KEY;

DROP TABLE `tblcontact_permissions`;

# ---------------------------------------------------------------------- #
# Drop table "tblconsents"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblconsents` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblconsents` ALTER COLUMN `contact_id` DROP DEFAULT;

ALTER TABLE `tblconsents` ALTER COLUMN `lead_id` DROP DEFAULT;

ALTER TABLE `tblconsents` DROP PRIMARY KEY;

DROP TABLE `tblconsents`;

# ---------------------------------------------------------------------- #
# Drop table "tblconsent_purposes"                                       #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblconsent_purposes` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblconsent_purposes` DROP PRIMARY KEY;

DROP TABLE `tblconsent_purposes`;

# ---------------------------------------------------------------------- #
# Drop table "tblclients"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblclients` MODIFY `userid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblclients` ALTER COLUMN `country` DROP DEFAULT;

ALTER TABLE `tblclients` ALTER COLUMN `active` DROP DEFAULT;

ALTER TABLE `tblclients` ALTER COLUMN `billing_country` DROP DEFAULT;

ALTER TABLE `tblclients` ALTER COLUMN `shipping_country` DROP DEFAULT;

ALTER TABLE `tblclients` ALTER COLUMN `default_currency` DROP DEFAULT;

ALTER TABLE `tblclients` ALTER COLUMN `show_primary_contact` DROP DEFAULT;

ALTER TABLE `tblclients` ALTER COLUMN `registration_confirmed` DROP DEFAULT;

ALTER TABLE `tblclients` ALTER COLUMN `addedfrom` DROP DEFAULT;

ALTER TABLE `tblclients` DROP PRIMARY KEY;

DROP TABLE `tblclients`;

# ---------------------------------------------------------------------- #
# Drop table "tblannouncements"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblannouncements` MODIFY `announcementid` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblannouncements` DROP PRIMARY KEY;

DROP TABLE `tblannouncements`;

# ---------------------------------------------------------------------- #
# Drop table "tblactivity_log"                                           #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tblactivity_log` MODIFY `id` INTEGER(11) NOT NULL;

# Drop constraints #

ALTER TABLE `tblactivity_log` DROP PRIMARY KEY;

DROP TABLE `tblactivity_log`;
