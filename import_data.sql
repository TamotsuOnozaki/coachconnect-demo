-- AthleteGate Data Import
-- Generated from D1_Baseball_YMM_Merged spreadsheet
BEGIN;

-- Insert divisions
INSERT INTO divisions (name, full_name) VALUES ('D1', 'NCAA Division I') ON CONFLICT (name) DO NOTHING;
INSERT INTO divisions (name, full_name) VALUES ('D2', 'NCAA Division II') ON CONFLICT (name) DO NOTHING;
INSERT INTO divisions (name, full_name) VALUES ('D3', 'NCAA Division III') ON CONFLICT (name) DO NOTHING;
INSERT INTO divisions (name, full_name) VALUES ('NAIA', 'National Association of Intercollegiate Athletics') ON CONFLICT (name) DO NOTHING;
INSERT INTO divisions (name, full_name) VALUES ('JUCO', 'Junior College') ON CONFLICT (name) DO NOTHING;


-- Insert states
INSERT INTO states (code) VALUES ('KS') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('TX') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('GA') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('AZ') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('LA') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('AL') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('TN') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('FL') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('ID') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('NV') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('CO') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('OK') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('MO') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('SC') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('IL') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('NC') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('MD') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('IA') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('NM') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('UT') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('CA') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('NE') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('NY') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('MI') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('AR') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('PA') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('MS') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('IN') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('MA') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('OH') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('RI') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('VA') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('NH') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('CT') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('NJ') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('DC') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('WA') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('OR') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('HI') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('WV') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('SD') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('ME') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('KY') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('MN') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('ND') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('WI') ON CONFLICT (code) DO NOTHING;
INSERT INTO states (code) VALUES ('VT') ON CONFLICT (code) DO NOTHING;

-- Insert JUCO universities and coaches
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('154642', 'Allen County Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14024, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Allen County Community College' LIMIT 1), 'Kirk Doyle', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('222567', 'Alvin College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16962, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Alvin College' LIMIT 1), 'Jason Schreiber', 'jschreiber@alvincollege.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('222576', 'Amarillo College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 10854, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Amarillo College' LIMIT 1), 'Brandon Rains', 'bgrains@actx.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('138761', 'Andrew College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 37612, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='GA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Andrew College' LIMIT 1), 'Adam Biss', 'adambiss@andrewcollege.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('222822', 'Angelina College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14848, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Angelina College' LIMIT 1), 'Jon Phillips', 'jphillips@angelina.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('104160', 'Arizona Western College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15868, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AZ'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Arizona Western College' LIMIT 1), 'Jon Wente', 'jon.wente@azwestern.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('154697', 'Barton Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15356, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Barton Community College' LIMIT 1), 'Seth Wheeler', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('437103', 'Baton Rouge Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16522, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='LA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Baton Rouge Community College' LIMIT 1), 'Brandon Schmidt', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('223427', 'Blinn College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15252, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Blinn College' LIMIT 1), 'Dusty Hart', 'dusty.hart@blinn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('158431', 'Bossier Parish Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 17111, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='LA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bossier Parish Community College' LIMIT 1), 'Bobby Gilliam', 'bgilliam@bpcc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('154800', 'Butler Community College - KS', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 21295, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Butler Community College - KS' LIMIT 1), 'Seth Wheeler', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('101514', 'Calhoun Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13073, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Calhoun Community College' LIMIT 1), 'Cam Chafetz', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('104346', 'Central Arizona College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 10720, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AZ'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Central Arizona College' LIMIT 1), 'Sean Cashman', 'sean.cashman@centralaz.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('101028', 'Chattahoochee Valley Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12600, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Chattahoochee Valley Community College' LIMIT 1), 'Hunter Vick', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('219824', 'Chattanooga State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13348, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Chattanooga State Community College' LIMIT 1), 'Greg Dennis', 'greg.dennis@chattanoogastate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('133021', 'Chipola  College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 9262, 'juco_master', '2026-04-06',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('223898', 'Cisco College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 17469, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cisco College' LIMIT 1), 'David White', 'david.white@cisco.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('223922', 'Clarendon College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14589, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Clarendon College' LIMIT 1), 'Dan Morgan', 'daniel.morgan@clarendoncollege.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('219879', 'Cleveland State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14834, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cleveland State Community College' LIMIT 1), 'Aaron Bryant', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('154907', 'Cloud County Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 17584, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cloud County Community College' LIMIT 1), 'Eric Gilliland', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('101161', 'Coastal Alabama - South', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Coastal Alabama - South' LIMIT 1), 'JD Pruitt', 'jd.pruitt@coastalalabama.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('223320', 'Coastal Bend College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12875, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Coastal Bend College' LIMIT 1), 'Ryan Benitez', 'rbenitez@coastalbend.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('104425', 'Cochise College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14342, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AZ'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cochise College' LIMIT 1), 'Todd Inglehart', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('154925', 'Coffeyville Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 11863, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Coffeyville Community College' LIMIT 1), 'Jake Martin', 'martin.jake@coffeyville.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('154934', 'Colby Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13160, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Colby Community College' LIMIT 1), 'Ryan Carter', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('132851', 'College of Central Florida', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 18424, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='College of Central Florida' LIMIT 1), 'Marty Smith', 'smithm@cf.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('142559', 'College of Southern Idaho', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12803, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='ID'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='College of Southern Idaho' LIMIT 1), 'Boomer Walker', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('445735', 'College of Southern Nevada', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NV'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='College of Southern Nevada' LIMIT 1), 'Nick Garritano', 'Nick.Garritano@csn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('126748', 'Colorado Northwestern Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 20923, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='CO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Colorado Northwestern Community College' LIMIT 1), 'Lou McCollum', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('219888', 'Columbia State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13179, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Columbia State Community College' LIMIT 1), 'Desi Ammons', 'dammons@ColumbiaState.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('446163', 'Community Christian College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 27218, 'juco_master', '2026-04-06',
(SELECT id FROM states WHERE code='AZ'))
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('206996', 'Connors State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 17957, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='OK'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Connors State College' LIMIT 1), 'Perry Keith', 'pk@connorsstate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('154952', 'Cowley County Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13534, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cowley County Community College' LIMIT 1), 'Darren Burroughs', 'darren.burroughs@cowley.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('177135', 'Crowder College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16291, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Crowder College' LIMIT 1), 'Travis Lallemand', 'TravisLallemand@Crowder.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('133386', 'Daytona State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12050, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Daytona State College' LIMIT 1), 'Brock Moss', 'Brock.Moss@DaytonaState.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('158662', 'Delgado Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 18568, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='LA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Delgado Community College' LIMIT 1), 'Joe Scheuermann', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('154998', 'Dodge City Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 10189, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Dodge City Community College' LIMIT 1), 'JM Kelly', 'jkelly@dc3.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('220057', 'Dyersburg State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14329, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Dyersburg State Community College' LIMIT 1), 'Cooper Goen', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('139621', 'East Georgia College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15966, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='GA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='East Georgia College' LIMIT 1), 'Jason Mock', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('104577', 'Eastern Arizona College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16696, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AZ'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Eastern Arizona College' LIMIT 1), 'Kevin Kimball', 'kevin.kimball@eac.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('132693', 'Eastern Florida State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 11966, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Eastern Florida State College' LIMIT 1), 'Mitchell Gallagher', 'gallagherm@easternflorida.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('207050', 'Eastern Oklahoma State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 18546, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='OK'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Eastern Oklahoma State College' LIMIT 1), 'Josh Merrill', 'jmerrill@eosc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('224642', 'El Paso Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13337, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='El Paso Community College' LIMIT 1), 'Julien Soucy', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('218025', 'Florence-Darlington Technical College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 10731, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='SC'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Florence-Darlington Technical College' LIMIT 1), 'Preston McDonald', 'preston.mcdonald@fdtc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('133508', 'Florida SouthWestern State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14254, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Florida SouthWestern State College' LIMIT 1), 'Zac Cole', 'Zachary.Cole@fsw.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('155098', 'Fort Scott Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12669, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Fort Scott Community College' LIMIT 1), 'John Hill III', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('224891', 'Frank Phillips College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12877, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Frank Phillips College' LIMIT 1), 'Chad Brown', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('14570702', 'Frontier Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Frontier Community College' LIMIT 1), 'Matt McCue', 'mccuem@iecc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('101240', 'Gadsden State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 10189, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gadsden State Community College' LIMIT 1), 'Blake Lewis', 'blewis@gadsdenstate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('224961', 'Galveston College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15338, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Galveston College' LIMIT 1), 'Ryne Edmondson', 'redmondson@gc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('155104', 'Garden City Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15071, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Garden City Community College' LIMIT 1), 'Joshua Oller', 'joshua.oller@gcccks.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('198570', 'Gaston College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16866, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NC'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gaston College' LIMIT 1), 'Shohn Doty', 'doty.shohn@gaston.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('139700', 'Georgia Highlands College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13389, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='GA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgia Highlands College' LIMIT 1), 'Dash O''Neill', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('139968', 'Gordon State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14771, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='GA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gordon State College' LIMIT 1), 'Tanner Hall', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('225070', 'Grayson College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14866, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Grayson College' LIMIT 1), 'Cal Hernandez', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('134343', 'Gulf Coast State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14657, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gulf Coast State College' LIMIT 1), 'Tyler Younger', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('162706', 'Harford Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13821, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MD'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Harford Community College' LIMIT 1), 'Josh Houser', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('155052', 'Highland Community College - Kansas', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Highland Community College - Kansas' LIMIT 1), 'Landon Hay', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('153472', 'Hill College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 17791, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Hill College' LIMIT 1), 'Chris Rateike', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('134495', 'Hillsborough Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 9924, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Hillsborough Community College' LIMIT 1), 'Raydon Leaton', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('162779', 'Howard College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16774, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MD'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Howard College' LIMIT 1), 'Trevin Sonnier', 'tsonnier@howardcollege.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('155195', 'Hutchinson Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14858, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Hutchinson Community College' LIMIT 1), 'Brock Nehls', 'nehlsb@hutchcc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('153472', 'Indian Hills Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 17791, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Indian Hills Community College' LIMIT 1), 'Dru Sebastian', 'Dru.Sebastian@indianhills.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('134608', 'Indian River State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 11576, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Indian River State College' LIMIT 1), 'Frank Torre', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('153630', 'Iowa Western Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 18978, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Iowa Western Community College' LIMIT 1), 'Ryan Cougill', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('220400', 'Jackson State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15183, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Jackson State Community College' LIMIT 1), 'Charles Winders', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('101505', 'Jefferson College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14814, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Jefferson College' LIMIT 1), 'Zac Bone', 'zbone@jeffco.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('146205', 'John A. Logan College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13596, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='John A. Logan College' LIMIT 1), 'Kyle Surprenant', 'kylesurprenant@jalc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('155210', 'Johnson County Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 19785, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Johnson County Community College' LIMIT 1), 'Eric Horner', 'ehorner1@jccc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('155292', 'Kansas City Kansas Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 19855, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Kansas City Kansas Community College' LIMIT 1), 'Matt Goldbeck', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('146366', 'Kaskaskia College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 11819, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Kaskaskia College' LIMIT 1), 'Mitch Koester', 'mkoester@kaskaskia.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('144157', 'Kennedy-King College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16256, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Kennedy-King College' LIMIT 1), 'Steven Hankins', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('155450', 'Labette Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13364, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Labette Community College' LIMIT 1), 'Alex Coplon', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('146506', 'Lake Land College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 10276, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Lake Land College' LIMIT 1), 'Julio Godinez', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('127389', 'Lamar Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 20044, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='CO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Lamar Community College' LIMIT 1), 'Roberto Carrasco', 'roberto.carrasco@lamarcc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('101569', 'Lawson State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14895, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Lawson State Community College' LIMIT 1), 'Wes Riley', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('14570703', 'Lincoln Trail College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Lincoln Trail College' LIMIT 1), 'Collin Maynard', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('159407', 'Louisiana State University Eunice', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 17346, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='LA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Louisiana State University Eunice' LIMIT 1), 'Jeff Willis', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('363633', 'Luna Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 10405, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NM'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Luna Community College' LIMIT 1), 'Erick Wright', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('181312', 'McCook Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='McCook Community College' LIMIT 1), 'Jon Olsen', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('147004', 'McHenry County College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12345, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='McHenry County College' LIMIT 1), 'Jared Wacker', 'jwacker@mchenry.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('226578', 'McLennan Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12920, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='McLennan Community College' LIMIT 1), 'James Leverton', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('177995', 'Metropolitan Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14665, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Metropolitan Community College' LIMIT 1), 'Aaron Meade', 'aaron.meade@mcckc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('135717', 'Miami Dade College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13567, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Miami Dade College' LIMIT 1), 'Lazaro Llanes', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('218353', 'Midland College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14274, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='SC'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Midland College' LIMIT 1), 'Hector Rodriguez', 'hrodriguez@midland.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('178217', 'Mineral Area College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 18497, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Mineral Area College' LIMIT 1), 'Blake Jones', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('179344', 'Missouri State University - West Plains', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16592, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Missouri State University - West Plains' LIMIT 1), 'Kadem Tharp', 'KademTharp@MissouriState.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('159993', 'Monroe University', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 24932, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='LA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Monroe University' LIMIT 1), 'John Torres', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('221096', 'Motlow State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 24326, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Motlow State Community College' LIMIT 1), 'Dan McShea', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('227146', 'Navarro College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 18757, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Navarro College' LIMIT 1), 'Whoa Dill', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('155566', 'Neosho County Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16790, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Neosho County Community College' LIMIT 1), 'Steve Murry', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('187903', 'New Mexico Junior College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 9258, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NM'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='New Mexico Junior College' LIMIT 1), 'Mike Robbins', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('187912', 'New Mexico Military Institute', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 19121, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NM'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='New Mexico Military Institute' LIMIT 1), 'Chris Cook', 'cook@nmmi.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('224110', 'North Central Texas College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 10200, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='North Central Texas College' LIMIT 1), 'Shayne Kelley', 'skelley@nctc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('227225', 'Northeast Texas Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13564, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Northeast Texas Community College' LIMIT 1), 'Andy Morgan', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('127732', 'Northeastern Junior College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 21558, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='CO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Northeastern Junior College' LIMIT 1), 'Andrew Kachel', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('207290', 'Northeastern Oklahoma AM College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 18885, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='OK'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Northeastern Oklahoma AM College' LIMIT 1), 'Roger Ward', 'rdward@neo.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('136233', 'Northwest Florida State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12914, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Northwest Florida State College' LIMIT 1), 'Doug Martin', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('101736', 'Northwest Shoals Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 11340, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Northwest Shoals Community College' LIMIT 1), 'David Langston', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('158884', 'Nunez Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 18175, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='LA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Nunez Community College' LIMIT 1), 'Glenn Powell', 'gpowell@nunez.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('227304', 'Odessa College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13086, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Odessa College' LIMIT 1), 'Jay DeSoto', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('144175', 'Olive-Harvey College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16126, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Olive-Harvey College' LIMIT 1), 'Jameel Rush', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('145707', 'Olney Central College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 17333, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Olney Central College' LIMIT 1), 'Darrell Handelsman', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('127778', 'Otero College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 21020, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='CO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Otero College' LIMIT 1), 'Drew Wold', 'drew.wold@otero.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('227386', 'Panola College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13654, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Panola College' LIMIT 1), 'Todd Shelton', 'tshelton@panola.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('227401', 'Paris Junior College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13626, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Paris Junior College' LIMIT 1), 'Clay Cox', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('221643', 'Pellissippi State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13431, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Pellissippi State Community College' LIMIT 1), 'Shawn Hughes', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('136473', 'Pensacola State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 11894, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Pensacola State College' LIMIT 1), 'Bryan Lewallyn', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('136516', 'Polk State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13451, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Polk State College' LIMIT 1), 'Al Corbeil', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('155715', 'Pratt Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 19780, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Pratt Community College' LIMIT 1), 'Todd Reller', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('127918', 'Ranger College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 54800, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='CO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Ranger College' LIMIT 1), 'Dalton Rodriguez', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('148256', 'Rend Lake College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16731, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Rend Lake College' LIMIT 1), 'Chris Moddelmog', 'moddelmogc@rlc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('221397', 'Roane State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13397, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Roane State Community College' LIMIT 1), 'Christopher Hamsley', 'Hamsleycc@roanestate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('207670', 'Rose State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 18655, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='OK'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Rose State College' LIMIT 1), 'Ryon Butts', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('230746', 'Salt Lake Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14417, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='UT'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Salt Lake Community College' LIMIT 1), 'David Nelson', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('22797901', 'San Jacinto College-North', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='San Jacinto College-North' LIMIT 1), 'Eric Weaver', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('481128', 'Santa Fe College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14075, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='CA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Santa Fe College' LIMIT 1), 'Johnny Wiggs', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('137209', 'Seminole State College (OK)', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14281, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Seminole State College (OK)' LIMIT 1), 'Mack Chambers', 'm.chambers@sscok.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('137209', 'Seminole State College of Florida', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14281, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Seminole State College of Florida' LIMIT 1), 'Mike Nicholson', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('155858', 'Seward County', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12629, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='KS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Seward County' LIMIT 1), 'Mike Davidson', 'mike.davidson@sccc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('148821', 'Shawnee Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13497, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Shawnee Community College' LIMIT 1), 'Matthew White', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('102067', 'Shelton State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 20350, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Shelton State Community College' LIMIT 1), 'Bobby Sprowl', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('102076', 'Snead State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 11220, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Snead State Community College' LIMIT 1), 'Casey Underwood', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('482699', 'South Georgia State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16177, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='GA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='South Georgia State College' LIMIT 1), 'Jeff Timothy', 'jeff.timothy@sgsc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('149365', 'South Suburban College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 10834, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='South Suburban College' LIMIT 1), 'Steve Ruzich', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('181640', 'Southeast Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13186, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NE'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Southeast Community College' LIMIT 1), 'Dion Parks', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('148937', 'Southeastern Illinois College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16113, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Southeastern Illinois College' LIMIT 1), 'Jeremy Irlbeck', 'jeremy.irlbeck@sic.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('251260', 'Southern Union State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13637, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Southern Union State Community College' LIMIT 1), 'Tucker Willard', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('221485', 'Southwest Tennessee Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12999, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Southwest Tennessee Community College' LIMIT 1), 'Erik Schoenrock', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('123800', 'Southwestern Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 22104, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='CA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Southwestern Community College' LIMIT 1), 'Mike Creason', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('143215', 'Southwestern Illinois College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16249, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Southwestern Illinois College' LIMIT 1), 'David Garcia', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('475565', 'St. Charles Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13179, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NY'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='St. Charles Community College' LIMIT 1), 'Anthony Dattoli', 'adattoli@stchas.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('179308', 'St. Louis Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14560, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='St. Louis Community College' LIMIT 1), 'Scott Goodrich', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('137078', 'St. Petersburg College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12885, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='St. Petersburg College' LIMIT 1), 'Oscar Espada', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('135391', 'State College of Florida, Manatee-Sarasota', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='State College of Florida, Manatee-Sarasota' LIMIT 1), 'Tim Hill II', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('179539', 'State Fair Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14719, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='State Fair Community College' LIMIT 1), 'Jud Kindle', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('137759', 'Tallahassee State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13378, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='FL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Tallahassee State College' LIMIT 1), 'Bryan Henry', 'bryan.henry@tsc.fl.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('228608', 'Temple College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14200, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Temple College' LIMIT 1), 'Craig McMurtry', 'craig.mcmurtry@templejc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('179645', 'Three Rivers College - MO', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 18637, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Three Rivers College - MO' LIMIT 1), 'Tyler Smith', 'tylersmith@trcc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('128258', 'Trinidad State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 21458, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='CO'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Trinidad State College' LIMIT 1), 'Jason Veyna', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('149532', 'Triton College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12235, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Triton College' LIMIT 1), 'Ernest Radcliffe', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('229355', 'Tyler Junior College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16654, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Tyler Junior College' LIMIT 1), 'Brett Doe', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('218672', 'USC Lancaster', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='USC Lancaster' LIMIT 1), 'Nick Calhoun', 'calhoun1@mailbox.sc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('218681', 'USC Salkehatchie', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='USC Salkehatchie' LIMIT 1), 'Jeremy Joye', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('218690', 'USC Sumter', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='USC Sumter' LIMIT 1), 'Will Thompson', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('218706', 'USC Union', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='USC Union' LIMIT 1), 'Micah Stancil', 'stancimg@mailbox.sc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('230092', 'Utah State Eastern', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Utah State Eastern' LIMIT 1), 'Kirk Haney', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('229504', 'Vernon College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14564, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Vernon College' LIMIT 1), 'Devin McIntosh', 'dmcintosh@vernoncollege.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('222053', 'Volunteer State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16401, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Volunteer State Community College' LIMIT 1), 'Jim McGuire', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('237896', 'WVU Potomac State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='WVU Potomac State College' LIMIT 1), 'Doug Little', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('14570704', 'Wabash Valley College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Wabash Valley College' LIMIT 1), 'Aaron Biddle', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('101295', 'Wallace State Community College-Hanceville', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 19008, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Wallace State Community College-Hanceville' LIMIT 1), 'Randy Putman', 'randy.putman@wallacestate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('222062', 'Walters State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14313, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TN'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Walters State Community College' LIMIT 1), 'David Shelton', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('229799', 'Weatherford College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15978, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Weatherford College' LIMIT 1), 'Jud Kinzy', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('181817', 'Western Nebraska Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13939, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NE'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Western Nebraska Community College' LIMIT 1), 'Mike Jones', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('229832', 'Western Texas College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13335, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Western Texas College' LIMIT 1), 'Justin Davis', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('229841', 'Wharton County Junior College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 11463, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='TX'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Wharton County Junior College' LIMIT 1), 'Trey Porras', 'porrast@wcjc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('106148', 'Yavapai College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14988, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AZ'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Yavapai College' LIMIT 1), 'Marc MacMillan', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('161688', 'Allegany College of Maryland', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16170, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MD'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Allegany College of Maryland' LIMIT 1), 'Mason Heyne', 'mheyne@allegany.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('168607', 'Alpena Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12246, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MI'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Alpena Community College' LIMIT 1), 'Rob Enslen', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('161767', 'Anne Arundel Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 19841, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MD'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Anne Arundel Community College' LIMIT 1), 'Nick Hoffner', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('107318', 'Arkansas State Mid-South', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14365, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AR'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Arkansas State Mid-South' LIMIT 1), 'Jason Middleton', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('107521', 'Arkansas State University - Three Rivers', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14579, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AR'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Arkansas State University - Three Rivers' LIMIT 1), 'Brian Golden', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('420538', 'Arkansas State University Mountain Home', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 16071, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AR'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Arkansas State University Mountain Home' LIMIT 1), 'Landon Hay', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('168883', 'Bay College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 19020, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MI'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bay College' LIMIT 1), 'Mike Pankow', 'mike.pankow@baycollege.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('102429', 'Bevill State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13827, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bevill State Community College' LIMIT 1), 'Steve Woodard', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('102030', 'Bishop State Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13085, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bishop State Community College' LIMIT 1), 'James Hattenstein', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('143279', 'Black Hawk College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12291, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Black Hawk College' LIMIT 1), 'Ryan Lorber', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('198084', 'Brunswick Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12836, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NC'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Brunswick Community College' LIMIT 1), 'Robert Allen', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('202684', 'Bryant & Stratton (Ohio)', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bryant & Stratton (Ohio)' LIMIT 1), 'Austin Szemacs', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('188517', 'Bryant & Stratton College (VA)', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 23359, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NY'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bryant & Stratton College (VA)' LIMIT 1), 'Paul Bottigliero', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('188517', 'Bryant & Stratton College (WI)', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 23359, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NY'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bryant & Stratton College (WI)' LIMIT 1), 'Alex Tomter', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('210605', 'CC of Allegheny County', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 19716, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='PA'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='CC of Allegheny County' LIMIT 1), 'Austin Long', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('434672', 'CCBC Catonsville', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15781, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MD'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='CCBC Catonsville' LIMIT 1), 'Dan Blue', 'dblue@ccbcmd.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('434672', 'CCBC Dundalk', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15781, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MD'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='CCBC Dundalk' LIMIT 1), 'Nick Ritko', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('434672', 'CCBC Essex', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 15781, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MD'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='CCBC Essex' LIMIT 1), 'Sean O''Connor', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('206923', 'Carl Albert State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 23617, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='OK'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Carl Albert State College' LIMIT 1), 'Paul Pulley', 'papulley@carlalbert.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('143613', 'Carl Sandburg College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 11563, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Carl Sandburg College' LIMIT 1), 'Brandon Porter', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('198233', 'Catawba Valley Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 20446, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NC'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Catawba Valley Community College' LIMIT 1), 'Marshall McDonald', 'mmcdonald@cvcc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('162104', 'Cecil College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 14700, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MD'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cecil College' LIMIT 1), 'Charlie O''Brien', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('100760', 'Central Alabama Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 21413, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Central Alabama Community College' LIMIT 1), 'Larry Thomas', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('364025', 'Chandler-Gilbert Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 17845, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='AZ'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Chandler-Gilbert Community College' LIMIT 1), 'Jimmy Turk', 'james.turk@cgc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('162168', 'Chesapeake College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 10751, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MD'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Chesapeake College' LIMIT 1), 'Frank Szymanski', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('142328', 'Clark State College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 21925, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='ID'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Clark State College' LIMIT 1), 'Doug Adams', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('198321', 'Cleveland Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 5565, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='NC'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cleveland Community College' LIMIT 1), 'John Grigg', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('175519', 'Coahoma Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 9444, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Coahoma Community College' LIMIT 1), 'Austin Biggs', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('101161', 'Coastal Alabama - North', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Coastal Alabama - North' LIMIT 1), 'Matt Collins', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('146472', 'College of Lake County', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12694, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='IL'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='College of Lake County' LIMIT 1), 'Heath Cummings', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('162122', 'College of Southern Maryland', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 13681, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MD'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='College of Southern Maryland' LIMIT 1), 'Brad Sullivan', NULL, 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('446163', 'Community Christian (Mich.)', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', NULL, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code=NULL))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Community Christian (Mich.)' LIMIT 1), 'Scott Waite', 'swaite@cccollege.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (ipeds_id, name, division_id, organization, coa_total, data_source, data_fetched_at, state_id)
VALUES ('175573', 'Copiah-Lincoln Community College', (SELECT id FROM divisions WHERE name='JUCO'), 'NJCAA', 12490, 'juco_master', '2026-04-05',
(SELECT id FROM states WHERE code='MS'))
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Copiah-Lincoln Community College' LIMIT 1), 'Kyle Flessner', 'kyle.flessner@colin.edu', 'Head Coach')
ON CONFLICT DO NOTHING;

-- Insert integrated master universities and coaches
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('197869', 'Appalachian State University', 'Appalachian State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Appalachian State University' LIMIT 1), 'Cameron', 'Lyons', 'Cameron Lyons', 'lyonscf@appstate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('197869', 'Appalachian State University', 'Appalachian State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Appalachian State University' LIMIT 1), 'Kermit', 'Smith', 'Kermit Smith', 'smithkk1@appstate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('197869', 'Appalachian State University', 'Appalachian State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Appalachian State University' LIMIT 1), 'Trey', 'Jernigan', 'Trey Jernigan', 'jerniganjd@appstate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('197869', 'Appalachian State University', 'Appalachian State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Appalachian State University' LIMIT 1), 'Britt', 'Johnson', 'Britt Johnson', 'johnsondb1@appstate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('197869', 'Appalachian State University', 'Appalachian State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Appalachian State University' LIMIT 1), 'Jim', 'Leggett', 'Jim Leggett', 'leggettj@appstate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('197869', 'Appalachian State University', 'Appalachian State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Appalachian State University' LIMIT 1), 'Seth', 'McLemore', 'Seth McLemore', 'mclemoresa@appstate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('106458', 'Arkansas State University', 'Arkansas State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AR'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Arkansas State University' LIMIT 1), 'Brian', 'Green', 'Brian Green', 'baseball@goshockers.com', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('106458', 'Arkansas State University', 'Arkansas State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AR'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Arkansas State University' LIMIT 1), 'Mike', 'Silva', 'Mike Silva', 'msilva@astate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100858', 'Auburn University', 'Auburn University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Auburn University' LIMIT 1), 'Everett', 'Teaford', 'Everett Teaford', 'ejt0039@auburn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100858', 'Auburn University', 'Auburn University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Auburn University' LIMIT 1), 'Gabe', 'Gross', 'Gabe Gross', 'gjg0006@auburn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100858', 'Auburn University', 'Auburn University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Auburn University' LIMIT 1), 'Butch', 'Thompson', 'Butch Thompson', 'thompgb@auburn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100858', 'Auburn University', 'Auburn University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Auburn University' LIMIT 1), 'Scott', 'Foxhall', 'Scott Foxhall', 'skf0004@auburn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100858', 'Auburn University', 'Auburn University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Auburn University' LIMIT 1), 'Sara', 'Elizabeth Jackson', 'Sara Elizabeth Jackson', 'szj0042@auburn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('219602', 'Austin Peay State University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Austin Peay State University' LIMIT 1), 'Roland', 'Fanning', 'Roland Fanning', 'fanningr@apsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('219602', 'Austin Peay State University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Austin Peay State University' LIMIT 1), 'Jon', 'Littell', 'Jon Littell', 'littellj@apsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('150136', 'Ball State University', 'Ball State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Ball State University' LIMIT 1), 'Alex', 'Maloney', 'Alex Maloney', 'alex.maloney@bsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('150136', 'Ball State University', 'Ball State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Ball State University' LIMIT 1), 'Rich', 'Maloney', 'Rich Maloney', 'ramaloney@bsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('150136', 'Ball State University', 'Ball State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Ball State University' LIMIT 1), 'Justin', 'Wechsler', 'Justin Wechsler', 'justin.wechsler@bsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('223232', 'Baylor University', 'Baylor University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Baylor University' LIMIT 1), 'Brian', 'Furlong', 'Brian Furlong', 'Brian_Furlong@baylor.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('223232', 'Baylor University', 'Baylor University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Baylor University' LIMIT 1), 'Jim', 'Blair', 'Jim Blair', 'James_Blair@baylor.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('223232', 'Baylor University', 'Baylor University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Baylor University' LIMIT 1), 'Mitch', 'Thompson', 'Mitch Thompson', 'Mitch_Thompson@baylor.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('223232', 'Baylor University', 'Baylor University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Baylor University' LIMIT 1), 'Zach', 'Dillon', 'Zach Dillon', 'Zach_Dillon@baylor.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('219709', 'Belmont University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Belmont University' LIMIT 1), 'Jason', 'Stein', 'Jason Stein', 'jason.stein@belmont.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('196079', 'Binghamton University', 'Binghamton University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Binghamton University' LIMIT 1), 'Jack', 'Azoulay-Haron', 'Jack Azoulay-Haron', 'jazoulayharo@binghamton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('196079', 'Binghamton University', 'Binghamton University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Binghamton University' LIMIT 1), 'Ryan', 'Hurba', 'Ryan Hurba', 'rhurba@binghamton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('196079', 'Binghamton University', 'Binghamton University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Binghamton University' LIMIT 1), 'Tanner', 'Sinicki', 'Tanner Sinicki', 'tsinick1@binghamton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('196079', 'Binghamton University', 'Binghamton University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Binghamton University' LIMIT 1), 'Mike', 'Folli', 'Mike Folli', 'mfolli@binghamton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('164924', 'Boston College', 'Boston College', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Boston College' LIMIT 1), 'Todd', 'Interdonato', 'Todd Interdonato', 'Baseball@bc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('164924', 'Boston College', 'Boston College', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Boston College' LIMIT 1), 'Ryan', 'Forrest', 'Ryan Forrest', 'forres@bc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('164924', 'Boston College', 'Boston College', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Boston College' LIMIT 1), 'Greg', 'Sullivan', 'Greg Sullivan', 'gregory.sullivan.4@bc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('164924', 'Boston College', 'Boston College', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Boston College' LIMIT 1), 'Jacob', 'Spedden', 'Jacob Spedden', 'spedden@bc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('164924', 'Boston College', 'Boston College', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Boston College' LIMIT 1), 'Dan', 'Tischler', 'Dan Tischler', 'tischle@bc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('201441', 'Bowling Green State University', 'Bowling Green State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bowling Green State University' LIMIT 1), 'Kyle', 'Hallock', 'Kyle Hallock', 'hallock@bgsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('201441', 'Bowling Green State University', 'Bowling Green State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bowling Green State University' LIMIT 1), 'Pete', 'Horner', 'Pete Horner', 'hornerp@bgsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('201441', 'Bowling Green State University', 'Bowling Green State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bowling Green State University' LIMIT 1), 'Joey', 'Gamache', 'Joey Gamache', 'jgamach@bgsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('201441', 'Bowling Green State University', 'Bowling Green State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bowling Green State University' LIMIT 1), 'Matt', 'Rembielak', 'Matt Rembielak', 'mattr@bgsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('143358', 'Bradley University', 'Bradley University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bradley University' LIMIT 1), 'Justin', 'Dedman', 'Justin Dedman', 'jdedman@bradley.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('217156', 'Brown University', 'Brown University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='RI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Brown University' LIMIT 1), 'Grant', 'Achilles', 'Grant Achilles', 'baseball@brown.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('217165', 'Bryant University', 'Bryant University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='RI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bryant University' LIMIT 1), 'Will', 'Kaufman', 'Will Kaufman', 'Wkaufman@bryant.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('217165', 'Bryant University', 'Bryant University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='RI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bryant University' LIMIT 1), 'Tim', 'Cronin', 'Tim Cronin', 'tcronin5@bryant.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('132903', 'Bucknell University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='PA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bucknell University' LIMIT 1), 'Brett', 'Smith', 'Brett Smith', 'bjs041@bucknell.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('132903', 'Bucknell University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='PA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bucknell University' LIMIT 1), 'Josh', 'Kieffer', 'Josh Kieffer', 'jmk059@bucknell.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('150163', 'Butler University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Butler University' LIMIT 1), 'Blake', 'Beemer', 'Blake Beemer', 'btbeemer@butler.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('150163', 'Butler University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Butler University' LIMIT 1), 'Bladen', 'Bales', 'Bladen Bales', 'bbales@butler.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110422', 'California Polytechnic State University', 'California Polytechnic State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California Polytechnic State University' LIMIT 1), 'Jason', 'Gill', 'Jason Gill', 'jgill32@calpoly.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110422', 'California Polytechnic State University', 'California Polytechnic State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California Polytechnic State University' LIMIT 1), 'Logan', 'Denholm', 'Logan Denholm', 'ldenholm@calpoly.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110422', 'California Polytechnic State University', 'California Polytechnic State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California Polytechnic State University' LIMIT 1), 'Larry', 'Lee', 'Larry Lee', 'llee@calpoly.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110422', 'California Polytechnic State University', 'California Polytechnic State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California Polytechnic State University' LIMIT 1), 'Mark', 'Armstrong', 'Mark Armstrong', 'marmst11@calpoly.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110422', 'California Polytechnic State University', 'California Polytechnic State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California Polytechnic State University' LIMIT 1), 'Neal', 'Mc Ivor', 'Neal Mc Ivor', 'nmcivor@calpoly.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110422', 'California Polytechnic State University', 'California Polytechnic State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California Polytechnic State University' LIMIT 1), 'Seth', 'Moir', 'Seth Moir', 'smoir@calpoly.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110592', 'California State University', 'California State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University' LIMIT 1), 'Eddie', 'Cornejo', 'Eddie Cornejo', 'ecornejo@csun.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110592', 'California State University', 'California State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University' LIMIT 1), 'Elliot', 'Surrey', 'Elliot Surrey', 'elliot.surrey@csun.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110565', 'California State University, Bakersfield', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Bakersfield' LIMIT 1), 'Jeremy', 'Beard', 'Jeremy Beard', 'jbeard1@csub.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110556', 'California State University, Fresno', 'California State University, Fresno', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Fresno' LIMIT 1), 'Ryan', 'Overland', 'Ryan Overland', 'ryoverland@mail.fresnostate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110556', 'California State University, Fresno', 'Fresno State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Fresno' LIMIT 1), 'Jordan', 'Brink', 'Jordan Brink', 'jordanbrink@mail.fresnostate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110565', 'California State University, Fullerton', 'California State University, Fullerton', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Fullerton' LIMIT 1), 'Ryan', 'Day', 'Ryan Day', 'rday@fullerton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110565', 'California State University, Fullerton', 'California State University, Fullerton', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Fullerton' LIMIT 1), 'Josh', 'Belovsky', 'Josh Belovsky', 'jbelovsky@fullerton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110565', 'California State University, Fullerton', 'California State University Fullerton', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Fullerton' LIMIT 1), 'Neil', 'Walton', 'Neil Walton', 'nwalton@fullerton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110565', 'California State University, Fullerton', 'California State University, Fullerton', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Fullerton' LIMIT 1), 'Jason', 'Dietrich', 'Jason Dietrich', 'jdietrich@fullerton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110565', 'California State University, Fullerton', 'California State University, Fullerton', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Fullerton' LIMIT 1), 'Jason', 'Dietrich', 'Jason Dietrich', 'csufbaseball@fullerton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110565', 'California State University, Long Beach', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Long Beach' LIMIT 1), 'TJ', 'Bruce', 'TJ Bruce', 'TJ.Bruce@csulb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110592', 'California State University, Northridge', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Northridge' LIMIT 1), 'Bobby', 'Andrews', 'Bobby Andrews', 'bobby.andrews@csun.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110592', 'California State University, Northridge', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Northridge' LIMIT 1), 'Youngjin', 'Yoon', 'Youngjin Yoon', 'youngjin.yoon@csun.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110565', 'California State University, Sacramento', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Sacramento' LIMIT 1), 'Reggie', 'Christiansen', 'Reggie Christiansen', 'christra@csus.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198136', 'Campbell University', 'Campbell University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Campbell University' LIMIT 1), 'Chris', 'Marx', 'Chris Marx', 'cmarx@campbell.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('189705', 'Canisius University', 'Canisius University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Canisius University' LIMIT 1), 'Matt', 'Mazurek', 'Matt Mazurek', 'mazurekm@canisius.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('187532', 'Central Michigan University', 'Central Michigan University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Central Michigan University' LIMIT 1), 'Jake', 'Sabol', 'Jake Sabol', 'sabol1jr@cmich.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('187532', 'Central Michigan University', 'Central Michigan University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Central Michigan University' LIMIT 1), 'Doug', 'Walters', 'Doug Walters', 'walte2dl@cmich.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('187532', 'Central Michigan University', 'Central Michigan University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Central Michigan University' LIMIT 1), 'Aaron', 'Hilt', 'Aaron Hilt', 'hilt1aj@cmich.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('187532', 'Central Michigan University', 'Central Michigan University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Central Michigan University' LIMIT 1), 'Garrett', 'Navarra', 'Garrett Navarra', 'navar1gn@cmich.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('187532', 'Central Michigan University', 'Central Michigan University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Central Michigan University' LIMIT 1), 'Austin', 'Rudolph', 'Austin Rudolph', 'rudol2a@cmich.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('217688', 'Charleston Southern University', 'Charleston Southern University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='SC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Charleston Southern University' LIMIT 1), 'Dean', 'Peterson', 'Dean Peterson', 'kkuhn@csuniv.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('217819', 'College of Charleston', 'College of Charleston', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='SC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='College of Charleston' LIMIT 1), 'Sam', 'Gjormand', 'Sam Gjormand', 'gjormandse@cofc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('166124', 'College of the Holy Cross', 'College of the Holy Cross', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='College of the Holy Cross' LIMIT 1), 'Ed', 'Kahovec', 'Ed Kahovec', 'ekahovec@holycross.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('166124', 'College of the Holy Cross', 'College of the Holy Cross', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='College of the Holy Cross' LIMIT 1), 'Sam', 'Tinkham', 'Sam Tinkham', 'stinkham@holycross.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('231624', 'College of William & Mary', 'Carson-Newman', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='VA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='College of William & Mary' LIMIT 1), 'Caleb', 'Lang', 'Caleb Lang', 'clang@wm.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('190150', 'Columbia University-Barnard College', 'Columbia University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Columbia University-Barnard College' LIMIT 1), 'Brett', 'Boretti', 'Brett Boretti', 'bmb2117@columbia.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('190150', 'Columbia University-Barnard College', 'Columbia University-Barnard College', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Columbia University-Barnard College' LIMIT 1), 'Canyon', 'Kyle', 'Canyon Kyle', 'jck2187@columbia.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('190415', 'Cornell University', 'Cornell University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cornell University' LIMIT 1), 'John', 'Toppa', 'John Toppa', 'jft74@cornell.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('181002', 'Creighton University', 'Creighton University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NE'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Creighton University' LIMIT 1), 'Mark', 'Kingston', 'Mark Kingston', 'markkingston@creighton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('182670', 'Dartmouth College', 'Dartmouth College', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Dartmouth College' LIMIT 1), 'Jacob', 'Biller', 'Jacob Biller', 'jacob.d.biller@dartmouth.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('182670', 'Dartmouth College', 'Dartmouth College', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Dartmouth College' LIMIT 1), 'Blake', 'McFadden', 'Blake McFadden', 'blake.e.mcfadden@dartmouth.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198385', 'Davidson College', 'Davidson College', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Davidson College' LIMIT 1), 'Rucker', 'Taylor', 'Rucker Taylor', 'rutaylor@davidson.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198419', 'Duke University', 'Duke University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Duke University' LIMIT 1), 'Corey', 'Muscara', 'Corey Muscara', 'corey.muscara@duke.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198464', 'East Carolina University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='East Carolina University' LIMIT 1), 'Jeff', 'Palumbo', 'Jeff Palumbo', 'palumboj14@ecu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198464', 'East Carolina University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='East Carolina University' LIMIT 1), 'Austin', 'Knight', 'Austin Knight', 'knightau21@ecu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('220075', 'East Tennessee State University', 'East Tennessee State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='East Tennessee State University' LIMIT 1), 'Joe', 'Pennucci', 'Joe Pennucci', 'baseball@etsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('144892', 'Eastern Illinois University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Eastern Illinois University' LIMIT 1), 'Mike', 'Pugliese', 'Mike Pugliese', 'jmpugliese@eiu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('144892', 'Eastern Illinois University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Eastern Illinois University' LIMIT 1), 'Jason', 'Anderson', 'Jason Anderson', 'jranderson3@eiu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('169798', 'Eastern Michigan University', 'Eastern Michigan University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Eastern Michigan University' LIMIT 1), 'Craig', 'Prince', 'Craig Prince', 'cprince9@emich.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('169798', 'Eastern Michigan University', 'Eastern Michigan University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Eastern Michigan University' LIMIT 1), 'Trevor', 'Beerman', 'Trevor Beerman', 'tbeerma1@emich.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198516', 'Elon University', 'Elon University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Elon University' LIMIT 1), 'Robbie', 'Huffstetler', 'Robbie Huffstetler', 'rhuffstetler@elon.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('129242', 'Fairfield University', 'Fairfield University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CT'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Fairfield University' LIMIT 1), 'Mike', 'Caruso', 'Mike Caruso', 'michael.caruso1@fairfield.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('184603', 'Fairleigh Dickinson University', 'Fairleigh Dickinson University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NJ'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Fairleigh Dickinson University' LIMIT 1), 'Ethan', 'Newton', 'Ethan Newton', 'e.newton@fdu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('184603', 'Fairleigh Dickinson University, Metropolitan Campus', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NJ'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Fairleigh Dickinson University, Metropolitan Campus' LIMIT 1), 'Manny', 'Roman', 'Manny Roman', 'eroman@fdu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('133669', 'Florida Atlantic University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Florida Atlantic University' LIMIT 1), 'Michael', 'Cleary', 'Michael Cleary', 'clearym@fau.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('433660', 'Florida Gulf Coast University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Florida Gulf Coast University' LIMIT 1), 'Rusty', 'McKee', 'Rusty McKee', 'rmckee@fgcu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('433660', 'Florida Gulf Coast University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Florida Gulf Coast University' LIMIT 1), 'Steve', 'McKee', 'Steve McKee', 'smckee@fgcu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198561', 'Gardner-Webb University', 'Gardner-Webb University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gardner-Webb University' LIMIT 1), 'Jim', 'Chester', 'Jim Chester', 'jchester1@gardner-webb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198561', 'Gardner-Webb University', 'Gardner-Webb University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gardner-Webb University' LIMIT 1), 'Ty', 'Rechtorovic', 'Ty Rechtorovic', 'trechtorovic@gardner-webb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198561', 'Gardner-Webb University', 'Gardner-Webb University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gardner-Webb University' LIMIT 1), 'James', 'Marshall', 'James Marshall', 'jmarshall7@gardner-webb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198561', 'Gardner-Webb University', 'Gardner-Webb University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gardner-Webb University' LIMIT 1), 'Robert', 'Hardy', 'Robert Hardy', 'rhardy2@gardner-webb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198561', 'Gardner-Webb University', 'Gardner-Webb University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gardner-Webb University' LIMIT 1), 'Tom', 'Cockill', 'Tom Cockill', 'tcockill@gardner-webb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('232186', 'George Mason University', 'George Mason University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='VA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='George Mason University' LIMIT 1), 'Shawn', 'Camp', 'Shawn Camp', 'scamp4@gmu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('131469', 'George Washington University', 'George Washington University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='DC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='George Washington University' LIMIT 1), 'Tyler', 'Kavanaugh', 'Tyler Kavanaugh', 'tkavanaugh@gwu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('131469', 'George Washington University', 'George Washington University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='DC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='George Washington University' LIMIT 1), 'Gregg', 'Ritchie', 'Gregg Ritchie', 'gritchie@gwu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('131496', 'Georgetown University', 'Georgetown University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='DC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgetown University' LIMIT 1), 'George', 'Capen', 'George Capen', 'gc872@georgetown.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('131496', 'Georgetown University', 'Georgetown University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='DC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgetown University' LIMIT 1), 'Edwin', 'Thompson', 'Edwin Thompson', 'baseball@georgetown.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('139931', 'Georgia Southern University', 'Georgia Southern University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='GA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgia Southern University' LIMIT 1), 'Cody', 'Wofford', 'Cody Wofford', 'cwofford@georgiasouthern.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('139931', 'Georgia Southern University', 'Georgia Southern University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='GA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgia Southern University' LIMIT 1), 'Josh', 'Minjarez', 'Josh Minjarez', 'jminjarez@georgiasouthern.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('139931', 'Georgia Southern University', 'Georgia Southern University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='GA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgia Southern University' LIMIT 1), 'Rodney', 'Hennon', 'Rodney Hennon', 'rhennon@georgiasouthern.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('139931', 'Georgia Southern University', 'Georgia Southern University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='GA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgia Southern University' LIMIT 1), 'Jason', 'Beverlin', 'Jason Beverlin', 'jbeverlin@georgiasouthern.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('139931', 'Georgia Southern University', 'Georgia Southern University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='GA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgia Southern University' LIMIT 1), 'Tyler', 'Owens', 'Tyler Owens', 'towens@georgiasouthern.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('139940', 'Georgia State University', 'Georgia State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='GA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgia State University' LIMIT 1), 'Brad', 'Stromdahl', 'Brad Stromdahl', 'bstromdahl@gsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('235316', 'Gonzaga University', 'Gonzaga University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='WA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gonzaga University' LIMIT 1), 'Evan', 'Wells', 'Evan Wells', 'wellse@gonzaga.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('235316', 'Gonzaga University', 'Gonzaga University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='WA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gonzaga University' LIMIT 1), 'Brandon', 'Harmon', 'Brandon Harmon', 'harmonb@gonzaga.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('235316', 'Gonzaga University', 'Gonzaga University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='WA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gonzaga University' LIMIT 1), 'Mark', 'Machtolf', 'Mark Machtolf', 'machtolf@gonzaga.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('235316', 'Gonzaga University', 'Gonzaga University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='WA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gonzaga University' LIMIT 1), 'Sean', 'Winston', 'Sean Winston', 'winstons@gonzaga.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('104717', 'Grand Canyon University', 'Grand Canyon University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AZ'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Grand Canyon University' LIMIT 1), 'Paul', 'Panaccione', 'Paul Panaccione', 'paul.panaccione@gcu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('104717', 'Grand Canyon University', 'Grand Canyon University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AZ'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Grand Canyon University' LIMIT 1), 'Nate', 'Causey', 'Nate Causey', 'nathaniel.causey@gcu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('166027', 'Harvard University', 'Harvard University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Harvard University' LIMIT 1), 'Kyle', 'Decker', 'Kyle Decker', 'wdecker@fas.harvard.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('166027', 'Harvard University', 'Harvard University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Harvard University' LIMIT 1), 'Bill', 'Decker', 'Bill Decker', 'wdecker@fas.harvard.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('166027', 'Harvard University', 'Harvard University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Harvard University' LIMIT 1), 'Nate', 'Cole', 'Nate Cole', 'nathancole@fas.harvard.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('166027', 'Harvard University', 'Harvard University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Harvard University' LIMIT 1), 'Morgan', 'Brown', 'Morgan Brown', 'harvardbaseball@fas.harvard.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198695', 'High Point University', 'High Point University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='High Point University' LIMIT 1), 'Joey', 'Hammond', 'Joey Hammond', 'jhammon1@highpoint.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198695', 'High Point University', 'High Point University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='High Point University' LIMIT 1), 'Trent', 'Koerner', 'Trent Koerner', 'tkoerner@highpoint.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198695', 'High Point University', 'High Point University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='High Point University' LIMIT 1), 'Jacob', 'Edwards', 'Jacob Edwards', 'jedward9@highpoint.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198695', 'High Point University', 'High Point University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='High Point University' LIMIT 1), 'Jerry', 'Edwards', 'Jerry Edwards', 'jedward8@highpoint.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198695', 'High Point University', 'High Point University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='High Point University' LIMIT 1), 'Mickey', 'Williard', 'Mickey Williard', 'mwilliar@highpoint.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('191649', 'Hofstra University', 'Hofstra University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Hofstra University' LIMIT 1), 'Chris', 'Rojas', 'Chris Rojas', 'christopher.l.rojas@hofstra.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('162283', 'Coppin State University', 'Coppin State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MD'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Coppin State University' LIMIT 1), 'Sherman', 'Reed', 'Sherman Reed', 'sreed@coppin.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('106397', 'University of Arkansas, Fayetteville', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='KS'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Arkansas, Fayetteville' LIMIT 1), 'Matt', 'Hobbs', 'Matt Hobbs', 'mh099@uark.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228431', 'Stephen F. Austin State University', 'Stephen F. Austin State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Stephen F. Austin State University' LIMIT 1), 'Matt', 'Vanderburg', 'Matt Vanderburg', 'matthew.vanderburg@sfasu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('224147', 'Texas A\&M University-Corpus Christi', 'Texas A\&M University-Corpus Christi', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Texas A\&M University-Corpus Christi' LIMIT 1), 'Scott', 'Malone', 'Scott Malone', 'scott.malone@tamucc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('227368', 'University of Texas Rio Grande Valley', 'University of Texas Rio Grande Valley', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Texas Rio Grande Valley' LIMIT 1), 'Brad', 'Warnimont', 'Brad Warnimont', 'derek.matlock@utrgv.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('135081', 'Anderson', 'University of Arkansas', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='SC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Anderson' LIMIT 1), 'P.J.', 'Zocchi', 'P.J. Zocchi', 'pzocchi@andersonuniversity.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('135081', 'Lee', 'University of Arkansas', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Lee' LIMIT 1), 'Mark', 'Brew', 'Mark Brew', 'mbrew@leeuniversity.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('135081', 'Southwest Baptist', 'University of Arkansas', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='MO'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Southwest Baptist' LIMIT 1), 'Charles', 'Bradley', 'Charles Bradley', 'ctbradley@sbuniv.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('135081', 'Keiser University', 'University of Arkansas', 
(SELECT id FROM divisions WHERE name='NAIA'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Keiser University' LIMIT 1), 'Brook', 'Fordyce', 'Brook Fordyce', 'bfordyce@keiseruniversity.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('135081', 'Louisiana Christian University', 'University of Arkansas', 
(SELECT id FROM divisions WHERE name='NAIA'),
(SELECT id FROM states WHERE code='LA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Louisiana Christian University' LIMIT 1), 'Mike', 'Byrnes', 'Mike Byrnes', 'michael.byrnes@lcuniversity.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('229780', 'Wayland Baptist University', NULL, 
(SELECT id FROM divisions WHERE name='NAIA'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Wayland Baptist University' LIMIT 1), 'Todd', 'Weldon', 'Todd Weldon', 'todd.weldon@wbu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100751', 'University of Alabama', 'University of Alabama', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Alabama' LIMIT 1), 'Jason', 'Jackson', 'Jason Jackson', 'jjackson@ia.ua.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100751', 'University of Alabama', 'University of Alabama', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Alabama' LIMIT 1), 'Jenny', 'Sanders', 'Jenny Sanders', 'jsanders@ia.ua.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100751', 'University of Alabama', 'University of Alabama', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Alabama' LIMIT 1), 'Kasen', 'Rainey', 'Kasen Rainey', 'krainey@ia.ua.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228875', 'Texas College', 'Texas Christian University', 
(SELECT id FROM divisions WHERE name='NAIA'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Texas College' LIMIT 1), 'Jarrail', 'Jackson', 'Jarrail Jackson', 'jjackson@texascollege.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('145600', 'University of Illinois Chicago', 'University of Illinois Chicago', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Illinois Chicago' LIMIT 1), 'Daniel', 'Dulin', 'Daniel Dulin', 'ddulin@uic.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('153658', 'University of Iowa', 'University of Iowa', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Iowa' LIMIT 1), 'Rick', 'Heller', 'Rick Heller', 'rick-heller@iowabaseball.com', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('160038', 'Northwestern State University', 'Northwestern State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Northwestern State University' LIMIT 1), 'Joe', 'Craighead', 'Joe Craighead', 'jcraighead119235@nsula.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('133669', 'Florida A\&M University', 'Florida A\&M University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Florida A\&M University' LIMIT 1), 'Brett', 'Richardson', 'Brett Richardson', 'Bretton.Richardson@famu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('215947', 'Seton Hill University', 'Seton Hill University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='PA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Seton Hill University' LIMIT 1), 'Marc', 'Marizzaldi', 'Marc Marizzaldi', 'marizzaldi@setonhill.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110671', 'University of California, Riverside', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of California, Riverside' LIMIT 1), 'Justin', 'Johnson', 'Justin Johnson', 'justin.johnson@ucr.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('207388', 'Oklahoma State University', 'Oklahoma State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OK'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Oklahoma State University' LIMIT 1), 'Josh', 'Holliday', 'Josh Holliday', 'j.holliday@okstate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('216597', 'Villanova University', 'Nova Southeastern', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='PA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Villanova University' LIMIT 1), 'Kevin', 'Mulvey', 'Kevin Mulvey', 'villanovabaseball@villanova.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100858', 'Auburn University', 'Auburn University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Auburn University' LIMIT 1), 'Everett', 'Teaford', 'Everett Teaford', 'ejt0039@auburn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100858', 'Auburn University', 'Auburn University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Auburn University' LIMIT 1), 'Butch', 'Thompson', 'Butch Thompson', 'thompgb@auburn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('232982', 'Old Dominion University', 'Old Dominion University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='VA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Old Dominion University' LIMIT 1), 'Nick', 'Murray', 'Nick Murray', 'nmurray@odu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('232982', 'Old Dominion University', 'Old Dominion University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='VA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Old Dominion University' LIMIT 1), 'Ryan', 'Fineman', 'Ryan Fineman', 'rfineman@odu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('160612', 'Southeastern Louisiana University', 'Southeastern Louisiana University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='LA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Southeastern Louisiana University' LIMIT 1), 'Gabe', 'Grinder', 'Gabe Grinder', 'spencer.goodwin@southeastern.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('132602', 'Bethune-Cookman University', 'Bethune-Cookman University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bethune-Cookman University' LIMIT 1), 'Derek', 'Cartaya', 'Derek Cartaya', 'cartayad@cookman.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('132602', 'Bethune-Cookman University', 'Bethune-Cookman University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bethune-Cookman University' LIMIT 1), 'Jonathan', 'Hernandez', 'Jonathan Hernandez', 'hernandezj@cookman.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('104717', 'Grand Canyon University', 'Grand Canyon University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AZ'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Grand Canyon University' LIMIT 1), 'Nate', 'Causey', 'Nate Causey', 'nathaniel.causey@gcu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228529', 'Tarleton State University', 'Tarleton State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Tarleton State University' LIMIT 1), 'Fuller', 'Smith', 'Fuller Smith', 'fsmith1@tarleton.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('186380', 'Rutgers University', 'Rutgers University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NJ'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Rutgers University' LIMIT 1), 'Steve', 'Owens', 'Steve Owens', 'baseball@scarletknights.com', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('193399', 'Mercy University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Mercy University' LIMIT 1), 'Chris', 'Schoen', 'Chris Schoen', 'cschoen@mercy.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('193399', 'Mercy University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Mercy University' LIMIT 1), 'Randal', 'Mendez', 'Randal Mendez', 'rmendez4@mercy.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('190664', 'Queens College', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Queens College' LIMIT 1), 'Chris', 'Reardon', 'Chris Reardon', 'chris.reardon@qc.cuny.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('233374', 'University of Richmond', 'University of Richmond', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='VA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Richmond' LIMIT 1), 'Eric', 'Hill', 'Eric Hill', 'ehill4@richmond.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110653', 'University of California, Irvine', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of California, Irvine' LIMIT 1), 'J.T.', 'Bloodworth', 'J.T. Bloodworth', 'jbloodwo@uci.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('201441', 'Bowling Green State University', 'Bowling Green State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bowling Green State University' LIMIT 1), 'Joey', 'Gamache', 'Joey Gamache', 'jgamach@bgsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('201441', 'Bowling Green State University', 'Bowling Green State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bowling Green State University' LIMIT 1), 'Matt', 'Rembielak', 'Matt Rembielak', 'mattr@bgsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100858', 'Auburn University', 'Auburn University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Auburn University' LIMIT 1), 'Gabe', 'Gross', 'Gabe Gross', 'gjg0006@auburn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100858', 'Auburn University', 'Auburn University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Auburn University' LIMIT 1), 'Scott', 'Foxhall', 'Scott Foxhall', 'skf0004@auburn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('127741', 'University of Northern Colorado', 'University of Northern Colorado', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CO'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Northern Colorado' LIMIT 1), 'Mike', 'Anderson', 'Mike Anderson', 'mike.anderson@unco.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('127741', 'University of Northern Colorado', 'University of Northern Colorado', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='CO'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Northern Colorado' LIMIT 1), 'Shane', 'Opitz', 'Shane Opitz', 'shane.opitz@unco.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100724', 'Alabama State University', 'Alabama State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Alabama State University' LIMIT 1), 'Jose''', 'Vazquez', 'Jose'' Vazquez', 'jvazquez@alasu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('127565', 'Metropolitan State University of Denver', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='MI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Metropolitan State University of Denver' LIMIT 1), 'Ryan', 'Strain', 'Ryan Strain', 'rstrain1@msudenver.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198215', 'Catawba College', 'Catawba', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Catawba College' LIMIT 1), 'Jim', 'Gantt', 'Jim Gantt', 'jimgantt@catawba.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198464', 'Catawba College', 'Catawba College', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Catawba College' LIMIT 1), 'Cole', 'Hales', 'Cole Hales', 'dchales22@catawba.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('155973', 'Tabor University', NULL, 
(SELECT id FROM divisions WHERE name='NAIA'),
(SELECT id FROM states WHERE code='KS'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Tabor University' LIMIT 1), 'Mark', 'Standiford', 'Mark Standiford', 'marks@tabor.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('232566', 'Longwood University', 'Longwood University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='VA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Longwood University' LIMIT 1), 'Ray', 'Noe', 'Ray Noe', 'noerd@longwood.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198561', 'Gardner-Webb University', 'Gardner-Webb University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gardner-Webb University' LIMIT 1), 'Jim', 'Chester', 'Jim Chester', 'jchester1@gardner-webb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198561', 'Gardner-Webb University', 'Gardner-Webb University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gardner-Webb University' LIMIT 1), 'James', 'Marshall', 'James Marshall', 'jmarshall7@gardner-webb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198561', 'Gardner-Webb University', 'Gardner-Webb University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Gardner-Webb University' LIMIT 1), 'Robert', 'Hardy', 'Robert Hardy', 'rhardy2@gardner-webb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('201441', 'Bowling Green State University', 'Bowling Green State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bowling Green State University' LIMIT 1), 'Pete', 'Horner', 'Pete Horner', 'hornerp@bgsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('198695', 'Lehigh University', 'High Point University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='PA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Lehigh University' LIMIT 1), 'Pat', 'Knight', 'Pat Knight', 'pak422@lehigh.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('151263', 'University of Indianapolis', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='IN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Indianapolis' LIMIT 1), 'Connor', 'Hinerman', 'Connor Hinerman', 'hinermanc@uindy.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('102377', 'Tuskegee University', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Tuskegee University' LIMIT 1), 'Chadwick', 'Hall', 'Chadwick Hall', 'chall@tuskegee.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('232089', 'Ferrum', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='VA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Ferrum' LIMIT 1), 'Eric', 'Owens', 'Eric Owens', 'eowens@ferrum.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('203517', 'Kent State University', 'Kent State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Kent State University' LIMIT 1), 'Ryan', 'Shawley', 'Ryan Shawley', 'rshawley@kent.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('204024', 'Miami University', 'Miami University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Miami University' LIMIT 1), 'Debbie', 'Vogt', 'Debbie Vogt', 'ramseyda@miamioh.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('100751', 'University of Alabama', 'University of Alabama', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Alabama' LIMIT 1), 'Garrett', 'Wood', 'Garrett Wood', 'gwood@ia.ua.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('139959', 'University of Georgia', 'University of Georgia', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='GA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Georgia' LIMIT 1), 'Kevin', 'Knight', 'Kevin Knight', 'kknight@sports.uga.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('139959', 'University of Georgia', 'University of Georgia', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='GA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Georgia' LIMIT 1), 'Josh', 'Simpson', 'Josh Simpson', 'jsimpson@sports.uga.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('220710', 'Maryville College', 'Maryville College', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Maryville College' LIMIT 1), 'Pat', 'Evers', 'Pat Evers', 'pevers@maryville.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('209551', 'Oregon State University', 'Oregon State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OR'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Oregon State University' LIMIT 1), 'Rich', 'Dorman', 'Rich Dorman', 'richard.dorman@oregonstate.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('199120', 'University of North Carolina, Chapel Hill', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of North Carolina, Chapel Hill' LIMIT 1), 'Dave', 'Arendas', 'Dave Arendas', 'arendas@unc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('200004', 'Western Carolina University', 'Western Carolina University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Western Carolina University' LIMIT 1), 'Alan', 'Beck', 'Alan Beck', 'acbeck@email.wcu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228802', 'University of Texas at Tyler', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Texas at Tyler' LIMIT 1), 'Jeff', 'Robinson', 'Jeff Robinson', 'jrobinson@uttyler.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('207582', 'Oral Roberts University', 'Oral Roberts University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='OK'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Oral Roberts University' LIMIT 1), 'Wes', 'Davis', 'Wes Davis', 'wdavis@oru.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('142461', 'Northwest Nazarene University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='ID'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Northwest Nazarene University' LIMIT 1), 'Joe', 'Schaefer', 'Joe Schaefer', 'josephschaefer@nnu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('186584', 'Seton Hill University', 'Seton Hall University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='PA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Seton Hill University' LIMIT 1), 'Caiden', 'Wood', 'Caiden Wood', 'c.wood@setonhill.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('136172', 'University of North Florida', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of North Florida' LIMIT 1), 'Joe', 'Mercadante', 'Joe Mercadante', 'j.mercadante@unf.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('139959', 'University of Georgia', 'University of Georgia', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='GA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Georgia' LIMIT 1), 'Will', 'Coggin', 'Will Coggin', 'wcoggin@sports.uga.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('106397', 'University of Arkansas', 'University of Arkansas', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='KS'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Arkansas' LIMIT 1), 'Dave', 'Van Horn', 'Dave Van Horn', 'dvanhorn@uark.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('185828', 'New Jersey Institute of Technology', 'New Jersey Institute of Technology', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NJ'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='New Jersey Institute of Technology' LIMIT 1), 'Robbie', 'McClellan', 'Robbie McClellan', 'rmcclell@njit.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('185828', 'New Jersey Institute of Technology', 'New Jersey Institute of Technology', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NJ'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='New Jersey Institute of Technology' LIMIT 1), 'Marquay', 'Mayo', 'Marquay Mayo', 'marquay.mayo@njit.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('102049', 'Samford University', 'Samford University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='AL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Samford University' LIMIT 1), 'Tyler', 'Shrout', 'Tyler Shrout', 'tshrout@samford.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('220075', 'East Tennessee State University', 'East Tennessee State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TN'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='East Tennessee State University' LIMIT 1), 'Joe', 'Pennucci', 'Joe Pennucci', 'baseball@etsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('234085', 'Virginia Military Institute', 'Virginia Military Institute', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='VA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Virginia Military Institute' LIMIT 1), 'Sam', 'Roberts', 'Sam Roberts', 'robertsjs@vmi.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('206695', 'Wittenberg University', NULL, 
(SELECT id FROM divisions WHERE name='D3'),
(SELECT id FROM states WHERE code='OH'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Wittenberg University' LIMIT 1), 'Mitchell', 'Griffiths', 'Mitchell Griffiths', 'griffithsm@wittenberg.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('160038', 'Northwestern State University', 'Northwestern State University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='IL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Northwestern State University' LIMIT 1), 'Billy', 'Henley', 'Billy Henley', 'Henleyw@nsula.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('160612', 'Southeastern Louisiana University', 'Southeastern Louisiana University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='LA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Southeastern Louisiana University' LIMIT 1), 'Evan', 'Bush', 'Evan Bush', 'evan.bush@southeastern.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('160612', 'Southeastern Louisiana University', 'Southeastern Louisiana University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='LA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Southeastern Louisiana University' LIMIT 1), 'Taylor', 'Dugas', 'Taylor Dugas', 'taylor.dugas-2@southeastern.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('164739', 'Bentley University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='MA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Bentley University' LIMIT 1), 'Brandon', 'Bingel', 'Brandon Bingel', 'bbingel@bentley.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('482680', 'University of North Georgia', 'University of North Georgia', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='GA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of North Georgia' LIMIT 1), 'Nolan', 'Belcher', 'Nolan Belcher', 'nolan.belcher@ung.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('223232', 'Baylor University', 'Baylor University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Baylor University' LIMIT 1), 'Jim', 'Blair', 'Jim Blair', 'James_Blair@baylor.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('131496', 'Georgetown University', 'Georgetown University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='DC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgetown University' LIMIT 1), 'George', 'Capen', 'George Capen', 'gc872@georgetown.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('131496', 'Georgetown University', 'Georgetown University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='DC'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Georgetown University' LIMIT 1), 'Edwin', 'Thompson', 'Edwin Thompson', 'baseball@georgetown.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('163268', 'University of Maryland, Baltimore County', NULL, 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='MD'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Maryland, Baltimore County' LIMIT 1), 'Phil', 'Disher', 'Phil Disher', 'disher@umbc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('190150', 'Columbia University-Barnard College', 'Columbia University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Columbia University-Barnard College' LIMIT 1), 'Brett', 'Boretti', 'Brett Boretti', 'bmb2117@columbia.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('190415', 'Cornell University', 'Cornell University', 
(SELECT id FROM divisions WHERE name='D1'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cornell University' LIMIT 1), 'John', 'Toppa', 'John Toppa', 'jft74@cornell.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('109785', 'Azusa Pacific', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Azusa Pacific' LIMIT 1), 'Kirk', 'Nieuwenhuis', 'Kirk Nieuwenhuis', 'knieuwenhuis@apu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('190664', 'Queens College', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Queens College' LIMIT 1), 'Chris', 'Reardon', 'Chris Reardon', 'chris.reardon@qc.cuny.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('136950', 'Rollins College', 'Rollins College', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Rollins College' LIMIT 1), 'Jon', 'Sjogren', 'Jon Sjogren', 'baseball@rollins.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('136330', 'Palm Beach Atlantic', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Palm Beach Atlantic' LIMIT 1), 'Kent', 'Bottenfield', 'Kent Bottenfield', 'kent_bottenfield@pba.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('141644', 'Hawaii Pacific University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='HI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Hawaii Pacific University' LIMIT 1), 'Dane', 'Fujinaka', 'Dane Fujinaka', 'dfujinaka@hpu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('441942', 'California State University, Monterey Bay', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Monterey Bay' LIMIT 1), 'Walt', 'White', 'Walt White', 'wawhite@csumb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110422', 'Cal Poly Pomona University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal Poly Pomona University' LIMIT 1), 'Jenzen', 'Torres', 'Jenzen Torres', 'jenzentorres@cpp.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110422', 'Cal Poly Pomona University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal Poly Pomona University' LIMIT 1), 'Randy', 'Betten', 'Randy Betten', 'rbetten@cpp.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('141574', 'Hawaii Hilo', 'University of Hawaii Manoa', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='HI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Hawaii Hilo' LIMIT 1), 'Garett', 'Yukumoto', 'Garett Yukumoto', 'garetty@hawaii.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('113856', 'Concordia-Irvine', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Concordia-Irvine' LIMIT 1), 'Joe', 'Turgeon', 'Joe Turgeon', 'joe.turgeon@cui.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('141486', 'Chaminade', 'Chaminade', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='HI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Chaminade' LIMIT 1), 'Chad', 'Konishi', 'Chad Konishi', 'baseball@chaminade.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('123651', 'Vanguard', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Vanguard' LIMIT 1), 'Rob', 'Pegg', 'Rob Pegg', 'robert.pegg@vanguard.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('136950', 'Rollins College', 'Rollins College', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Rollins College' LIMIT 1), 'Patrick', 'Szczerba', 'Patrick Szczerba', 'pszczerba@rollins.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('125462', 'Westmont College', 'Westmont College', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Westmont College' LIMIT 1), 'Paul', 'Svagdis', 'Paul Svagdis', 'psvagdis@westmont.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('191083', 'D''Youville', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='D''Youville' LIMIT 1), 'Kyle', 'McLain', 'Kyle McLain', 'mclaink@dyu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('441942', 'California State University, Monterey Bay', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Monterey Bay' LIMIT 1), 'Dennis', 'Peters', 'Dennis Peters', 'dpeters@csumb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('441942', 'California State University, Monterey Bay', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Monterey Bay' LIMIT 1), 'Derek', 'Bell', 'Derek Bell', 'dbell@csumb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228705', 'Texas A\&M-Kingsville', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Texas A\&M-Kingsville' LIMIT 1), 'Jason', 'Gonzales', 'Jason Gonzales', 'jason.gonzales@tamuk.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('137078', 'University of West Florida', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of West Florida' LIMIT 1), 'Mike', 'Jeffcoat', 'Mike Jeffcoat', 'mjeffcoat@uwf.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('137078', 'University of West Florida', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of West Florida' LIMIT 1), 'Kevin', 'Johnson', 'Kevin Johnson', 'kjohnson6@uwf.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('133553', 'Embry-Riddle', 'Embry-Riddle', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Embry-Riddle' LIMIT 1), 'Dave', 'Therneau', 'Dave Therneau', 'thernead@erau.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('195243', 'St. Thomas Aquinas', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='St. Thomas Aquinas' LIMIT 1), 'John-Michael', 'Guarino', 'John-Michael Guarino', 'jguarino@stac.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('137078', 'University of West Florida', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of West Florida' LIMIT 1), 'Kyle', 'Brown', 'Kyle Brown', 'kbrown1@uwf.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110097', 'Biola', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Biola' LIMIT 1), 'Jesse', 'Rodgers', 'Jesse Rodgers', 'jesse.rodgers@biola.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110495', 'Cal State Dominguez Hills', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State Dominguez Hills' LIMIT 1), 'Tyler', 'Wright', 'Tyler Wright', 'twright@csudh.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('133492', 'Eckerd', 'Eckerd College', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Eckerd' LIMIT 1), 'Josh', 'Beauregard', 'Josh Beauregard', 'beaurejm@eckerd.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110495', 'Cal State Stanislaus', 'Stanford University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State Stanislaus' LIMIT 1), 'Kenny', 'Leonesio', 'Kenny Leonesio', 'kleonesio@csustan.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('190761', 'Dominican (NY)', 'Dominican (NY)', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Dominican (NY)' LIMIT 1), 'Rick', 'Giannetti', 'Rick Giannetti', 'rick.giannetti@duny.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('122728', 'Jessup', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Jessup' LIMIT 1), 'Trevor', 'Paine', 'Trevor Paine', 'tpaine@jessup.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('132657', 'Lynn', 'Lynn University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Lynn' LIMIT 1), 'Rudy', 'Garbalosa', 'Rudy Garbalosa', 'rgarbalosa@lynn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('117800', 'Menlo', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Menlo' LIMIT 1), 'Mike', 'Givens', 'Mike Givens', 'mike.givens@menlo.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('136215', 'Nova Southeastern', 'Nova Southeastern', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Nova Southeastern' LIMIT 1), 'Adrian', 'Morales', 'Adrian Morales', 'amorales@nova.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228547', 'Sul Ross State', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Sul Ross State' LIMIT 1), 'Caleb', 'Abney', 'Caleb Abney', 'cra24vv@sulross.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228778', 'Texas A\&M-Texarkana', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Texas A\&M-Texarkana' LIMIT 1), 'Chase', 'Brewster', 'Chase Brewster', 'cbrewster@tamut.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110574', 'Cal State East Bay', 'East Tennessee State University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State East Bay' LIMIT 1), 'Mike', 'Cummins', 'Mike Cummins', 'mike.cummins@csueastbay.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110592', 'Cal State Los Angeles', 'Cal State San Bernardino', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State Los Angeles' LIMIT 1), 'Vince', 'Beringhele', 'Vince Beringhele', 'vbering@calstatela.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110510', 'Cal State San Bernardino', 'Cal State San Bernardino', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State San Bernardino' LIMIT 1), 'Mike', 'Nadeau', 'Mike Nadeau', 'michael.nadeau@csusb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('366711', 'Cal State San Marcos', 'Cal State San Marcos', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State San Marcos' LIMIT 1), 'Jose', 'Garcia', 'Jose Garcia', 'jogarcia@csusm.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110538', 'Chico State University', 'Chico State', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Chico State University' LIMIT 1), 'Dave', 'Taylor', 'Dave Taylor', 'dmtaylor@csuchico.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110556', 'Fresno Pacific', 'Fresno State University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Fresno Pacific' LIMIT 1), 'Oscar', 'Hirschkorn', 'Oscar Hirschkorn', 'oscar.hirschkorn@fresno.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('121150', 'Point Loma Nazarene University', 'Point Loma Nazarene University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Point Loma Nazarene University' LIMIT 1), 'Justin', 'James', 'Justin James', 'justinjames@pointloma.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('121150', 'Point Loma Nazarene University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Point Loma Nazarene University' LIMIT 1), 'Adrian', 'Orozco', 'Adrian Orozco', 'adrianorozco333@pointloma.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('121150', 'Point Loma Nazarene University', 'Point Loma Nazarene University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Point Loma Nazarene University' LIMIT 1), 'Brycen', 'Campbell', 'Brycen Campbell', 'bcampbel@pointloma.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('121309', 'Point Loma Nazarene University', 'Point Loma Nazarene', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Point Loma Nazarene University' LIMIT 1), 'Justin', 'James', 'Justin James', 'justinjames@pointloma.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('122597', 'San Francisco State', 'San Francisco State', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='San Francisco State' LIMIT 1), 'Tony', 'Schifano', 'Tony Schifano', 'tschif@sfsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('238032', 'Westmont College', 'West Virginia University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Westmont College' LIMIT 1), 'Elijah', 'Ontiveros', 'Elijah Ontiveros', 'eontiveros@westmont.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('109785', 'Azusa Pacific', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Azusa Pacific' LIMIT 1), 'Kirk', 'Nieuwenhuis', 'Kirk Nieuwenhuis', 'knieuwenhuis@apu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110097', 'Biola', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Biola' LIMIT 1), 'Jesse', 'Rodgers', 'Jesse Rodgers', 'jesse.rodgers@biola.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110422', 'Cal Poly Pomona University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal Poly Pomona University' LIMIT 1), 'Jenzen', 'Torres', 'Jenzen Torres', 'jenzentorres@cpp.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110422', 'Cal Poly Pomona University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal Poly Pomona University' LIMIT 1), 'Randy', 'Betten', 'Randy Betten', 'rbetten@cpp.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110495', 'Cal State Dominguez Hills', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State Dominguez Hills' LIMIT 1), 'Tyler', 'Wright', 'Tyler Wright', 'twright@csudh.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110495', 'Cal State Stanislaus', 'Stanford University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State Stanislaus' LIMIT 1), 'Kenny', 'Leonesio', 'Kenny Leonesio', 'kleonesio@csustan.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110510', 'Cal State San Bernardino', 'Cal State San Bernardino', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State San Bernardino' LIMIT 1), 'Mike', 'Nadeau', 'Mike Nadeau', 'michael.nadeau@csusb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110538', 'Chico State University', 'Chico State', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Chico State University' LIMIT 1), 'Dave', 'Taylor', 'Dave Taylor', 'dmtaylor@csuchico.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110556', 'Fresno Pacific', 'Fresno State University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Fresno Pacific' LIMIT 1), 'Oscar', 'Hirschkorn', 'Oscar Hirschkorn', 'oscar.hirschkorn@fresno.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110574', 'Cal State East Bay', 'East Tennessee State University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State East Bay' LIMIT 1), 'Mike', 'Cummins', 'Mike Cummins', 'mike.cummins@csueastbay.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('110592', 'Cal State Los Angeles', 'Cal State San Bernardino', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State Los Angeles' LIMIT 1), 'Vince', 'Beringhele', 'Vince Beringhele', 'vbering@calstatela.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('113856', 'Concordia-Irvine', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Concordia-Irvine' LIMIT 1), 'Joe', 'Turgeon', 'Joe Turgeon', 'joe.turgeon@cui.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('117800', 'Menlo', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Menlo' LIMIT 1), 'Mike', 'Givens', 'Mike Givens', 'mike.givens@menlo.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('121150', 'Point Loma Nazarene University', 'Point Loma Nazarene University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Point Loma Nazarene University' LIMIT 1), 'Justin', 'James', 'Justin James', 'justinjames@pointloma.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('121150', 'Point Loma Nazarene University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Point Loma Nazarene University' LIMIT 1), 'Adrian', 'Orozco', 'Adrian Orozco', 'adrianorozco333@pointloma.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('121150', 'Point Loma Nazarene University', 'Point Loma Nazarene University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Point Loma Nazarene University' LIMIT 1), 'Brycen', 'Campbell', 'Brycen Campbell', 'bcampbel@pointloma.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('121309', 'Point Loma Nazarene University', 'Point Loma Nazarene', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Point Loma Nazarene University' LIMIT 1), 'Justin', 'James', 'Justin James', 'justinjames@pointloma.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('122597', 'San Francisco State', 'San Francisco State', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='San Francisco State' LIMIT 1), 'Tony', 'Schifano', 'Tony Schifano', 'tschif@sfsu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('122728', 'Jessup', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Jessup' LIMIT 1), 'Trevor', 'Paine', 'Trevor Paine', 'tpaine@jessup.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('123651', 'Vanguard', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Vanguard' LIMIT 1), 'Rob', 'Pegg', 'Rob Pegg', 'robert.pegg@vanguard.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('125462', 'Westmont College', 'Westmont College', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Westmont College' LIMIT 1), 'Paul', 'Svagdis', 'Paul Svagdis', 'psvagdis@westmont.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('132471', 'Barry', 'Barry University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Barry' LIMIT 1), 'DJ', 'Price', 'DJ Price', 'dprice@barry.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('132657', 'Lynn', 'Lynn University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Lynn' LIMIT 1), 'Rudy', 'Garbalosa', 'Rudy Garbalosa', 'rgarbalosa@lynn.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('133492', 'Eckerd', 'Eckerd College', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Eckerd' LIMIT 1), 'Josh', 'Beauregard', 'Josh Beauregard', 'beaurejm@eckerd.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('133526', 'Edward Waters', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Edward Waters' LIMIT 1), 'Reginald', 'Johnson', 'Reginald Johnson', 'r.johnson@ewc.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('133553', 'Embry-Riddle', 'Embry-Riddle', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Embry-Riddle' LIMIT 1), 'Dave', 'Therneau', 'Dave Therneau', 'thernead@erau.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('133711', 'Flagler', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Flagler' LIMIT 1), 'Greg', 'Guilliams', 'Greg Guilliams', 'gguilliams@flagler.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('133881', 'Florida Tech', 'Florida Tech', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Florida Tech' LIMIT 1), 'Jeff', 'Tam', 'Jeff Tam', 'jtam@fit.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('136215', 'Nova Southeastern', 'Nova Southeastern', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Nova Southeastern' LIMIT 1), 'Adrian', 'Morales', 'Adrian Morales', 'amorales@nova.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('136330', 'Palm Beach Atlantic', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Palm Beach Atlantic' LIMIT 1), 'Kent', 'Bottenfield', 'Kent Bottenfield', 'kent_bottenfield@pba.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('136950', 'Rollins College', 'Rollins College', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Rollins College' LIMIT 1), 'Jon', 'Sjogren', 'Jon Sjogren', 'baseball@rollins.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('136950', 'Rollins College', 'Rollins College', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Rollins College' LIMIT 1), 'Patrick', 'Szczerba', 'Patrick Szczerba', 'pszczerba@rollins.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('137078', 'University of West Florida', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of West Florida' LIMIT 1), 'Mike', 'Jeffcoat', 'Mike Jeffcoat', 'mjeffcoat@uwf.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('137078', 'University of West Florida', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of West Florida' LIMIT 1), 'Kevin', 'Johnson', 'Kevin Johnson', 'kjohnson6@uwf.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('137078', 'University of West Florida', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of West Florida' LIMIT 1), 'Kyle', 'Brown', 'Kyle Brown', 'kbrown1@uwf.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('137847', 'University of Tampa', 'University of Tampa', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Tampa' LIMIT 1), 'Jose', 'Jimenez', 'Jose Jimenez', 'jjimenez@ut.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('137847', 'University of Tampa', 'University of Tampa', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Tampa' LIMIT 1), 'Joe', 'Urso', 'Joe Urso', 'jurso@ut.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('137847', 'University of Tampa', 'University of Tampa', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Tampa' LIMIT 1), 'Sam', 'Militello', 'Sam Militello', 'smilitello@ut.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('137847', 'University of Tampa', 'University of Tampa', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Tampa' LIMIT 1), 'Christopher', 'Rosenbaum', 'Christopher Rosenbaum', 'christopherrosenbaum@ut.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('141486', 'Chaminade', 'Chaminade', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='HI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Chaminade' LIMIT 1), 'Chad', 'Konishi', 'Chad Konishi', 'baseball@chaminade.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('141574', 'Hawaii Hilo', 'University of Hawaii Manoa', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='HI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Hawaii Hilo' LIMIT 1), 'Garett', 'Yukumoto', 'Garett Yukumoto', 'garetty@hawaii.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('141644', 'Hawaii Pacific University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='HI'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Hawaii Pacific University' LIMIT 1), 'Dane', 'Fujinaka', 'Dane Fujinaka', 'dfujinaka@hpu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('179159', 'Saint Leo', 'Saint Louis University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='FL'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Saint Leo' LIMIT 1), 'Josh', 'Keim', 'Josh Keim', 'joshua.keim@saintleo.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('188429', 'Adelphi University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Adelphi University' LIMIT 1), 'Mike', 'Gaffney', 'Mike Gaffney', 'mgaffney@adelphi.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('188429', 'Adelphi University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Adelphi University' LIMIT 1), 'Pat', 'McCabe', 'Pat McCabe', 'patmccabe@adelphi.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('190664', 'Queens College', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Queens College' LIMIT 1), 'Chris', 'Reardon', 'Chris Reardon', 'chris.reardon@qc.cuny.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('190761', 'Dominican (NY)', 'Dominican (NY)', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Dominican (NY)' LIMIT 1), 'Rick', 'Giannetti', 'Rick Giannetti', 'rick.giannetti@duny.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('191083', 'D''Youville', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='D''Youville' LIMIT 1), 'Kyle', 'McLain', 'Kyle McLain', 'mclaink@dyu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('193292', 'Molloy University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Molloy University' LIMIT 1), 'Joe', 'Fucarino', 'Joe Fucarino', 'jfucarino@molloy.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('193399', 'Mercy University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Mercy University' LIMIT 1), 'Chris', 'Schoen', 'Chris Schoen', 'cschoen@mercy.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('193399', 'Mercy University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Mercy University' LIMIT 1), 'Randal', 'Mendez', 'Randal Mendez', 'rmendez4@mercy.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('193399', 'Mercy University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Mercy University' LIMIT 1), 'Marc', 'Palmieri', 'Marc Palmieri', 'mpalmieri2@mercy.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('194310', 'Pace', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Pace' LIMIT 1), 'Hank', 'Manning', 'Hank Manning', 'hmanning@pace.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('195243', 'St. Thomas Aquinas', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='St. Thomas Aquinas' LIMIT 1), 'John-Michael', 'Guarino', 'John-Michael Guarino', 'jguarino@stac.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('196167', 'Staten Island', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='NY'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Staten Island' LIMIT 1), 'Michael', 'Mauro', 'Michael Mauro', 'Michael.Mauro@csi.cuny.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('222831', 'Angelo State University', 'Angelo State University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Angelo State University' LIMIT 1), 'Adam', 'Foster', 'Adam Foster', 'adam.foster@angelo.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('222831', 'Angelo State University', 'Angelo State University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Angelo State University' LIMIT 1), 'Kevin', 'Brooks', 'Kevin Brooks', 'kevin.brooks@angelo.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('222831', 'Angelo State University', 'Angelo State University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Angelo State University' LIMIT 1), 'Sam', 'Mote', 'Sam Mote', 'sam.mote@angelo.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('226152', 'Lubbock Christian University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Lubbock Christian University' LIMIT 1), 'Jermaine', 'Van Buren', 'Jermaine Van Buren', 'jermaine.vanburen@lcu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('226152', 'Lubbock Christian University', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Lubbock Christian University' LIMIT 1), 'Nathan', 'Blackwood', 'Nathan Blackwood', 'Nathan.Blackwood@LCU.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('227845', 'St. Edward''s', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='St. Edward''s' LIMIT 1), 'Ryan', 'Femath', 'Ryan Femath', 'rfemath@stedwards.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228149', 'St. Mary''s (TX)', 'St. Mary''s University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='St. Mary''s (TX)' LIMIT 1), 'Frank', 'Kellner', 'Frank Kellner', 'fkellner@stmarytx.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228547', 'Sul Ross State', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Sul Ross State' LIMIT 1), 'Caleb', 'Abney', 'Caleb Abney', 'cra24vv@sulross.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228705', 'Texas A\&M-Kingsville', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Texas A\&M-Kingsville' LIMIT 1), 'Jason', 'Gonzales', 'Jason Gonzales', 'jason.gonzales@tamuk.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228778', 'Texas A\&M-Texarkana', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Texas A\&M-Texarkana' LIMIT 1), 'Chase', 'Brewster', 'Chase Brewster', 'cbrewster@tamut.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228787', 'UT Dallas', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='UT Dallas' LIMIT 1), 'Travis', 'Graves', 'Travis Graves', 'travis.graves@utdallas.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228802', 'University of Texas at Tyler', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Texas at Tyler' LIMIT 1), 'Jeff', 'Robinson', 'Jeff Robinson', 'jrobinson@uttyler.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228802', 'University of Texas at Tyler', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Texas at Tyler' LIMIT 1), 'Wade', 'Pope', 'Wade Pope', 'jpope@uttyler.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228802', 'University of Texas at Tyler', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Texas at Tyler' LIMIT 1), 'Brent', 'Porche', 'Brent Porche', 'bporche@uttyler.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228802', 'University of Texas at Tyler', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='University of Texas at Tyler' LIMIT 1), 'Taylor', 'White', 'Taylor White', 'TaylorWhite@uttyler.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('228802', 'UT Tyler', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='UT Tyler' LIMIT 1), 'Brent', 'Porche', 'Brent Porche', 'bporche@uttyler.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('229018', 'UT Permian Basin', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='UT Permian Basin' LIMIT 1), 'Justin', 'Phillips', 'Justin Phillips', 'phillips_j@utpb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('229160', 'Texas Wesleyan', 'Texas Wesleyan', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Texas Wesleyan' LIMIT 1), 'Bobby', 'Garza', 'Bobby Garza', 'robertgarza@txwes.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('229814', 'West Texas A\&M', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='TX'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='West Texas A\&M' LIMIT 1), 'Cory', 'Hall', 'Cory Hall', 'chall@wtamu.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('238032', 'Westmont College', 'West Virginia University', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Westmont College' LIMIT 1), 'Elijah', 'Ontiveros', 'Elijah Ontiveros', 'eontiveros@westmont.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('366711', 'Cal State San Marcos', 'Cal State San Marcos', 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='Cal State San Marcos' LIMIT 1), 'Jose', 'Garcia', 'Jose Garcia', 'jogarcia@csusm.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('441942', 'California State University, Monterey Bay', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Monterey Bay' LIMIT 1), 'Walt', 'White', 'Walt White', 'wawhite@csumb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('441942', 'California State University, Monterey Bay', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Monterey Bay' LIMIT 1), 'Dennis', 'Peters', 'Dennis Peters', 'dpeters@csumb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;
INSERT INTO universities (external_id, name, true_name, division_id, state_id, data_source)
VALUES ('441942', 'California State University, Monterey Bay', NULL, 
(SELECT id FROM divisions WHERE name='D2'),
(SELECT id FROM states WHERE code='CA'), 'integrated_master')
ON CONFLICT DO NOTHING;
INSERT INTO coaches (university_id, first_name, last_name, full_name, email, role)
VALUES ((SELECT id FROM universities WHERE name='California State University, Monterey Bay' LIMIT 1), 'Derek', 'Bell', 'Derek Bell', 'dbell@csumb.edu', 'Head Coach')
ON CONFLICT DO NOTHING;

-- Import complete
COMMIT;
