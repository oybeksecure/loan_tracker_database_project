-- =============================================
-- Loan Tracker Database Sample Data
-- =============================================

-- =============================================
-- 1. users (20 rows)
-- =============================================
INSERT INTO users (user_id, username, email, password) VALUES
('U0000001', 'jinho_k',    'jinho.kim@gmail.com',       'SecureP@ss1'),
('U0000002', 'minji_p',    'minji.park@naver.com',      'MyPass#2024'),
('U0000003', 'hyunwoo_l',  'hyunwoo.lee@kakao.com',     'Hw!Lee2024'),
('U0000004', 'soyeon_c',   'soyeon.choi@gmail.com',     'SoYeon@9999'),
('U0000005', 'daehun_y',   'daehun.yoon@daum.net',      'Dh_Yoon123'),
('U0000006', 'areum_j',    'areum.jung@naver.com',      'Areum@2024!'),
('U0000007', 'seungho_h',  'seungho.han@gmail.com',     'S3ungho#Han'),
('U0000008', 'yujin_k',    'yujin.kang@kakao.com',      'Yj!Kang2024'),
('U0000009', 'minseok_l',  'minseok.lim@gmail.com',     'Minseo@k99'),
('U0000010', 'jiyeon_o',   'jiyeon.oh@naver.com',       'JiY3on!2024'),
('U0000011', 'taewon_b',   'taewon.bae@daum.net',       'T@ewon2024!'),
('U0000012', 'nayeon_s',   'nayeon.seo@gmail.com',      'NaY3on#Seo'),
('U0000013', 'kyungjae_n', 'kyungjae.noh@kakao.com',    'KJ!Noh2024'),
('U0000014', 'sooyeon_a',  'sooyeon.ahn@gmail.com',     'SoYeon@Ahn1'),
('U0000015', 'byungho_y',  'byungho.yoo@naver.com',     'Bh_Yoo#2024'),
('U0000016', 'jihye_k',    'jihye.kwon@gmail.com',      'JiHye@Kw99'),
('U0000017', 'changhyun_m','changhyun.moon@kakao.com',  'Ch@ngHyun24'),
('U0000018', 'seojun_c',   'seojun.cho@daum.net',       'SeojunCho!8'),
('U0000019', 'hayoung_j',  'hayoung.jang@gmail.com',    'HaY0ung@24'),
('U0000020', 'woosung_r',  'woosung.ryu@naver.com',     'W00sung#Ryu');


-- =============================================
-- 2. loan_types (6 rows)
-- =============================================
INSERT INTO loan_types (loan_type_id, type_name) VALUES
('LT001', 'Personal Loan'),
('LT002', 'Business Loan'),
('LT003', 'Mortgage'),
('LT004', 'Student Loan'),
('LT005', 'Emergency Loan'),
('LT006', 'Peer-to-Peer');


-- =============================================
-- 3. loan_status (5 rows)
-- =============================================
INSERT INTO loan_status (status_id, status_name) VALUES
('LS001', 'Active'),
('LS002', 'Paid Off'),
('LS003', 'Overdue'),
('LS004', 'Pending'),
('LS005', 'Defaulted');


-- =============================================
-- 4. people (40 rows, 2 per user)
-- =============================================
INSERT INTO people (person_id, user_id, name, phone) VALUES
('P000000001', 'U0000001', 'Kim Jinho',          '010-1111-0001'),
('P000000002', 'U0000001', 'Kim Jinho Friend',   '010-1111-0002'),
('P000000003', 'U0000002', 'Park Minji',         '010-2222-0001'),
('P000000004', 'U0000002', 'Park Minji Colleague','010-2222-0002'),
('P000000005', 'U0000003', 'Lee Hyunwoo',        '010-3333-0001'),
('P000000006', 'U0000003', 'Lee Hyunwoo Sister', '010-3333-0002'),
('P000000007', 'U0000004', 'Choi Soyeon',        '010-4444-0001'),
('P000000008', 'U0000004', 'Choi Soyeon Cousin', '010-4444-0002'),
('P000000009', 'U0000005', 'Yoon Daehun',        '010-5555-0001'),
('P000000010', 'U0000005', 'Yoon Daehun Brother','010-5555-0002'),
('P000000011', 'U0000006', 'Jung Areum',         '010-6666-0001'),
('P000000012', 'U0000006', 'Jung Areum Partner', '010-6666-0002'),
('P000000013', 'U0000007', 'Han Seungho',        '010-7777-0001'),
('P000000014', 'U0000007', 'Han Seungho Uncle',  '010-7777-0002'),
('P000000015', 'U0000008', 'Kang Yujin',         '010-8888-0001'),
('P000000016', 'U0000008', 'Kang Yujin Mother',  '010-8888-0002'),
('P000000017', 'U0000009', 'Lim Minseok',        '010-9999-0001'),
('P000000018', 'U0000009', 'Lim Minseok Neighbor','010-9999-0002'),
('P000000019', 'U0000010', 'Oh Jiyeon',          '010-1010-0001'),
('P000000020', 'U0000010', 'Oh Jiyeon Aunt',     '010-1010-0002'),
('P000000021', 'U0000011', 'Bae Taewon',         '010-1111-0011'),
('P000000022', 'U0000011', 'Bae Taewon Friend',  '010-1111-0012'),
('P000000023', 'U0000012', 'Seo Nayeon',         '010-1212-0001'),
('P000000024', 'U0000012', 'Seo Nayeon Coworker','010-1212-0002'),
('P000000025', 'U0000013', 'Noh Kyungjae',       '010-1313-0001'),
('P000000026', 'U0000013', 'Noh Kyungjae Sister','010-1313-0002'),
('P000000027', 'U0000014', 'Ahn Sooyeon',        '010-1414-0001'),
('P000000028', 'U0000014', 'Ahn Sooyeon Father', '010-1414-0002'),
('P000000029', 'U0000015', 'Yoo Byungho',        '010-1515-0001'),
('P000000030', 'U0000015', 'Yoo Byungho Brother','010-1515-0002'),
('P000000031', 'U0000016', 'Kwon Jihye',         '010-1616-0001'),
('P000000032', 'U0000016', 'Kwon Jihye Husband', '010-1616-0002'),
('P000000033', 'U0000017', 'Moon Changhyun',     '010-1717-0001'),
('P000000034', 'U0000017', 'Moon Changhyun Wife','010-1717-0002'),
('P000000035', 'U0000018', 'Cho Seojun',         '010-1818-0001'),
('P000000036', 'U0000018', 'Cho Seojun Mentor',  '010-1818-0002'),
('P000000037', 'U0000019', 'Jang Hayoung',       '010-1919-0001'),
('P000000038', 'U0000019', 'Jang Hayoung Cousin','010-1919-0002'),
('P000000039', 'U0000020', 'Ryu Woosung',        '010-2020-0001'),
('P000000040', 'U0000020', 'Ryu Woosung Friend', '010-2020-0002');


-- =============================================
-- 5. payment_methods (6 rows)
-- =============================================
INSERT INTO payment_methods (method_id, method_name) VALUES
('PM001', 'Bank Transfer'),
('PM002', 'Cash'),
('PM003', 'Kakao Pay'),
('PM004', 'Toss'),
('PM005', 'Naver Pay'),
('PM006', 'Credit Card');


-- =============================================
-- 6. currencies (8 rows)
-- =============================================
INSERT INTO currencies (currency_id, currency_code, currency_name) VALUES
('CUR01', 'KRW', 'Korean Won'),
('CUR02', 'USD', 'US Dollar'),
('CUR03', 'EUR', 'Euro'),
('CUR04', 'JPY', 'Yen'),
('CUR05', 'GBP', 'Pound'),
('CUR06', 'CNY', 'Yuan'),
('CUR07', 'AUD', 'AUS Dollar'),
('CUR08', 'CAD', 'CA Dollar');


-- =============================================
-- 7. loans (40 rows)
-- =============================================
INSERT INTO loans (loan_id, lender_id, borrower_id, l_amount, issue_date, deadline_date, loan_type_id, status_id) VALUES
('LN000001', 'P000000001', 'P000000002', 500000.00,  '2023-01-15', '2024-01-15', 'LT006', 'LS002'),
('LN000002', 'P000000003', 'P000000005', 1000000.00, '2023-02-01', '2024-02-01', 'LT001', 'LS001'),
('LN000003', 'P000000007', 'P000000009', 3000000.00, '2023-03-10', '2025-03-10', 'LT002', 'LS001'),
('LN000004', 'P000000011', 'P000000013', 200000.00,  '2023-04-05', '2023-10-05', 'LT005', 'LS002'),
('LN000005', 'P000000015', 'P000000017', 750000.00,  '2023-05-20', '2024-05-20', 'LT006', 'LS003'),
('LN000006', 'P000000019', 'P000000021', 5000000.00, '2023-06-01', '2028-06-01', 'LT003', 'LS001'),
('LN000007', 'P000000023', 'P000000025', 1500000.00, '2023-07-15', '2024-07-15', 'LT004', 'LS001'),
('LN000008', 'P000000027', 'P000000029', 300000.00,  '2023-08-01', '2024-02-01', 'LT001', 'LS002'),
('LN000009', 'P000000031', 'P000000033', 2000000.00, '2023-09-10', '2025-09-10', 'LT002', 'LS001'),
('LN000010', 'P000000035', 'P000000037', 450000.00,  '2023-10-05', '2024-04-05', 'LT006', 'LS003'),
('LN000011', 'P000000002', 'P000000004', 800000.00,  '2023-11-01', '2024-11-01', 'LT001', 'LS001'),
('LN000012', 'P000000006', 'P000000008', 1200000.00, '2023-12-15', '2025-12-15', 'LT002', 'LS001'),
('LN000013', 'P000000010', 'P000000012', 600000.00,  '2024-01-10', '2025-01-10', 'LT006', 'LS001'),
('LN000014', 'P000000014', 'P000000016', 250000.00,  '2024-01-20', '2024-07-20', 'LT005', 'LS004'),
('LN000015', 'P000000018', 'P000000020', 3500000.00, '2024-02-05', '2027-02-05', 'LT003', 'LS001'),
('LN000016', 'P000000022', 'P000000024', 900000.00,  '2024-02-15', '2025-02-15', 'LT004', 'LS001'),
('LN000017', 'P000000026', 'P000000028', 400000.00,  '2024-03-01', '2024-09-01', 'LT001', 'LS003'),
('LN000018', 'P000000030', 'P000000032', 1800000.00, '2024-03-10', '2026-03-10', 'LT002', 'LS001'),
('LN000019', 'P000000034', 'P000000036', 550000.00,  '2024-04-05', '2025-04-05', 'LT006', 'LS001'),
('LN000020', 'P000000038', 'P000000040', 700000.00,  '2024-04-20', '2025-04-20', 'LT001', 'LS004'),
('LN000021', 'P000000001', 'P000000003', 2500000.00, '2023-01-25', '2025-01-25', 'LT002', 'LS002'),
('LN000022', 'P000000005', 'P000000007', 100000.00,  '2023-02-10', '2023-08-10', 'LT005', 'LS002'),
('LN000023', 'P000000009', 'P000000011', 1100000.00, '2023-03-20', '2024-03-20', 'LT004', 'LS005'),
('LN000024', 'P000000013', 'P000000015', 650000.00,  '2023-04-15', '2024-04-15', 'LT006', 'LS002'),
('LN000025', 'P000000017', 'P000000019', 4000000.00, '2023-05-01', '2028-05-01', 'LT003', 'LS001'),
('LN000026', 'P000000021', 'P000000023', 350000.00,  '2023-06-10', '2024-06-10', 'LT001', 'LS002'),
('LN000027', 'P000000025', 'P000000027', 950000.00,  '2023-07-01', '2024-07-01', 'LT006', 'LS003'),
('LN000028', 'P000000029', 'P000000031', 1600000.00, '2023-08-15', '2025-08-15', 'LT002', 'LS001'),
('LN000029', 'P000000033', 'P000000035', 500000.00,  '2023-09-20', '2024-03-20', 'LT001', 'LS002'),
('LN000030', 'P000000037', 'P000000039', 850000.00,  '2023-10-10', '2024-10-10', 'LT004', 'LS001'),
('LN000031', 'P000000004', 'P000000006', 280000.00,  '2024-01-05', '2024-07-05', 'LT005', 'LS003'),
('LN000032', 'P000000008', 'P000000010', 2200000.00, '2024-01-15', '2026-01-15', 'LT002', 'LS001'),
('LN000033', 'P000000012', 'P000000014', 730000.00,  '2024-02-01', '2025-02-01', 'LT006', 'LS001'),
('LN000034', 'P000000016', 'P000000018', 1300000.00, '2024-02-20', '2025-08-20', 'LT004', 'LS001'),
('LN000035', 'P000000020', 'P000000022', 490000.00,  '2024-03-05', '2024-09-05', 'LT001', 'LS001'),
('LN000036', 'P000000024', 'P000000026', 3200000.00, '2024-03-15', '2027-03-15', 'LT003', 'LS004'),
('LN000037', 'P000000028', 'P000000030', 620000.00,  '2024-04-01', '2025-04-01', 'LT006', 'LS001'),
('LN000038', 'P000000032', 'P000000034', 1050000.00, '2024-04-10', '2025-10-10', 'LT002', 'LS001'),
('LN000039', 'P000000036', 'P000000038', 175000.00,  '2024-05-01', '2024-11-01', 'LT005', 'LS001'),
('LN000040', 'P000000040', 'P000000002', 780000.00,  '2024-05-15', '2025-05-15', 'LT001', 'LS001');


-- =============================================
-- 8. collateral (25 rows)
-- =============================================
INSERT INTO collateral (collateral_id, loan_id, asset_name, estimated_value, description) VALUES
('COL000000001', 'LN000003', 'Laptop MacBook Pro',    2500000.00, 'MacBook Pro 2023, 16-inch, M2 chip, good condition'),
('COL000000002', 'LN000003', 'Smartphone Galaxy S24', 1200000.00, 'Samsung Galaxy S24 Ultra, unopened box'),
('COL000000003', 'LN000006', 'Apartment Deposit',     50000000.00,'Jeonse deposit for Seoul apartment, Mapo-gu'),
('COL000000004', 'LN000009', 'Vehicle Hyundai Sonata',25000000.00,'2021 Hyundai Sonata, 30,000km, no accidents'),
('COL000000005', 'LN000012', 'Business Equipment',    3000000.00, 'Espresso machine and grinder for cafe business'),
('COL000000006', 'LN000015', 'Land Certificate',      80000000.00,'Land plot in Gyeonggi-do, 200 pyeong'),
('COL000000007', 'LN000018', 'Gold Jewelry',          2000000.00, 'Gold necklace and ring set, 24k, 100g total'),
('COL000000008', 'LN000021', 'Camera Equipment',      4500000.00, 'Sony A7R V with lenses and accessories'),
('COL000000009', 'LN000025', 'Apartment Deposit',     60000000.00,'Jeonse deposit, Seocho-gu Seoul'),
('COL000000010', 'LN000028', 'Vehicle Kia EV6',       45000000.00,'2022 Kia EV6, 15,000km, electric vehicle'),
('COL000000011', 'LN000032', 'Factory Equipment',     8000000.00, 'Industrial sewing machines x5, good condition'),
('COL000000012', 'LN000034', 'Musical Instrument',    3500000.00, 'Steinway upright piano, 2019 model'),
('COL000000013', 'LN000036', 'Commercial Space',      120000000.00,'Store deposit in Hongdae commercial district'),
('COL000000014', 'LN000002', 'Tablet iPad Pro',       1500000.00, 'iPad Pro 12.9 inch 2022, with Apple Pencil'),
('COL000000015', 'LN000005', 'Watch Collection',      3200000.00, 'Seiko Prospex and Citizen collection, 4 pieces'),
('COL000000016', 'LN000007', 'Laptop Dell XPS',       1800000.00, 'Dell XPS 15 2023, good condition'),
('COL000000017', 'LN000011', 'Motorbike',             5500000.00, '2020 Honda CB500F, 20,000km'),
('COL000000018', 'LN000013', 'Art Prints',            1000000.00, 'Signed limited edition prints, 3 pieces'),
('COL000000019', 'LN000016', 'Drone DJI',             2200000.00, 'DJI Mavic 3 Pro with extra batteries'),
('COL000000020', 'LN000019', 'Gaming PC',             3800000.00, 'Custom gaming PC, RTX 4080, i9 processor'),
('COL000000021', 'LN000027', 'Bicycle Trek',           900000.00, 'Trek road bike 2022, carbon frame'),
('COL000000022', 'LN000030', 'Book Collection',        500000.00, 'Rare Korean literature first editions, 20 books'),
('COL000000023', 'LN000033', 'Smart TV',              1200000.00, 'Samsung 85-inch QLED 2023'),
('COL000000024', 'LN000037', 'Coffee Machine',        850000.00, 'DeLonghi La Specialista, home espresso machine'),
('COL000000025', 'LN000038', 'Power Tools Set',       1600000.00, 'Makita professional power tools kit, 12 pieces');


-- =============================================
-- 9. payments (45 rows)
-- =============================================
INSERT INTO payments (payment_id, loan_id, p_amount, payment_date, method_id) VALUES
('PAY0000001', 'LN000001', 500000.00,  '2024-01-10', 'PM001'),
('PAY0000002', 'LN000002', 200000.00,  '2023-05-01', 'PM003'),
('PAY0000003', 'LN000002', 300000.00,  '2023-08-01', 'PM001'),
('PAY0000004', 'LN000002', 500000.00,  '2023-11-01', 'PM004'),
('PAY0000005', 'LN000003', 500000.00,  '2023-06-10', 'PM001'),
('PAY0000006', 'LN000003', 500000.00,  '2023-09-10', 'PM002'),
('PAY0000007', 'LN000004', 200000.00,  '2023-10-01', 'PM003'),
('PAY0000008', 'LN000006', 1000000.00, '2023-12-01', 'PM001'),
('PAY0000009', 'LN000007', 300000.00,  '2023-10-15', 'PM004'),
('PAY0000010', 'LN000007', 300000.00,  '2024-01-15', 'PM005'),
('PAY0000011', 'LN000008', 300000.00,  '2024-01-30', 'PM001'),
('PAY0000012', 'LN000009', 400000.00,  '2024-03-10', 'PM001'),
('PAY0000013', 'LN000009', 400000.00,  '2024-06-10', 'PM003'),
('PAY0000014', 'LN000011', 200000.00,  '2024-02-01', 'PM004'),
('PAY0000015', 'LN000011', 200000.00,  '2024-05-01', 'PM001'),
('PAY0000016', 'LN000012', 300000.00,  '2024-03-15', 'PM002'),
('PAY0000017', 'LN000013', 150000.00,  '2024-04-10', 'PM003'),
('PAY0000018', 'LN000015', 700000.00,  '2024-05-05', 'PM001'),
('PAY0000019', 'LN000016', 225000.00,  '2024-05-15', 'PM005'),
('PAY0000020', 'LN000018', 450000.00,  '2024-06-10', 'PM001'),
('PAY0000021', 'LN000019', 150000.00,  '2024-07-05', 'PM004'),
('PAY0000022', 'LN000021', 2500000.00, '2025-01-20', 'PM001'),
('PAY0000023', 'LN000022', 100000.00,  '2023-08-05', 'PM002'),
('PAY0000024', 'LN000024', 300000.00,  '2023-10-15', 'PM003'),
('PAY0000025', 'LN000024', 350000.00,  '2024-01-15', 'PM001'),
('PAY0000026', 'LN000026', 350000.00,  '2024-03-10', 'PM001'),
('PAY0000027', 'LN000028', 400000.00,  '2024-02-15', 'PM004'),
('PAY0000028', 'LN000028', 400000.00,  '2024-05-15', 'PM001'),
('PAY0000029', 'LN000029', 500000.00,  '2024-03-15', 'PM003'),
('PAY0000030', 'LN000030', 212500.00,  '2024-04-10', 'PM005'),
('PAY0000031', 'LN000030', 212500.00,  '2024-07-10', 'PM001'),
('PAY0000032', 'LN000033', 182500.00,  '2024-05-01', 'PM004'),
('PAY0000033', 'LN000034', 325000.00,  '2024-05-20', 'PM001'),
('PAY0000034', 'LN000035', 245000.00,  '2024-06-05', 'PM003'),
('PAY0000035', 'LN000037', 155000.00,  '2024-07-01', 'PM002'),
('PAY0000036', 'LN000038', 262500.00,  '2024-07-10', 'PM001'),
('PAY0000037', 'LN000039', 87500.00,   '2024-08-01', 'PM004'),
('PAY0000038', 'LN000040', 195000.00,  '2024-08-15', 'PM001'),
('PAY0000039', 'LN000025', 800000.00,  '2023-11-01', 'PM001'),
('PAY0000040', 'LN000025', 800000.00,  '2024-02-01', 'PM003'),
('PAY0000041', 'LN000006', 1000000.00, '2024-06-01', 'PM001'),
('PAY0000042', 'LN000032', 550000.00,  '2024-04-15', 'PM004'),
('PAY0000043', 'LN000032', 550000.00,  '2024-07-15', 'PM001'),
('PAY0000044', 'LN000007', 300000.00,  '2024-04-15', 'PM003'),
('PAY0000045', 'LN000016', 225000.00,  '2024-08-15', 'PM005');


-- =============================================
-- 10. transactions (45 rows, one per payment)
-- =============================================
INSERT INTO transactions (transactions_id, loan_id, payment_id, type, t_amount) VALUES
('T0001', 'LN000001', 'PAY0000001', 'Full Repayment',     500000.00),
('T0002', 'LN000002', 'PAY0000002', 'Partial Repayment',  200000.00),
('T0003', 'LN000002', 'PAY0000003', 'Partial Repayment',  300000.00),
('T0004', 'LN000002', 'PAY0000004', 'Partial Repayment',  500000.00),
('T0005', 'LN000003', 'PAY0000005', 'Installment',        500000.00),
('T0006', 'LN000003', 'PAY0000006', 'Installment',        500000.00),
('T0007', 'LN000004', 'PAY0000007', 'Full Repayment',     200000.00),
('T0008', 'LN000006', 'PAY0000008', 'Installment',       1000000.00),
('T0009', 'LN000007', 'PAY0000009', 'Installment',        300000.00),
('T0010', 'LN000007', 'PAY0000010', 'Installment',        300000.00),
('T0011', 'LN000008', 'PAY0000011', 'Full Repayment',     300000.00),
('T0012', 'LN000009', 'PAY0000012', 'Installment',        400000.00),
('T0013', 'LN000009', 'PAY0000013', 'Installment',        400000.00),
('T0014', 'LN000011', 'PAY0000014', 'Partial Repayment',  200000.00),
('T0015', 'LN000011', 'PAY0000015', 'Partial Repayment',  200000.00),
('T0016', 'LN000012', 'PAY0000016', 'Installment',        300000.00),
('T0017', 'LN000013', 'PAY0000017', 'Partial Repayment',  150000.00),
('T0018', 'LN000015', 'PAY0000018', 'Installment',        700000.00),
('T0019', 'LN000016', 'PAY0000019', 'Installment',        225000.00),
('T0020', 'LN000018', 'PAY0000020', 'Installment',        450000.00),
('T0021', 'LN000019', 'PAY0000021', 'Partial Repayment',  150000.00),
('T0022', 'LN000021', 'PAY0000022', 'Full Repayment',    2500000.00),
('T0023', 'LN000022', 'PAY0000023', 'Full Repayment',     100000.00),
('T0024', 'LN000024', 'PAY0000024', 'Partial Repayment',  300000.00),
('T0025', 'LN000024', 'PAY0000025', 'Partial Repayment',  350000.00),
('T0026', 'LN000026', 'PAY0000026', 'Full Repayment',     350000.00),
('T0027', 'LN000028', 'PAY0000027', 'Installment',        400000.00),
('T0028', 'LN000028', 'PAY0000028', 'Installment',        400000.00),
('T0029', 'LN000029', 'PAY0000029', 'Full Repayment',     500000.00),
('T0030', 'LN000030', 'PAY0000030', 'Installment',        212500.00),
('T0031', 'LN000030', 'PAY0000031', 'Installment',        212500.00),
('T0032', 'LN000033', 'PAY0000032', 'Installment',        182500.00),
('T0033', 'LN000034', 'PAY0000033', 'Installment',        325000.00),
('T0034', 'LN000035', 'PAY0000034', 'Partial Repayment',  245000.00),
('T0035', 'LN000037', 'PAY0000035', 'Installment',        155000.00),
('T0036', 'LN000038', 'PAY0000036', 'Installment',        262500.00),
('T0037', 'LN000039', 'PAY0000037', 'Partial Repayment',   87500.00),
('T0038', 'LN000040', 'PAY0000038', 'Partial Repayment',  195000.00),
('T0039', 'LN000025', 'PAY0000039', 'Installment',        800000.00),
('T0040', 'LN000025', 'PAY0000040', 'Installment',        800000.00),
('T0041', 'LN000006', 'PAY0000041', 'Installment',       1000000.00),
('T0042', 'LN000032', 'PAY0000042', 'Installment',        550000.00),
('T0043', 'LN000032', 'PAY0000043', 'Installment',        550000.00),
('T0044', 'LN000007', 'PAY0000044', 'Installment',        300000.00),
('T0045', 'LN000016', 'PAY0000045', 'Installment',        225000.00);


-- =============================================
-- 11. reminders (40 rows)
-- =============================================
INSERT INTO reminders (reminder_id, loan_id, remind_date, message, status) VALUES
('R0001', 'LN000002', '2023-08-01', 'Payment due in 3 days',              'Sent'),
('R0002', 'LN000002', '2023-10-28', 'Payment due in 3 days',              'Sent'),
('R0003', 'LN000003', '2023-06-07', 'Upcoming installment reminder',      'Sent'),
('R0004', 'LN000003', '2023-09-07', 'Upcoming installment reminder',      'Sent'),
('R0005', 'LN000005', '2024-05-17', 'Loan is overdue. Please pay ASAP',   'Sent'),
('R0006', 'LN000005', '2024-06-01', 'Overdue notice - 12 days past due',  'Sent'),
('R0007', 'LN000006', '2023-11-28', 'Monthly installment due soon',       'Sent'),
('R0008', 'LN000006', '2024-05-28', 'Monthly installment due soon',       'Pending'),
('R0009', 'LN000007', '2023-10-12', 'Reminder: payment due Oct 15',       'Sent'),
('R0010', 'LN000009', '2024-03-07', 'Installment due in 3 days',          'Sent'),
('R0011', 'LN000010', '2024-04-02', 'Loan overdue - contact borrower',    'Sent'),
('R0012', 'LN000010', '2024-04-15', 'Second overdue notice',              'Sent'),
('R0013', 'LN000011', '2024-01-29', 'Payment reminder for Feb 1',         'Sent'),
('R0014', 'LN000012', '2024-03-12', 'Installment due soon',               'Sent'),
('R0015', 'LN000014', '2024-07-17', 'Loan deadline approaching',          'Pending'),
('R0016', 'LN000015', '2024-05-02', 'Monthly payment reminder',           'Sent'),
('R0017', 'LN000016', '2024-05-12', 'Installment due soon',               'Sent'),
('R0018', 'LN000017', '2024-08-28', 'Loan overdue - please settle',       'Pending'),
('R0019', 'LN000018', '2024-06-07', 'Next installment is June 10',        'Sent'),
('R0020', 'LN000020', '2024-07-01', 'Loan is pending - please confirm',   'Pending'),
('R0021', 'LN000023', '2024-02-20', 'Loan defaulted - urgent action req', 'Sent'),
('R0022', 'LN000025', '2023-10-29', 'November installment reminder',      'Sent'),
('R0023', 'LN000027', '2024-06-28', 'Loan overdue notice',                'Sent'),
('R0024', 'LN000028', '2024-02-12', 'Installment due soon',               'Sent'),
('R0025', 'LN000030', '2024-04-07', 'First installment reminder',         'Sent'),
('R0026', 'LN000031', '2024-06-30', 'Overdue payment - contact lender',   'Sent'),
('R0027', 'LN000033', '2024-04-28', 'Monthly payment reminder',           'Sent'),
('R0028', 'LN000034', '2024-05-17', 'Installment due May 20',             'Sent'),
('R0029', 'LN000035', '2024-06-02', 'Partial payment confirmation',       'Sent'),
('R0030', 'LN000036', '2024-06-01', 'Pending loan - awaiting start date', 'Pending'),
('R0031', 'LN000037', '2024-06-28', 'Next installment due July 1',        'Sent'),
('R0032', 'LN000038', '2024-07-07', 'Installment due July 10',            'Sent'),
('R0033', 'LN000039', '2024-07-29', 'Payment due August 1',               'Sent'),
('R0034', 'LN000040', '2024-08-12', 'Payment reminder for Aug 15',        'Sent'),
('R0035', 'LN000001', '2024-01-01', 'Final payment reminder - Jan 10',    'Sent'),
('R0036', 'LN000004', '2023-09-30', 'Final payment reminder - Oct 1',     'Sent'),
('R0037', 'LN000008', '2024-01-25', 'Final repayment due Feb 1',          'Sent'),
('R0038', 'LN000022', '2023-08-01', 'Final payment due - full amount',    'Sent'),
('R0039', 'LN000024', '2024-04-10', 'Final payment reminder',             'Sent'),
('R0040', 'LN000029', '2024-03-12', 'Final repayment due Mar 20',         'Sent');


-- =============================================
-- 12. notes (40 rows)
-- =============================================
INSERT INTO notes (note_id, loan_id, text) VALUES
('N0001', 'LN000001', 'Loan fully settled ahead of schedule. Relationship maintained well.'),
('N0002', 'LN000002', 'Borrower requested installment plan. Split into 3 parts agreed.'),
('N0003', 'LN000003', 'Business loan for cafe startup. Collateral confirmed and documented.'),
('N0004', 'LN000004', 'Emergency loan for medical expenses. No interest agreed upon.'),
('N0005', 'LN000005', 'Borrower missed deadline. Follow-up calls made. Overdue status set.'),
('N0006', 'LN000006', 'Mortgage-style loan for apartment. Monthly payments scheduled.'),
('N0007', 'LN000007', 'Student loan for tuition. Repayment starts after graduation.'),
('N0008', 'LN000008', 'Loan between close friends. Repaid in full, no issues.'),
('N0009', 'LN000009', 'Business expansion loan. Repayment on track with installments.'),
('N0010', 'LN000010', 'Borrower unresponsive since April. Overdue notices sent twice.'),
('N0011', 'LN000011', 'Personal loan between colleagues. Partial payments received.'),
('N0012', 'LN000012', 'Loan for equipment purchase. Repayment schedule agreed monthly.'),
('N0013', 'LN000013', 'Peer loan with minor interest. Payments going smoothly.'),
('N0014', 'LN000014', 'Short-term emergency. Borrower confirmed repayment for late July.'),
('N0015', 'LN000015', 'Long-term mortgage-style loan. First year payments on schedule.'),
('N0016', 'LN000016', 'Student loan. Borrower is a grad student, paying quarterly.'),
('N0017', 'LN000017', 'Borrower delayed payment. Lender sent notice. Overdue.'),
('N0018', 'LN000018', 'Business loan for expansion. Payments on track.'),
('N0019', 'LN000019', 'Peer-to-peer loan. First payment made. Going well.'),
('N0020', 'LN000020', 'Awaiting disbursement confirmation. Pending status.'),
('N0021', 'LN000021', 'Business loan fully repaid. Positive outcome for both parties.'),
('N0022', 'LN000022', 'Emergency medical loan. Repaid same year. No complications.'),
('N0023', 'LN000023', 'Student loan defaulted. Legal advice being considered.'),
('N0024', 'LN000024', 'Peer loan repaid in two installments. Closed amicably.'),
('N0025', 'LN000025', 'Large mortgage loan. Quarterly payments on schedule.'),
('N0026', 'LN000026', 'Short personal loan. Fully repaid. Good borrower history.'),
('N0027', 'LN000027', 'Peer loan overdue by 2 weeks. Borrower says to wait.'),
('N0028', 'LN000028', 'Business installment loan. Half amount repaid so far.'),
('N0029', 'LN000029', 'Loan fully paid on time. Trustworthy borrower.'),
('N0030', 'LN000030', 'Student loan on schedule. Paying semester by semester.'),
('N0031', 'LN000031', 'Emergency overdue. Lender frustrated. Needs resolution.'),
('N0032', 'LN000032', 'Business loan. Equipment purchased. Payments are regular.'),
('N0033', 'LN000033', 'Peer loan. Monthly payments received without issue.'),
('N0034', 'LN000034', 'Student loan for masters program. Installments quarterly.'),
('N0035', 'LN000035', 'Personal loan between family members. Partial payment done.'),
('N0036', 'LN000036', 'Mortgage-style loan pending finalization. Waiting on paperwork.'),
('N0037', 'LN000037', 'Peer loan for home renovation. On track.'),
('N0038', 'LN000038', 'Business loan for tools. Borrower paying monthly.'),
('N0039', 'LN000039', 'Emergency loan. Half repaid. Remaining due November.'),
('N0040', 'LN000040', 'Personal loan. First payment made. Continues monthly.');


-- =============================================
-- 13. activity_logs (45 rows)
-- =============================================
INSERT INTO activity_logs (log_id, user_id, action) VALUES
('L0001', 'U0000001', 'Created loan LN000001'),
('L0002', 'U0000001', 'Recorded payment PAY0000001 for LN000001'),
('L0003', 'U0000001', 'Updated loan status of LN000001 to Paid Off'),
('L0004', 'U0000002', 'Created loan LN000002'),
('L0005', 'U0000002', 'Recorded payment PAY0000002 for LN000002'),
('L0006', 'U0000003', 'Created loan LN000003'),
('L0007', 'U0000003', 'Added collateral COL000000001 to LN000003'),
('L0008', 'U0000004', 'Created loan LN000004'),
('L0009', 'U0000004', 'Updated loan status of LN000004 to Paid Off'),
('L0010', 'U0000005', 'Created loan LN000005'),
('L0011', 'U0000005', 'Sent overdue reminder for LN000005'),
('L0012', 'U0000006', 'Created loan LN000006'),
('L0013', 'U0000006', 'Recorded payment PAY0000008 for LN000006'),
('L0014', 'U0000007', 'Created loan LN000007'),
('L0015', 'U0000007', 'Added note to LN000007 regarding repayment plan'),
('L0016', 'U0000008', 'Created loan LN000008'),
('L0017', 'U0000008', 'Updated loan status of LN000008 to Paid Off'),
('L0018', 'U0000009', 'Created loan LN000009'),
('L0019', 'U0000009', 'Recorded installment payment for LN000009'),
('L0020', 'U0000010', 'Created loan LN000010'),
('L0021', 'U0000010', 'Sent overdue reminder for LN000010'),
('L0022', 'U0000011', 'Created loan LN000011'),
('L0023', 'U0000011', 'Recorded partial payment for LN000011'),
('L0024', 'U0000012', 'Created loan LN000012'),
('L0025', 'U0000012', 'Added collateral COL000000005 to LN000012'),
('L0026', 'U0000013', 'Created loan LN000013'),
('L0027', 'U0000013', 'Recorded payment PAY0000017 for LN000013'),
('L0028', 'U0000014', 'Created loan LN000014'),
('L0029', 'U0000014', 'Set reminder for LN000014 deadline'),
('L0030', 'U0000015', 'Created loan LN000015'),
('L0031', 'U0000015', 'Recorded installment payment for LN000015'),
('L0032', 'U0000016', 'Created loan LN000016'),
('L0033', 'U0000016', 'Recorded first installment for LN000016'),
('L0034', 'U0000017', 'Created loan LN000017'),
('L0035', 'U0000017', 'Sent overdue notice for LN000017'),
('L0036', 'U0000018', 'Created loan LN000018'),
('L0037', 'U0000018', 'Recorded payment PAY0000020 for LN000018'),
('L0038', 'U0000019', 'Created loan LN000019'),
('L0039', 'U0000019', 'Added note to LN000019'),
('L0040', 'U0000020', 'Created loan LN000020'),
('L0041', 'U0000001', 'Viewed loan history for LN000021'),
('L0042', 'U0000002', 'Exported loan report for LN000024'),
('L0043', 'U0000003', 'Updated collateral info for LN000003'),
('L0044', 'U0000005', 'Escalated overdue loan LN000005'),
('L0045', 'U0000013', 'Marked loan LN000023 as Defaulted');