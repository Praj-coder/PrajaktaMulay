INSERT INTO onlinestoredb.countries VALUES (
    'EUROPE',
    'AUSRTIA',
    '043'
);

INSERT INTO onlinestoredb.countries VALUES (
    'EUROPE',
    'ALBANIA',
    '355'
);

INSERT INTO onlinestoredb.countries VALUES (
    'EUROPE',
    'ARMENIA',
    '374'
);

INSERT INTO onlinestoredb.countries VALUES (
    'EUROPE',
    'BELGIUM',
    '032'
);

INSERT INTO onlinestoredb.countries VALUES (
    'EUROPE',
    'SWITZELAND',
    '041'
);

INSERT INTO onlinestoredb.countries VALUES (
    'EUROPE',
    'GERMANY',
    '049'
);

INSERT INTO onlinestoredb.countries VALUES (
    'ASIA',
    'HONGKONG',
    '852'
);

INSERT INTO onlinestoredb.countries VALUES (
    'ASIA',
    'INDIA',
    '091'
);

INSERT INTO onlinestoredb.countries VALUES (
    'ASIA',
    'SRILANKA',
    '094'
);

INSERT INTO onlinestoredb.regions VALUES (
    2,
    'EUROPE'
);

INSERT INTO onlinestoredb.regions VALUES (
    3,
    'ASIA'
);

INSERT INTO onlinestoredb.employees VALUES (
    1,
    'abcd',
    'xyza',
    'abcd@gmail.com',
    9822334564,
    TO_DATE('11-06-2020', 'DD-MM-YYYY'),
    TO_DATE('01-06-1990', 'DD-mm-YYYY'),
    '10000000',
    'xyz',
    'EENGINEER',
    'A'
);

INSERT INTO onlinestoredb.employees VALUES (
    1,
    'abcde',
    'xyzae',
    'abcde@gmail.com',
    9822334564,
    TO_DATE('11-01-2020', 'DD-MM-YYYY'),
    TO_DATE('01-01-1990', 'DD-mm-YYYY'),
    '10000000',
    'xyz',
    'EENGINEER',
    'A'
);

INSERT INTO onlinestoredb.employees VALUES (
    1,
    'abcdef',
    'xyzae',
    'abcdef@gmail.com',
    9822334564,
    TO_DATE('11-11-2020', 'DD-MM-YYYY'),
    TO_DATE('01-11-1990', 'DD-mm-YYYY'),
    '10000000',
    'xyz',
    'EENGINEER',
    'A'
);

INSERT INTO onlinestoredb.employees VALUES (
    1,
    'ttt',
    'tte',
    'ttt@gmail.com',
    9822334574,
    TO_DATE('11-11-2020', 'DD-MM-YYYY'),
    TO_DATE('01-11-1997', 'DD-mm-YYYY'),
    '10000000',
    'xyz',
    'MANAGER',
    'A'
);

1 ROW created
INSERT INTO onlinestoredb.products VALUES (
    'P1',
    'P1',
    'P1',
    '1000',
    '1000',
    'C1'
);

INSERT INTO onlinestoredb.products VALUES (
    'P2',
    'P2',
    'P2',
    '1000',
    '1000',
    'C1'
);

INSERT INTO onlinestoredb.products VALUES (
    'P3',
    'P3',
    'P3',
    '1000',
    '1000',
    'C1'
);

INSERT INTO onlinestoredb.products VALUES (
    'P4',
    'P4',
    'P4',
    '1000',
    '1000',
    'C2'
);

INSERT INTO onlinestoredb.products VALUES (
    'P5',
    'P5',
    'P5',
    '1000',
    '1000',
    'C2'
);

INSERT INTO onlinestoredb.products VALUES (
    'P6',
    'P6',
    'P6',
    '1000',
    '1000',
    'C3'
);

INSERT INTO onlinestoredb.products VALUES (
    'P7',
    'P7',
    'P7',
    '1000',
    '1000',
    'C3'
);

INSERT INTO onlinestoredb.products VALUES (
    'P7',
    'P7',
    'P8',
    '1000',
    '1000',
    'C4'
);

INSERT INTO onlinestoredb.products VALUES (
    'P7',
    'P7',
    'P9',
    '1000',
    '1000',
    'C4'
);

INSERT INTO onlinestoredb.product_category VALUES (
    'C1',
    'C1'
);

INSERT INTO onlinestoredb.product_category VALUES (
    'C2',
    'C2'
);

INSERT INTO onlinestoredb.product_category VALUES (
    'C3',
    'C3'
);

INSERT INTO onlinestoredb.product_category VALUES (
    'C4',
    'C4'
);

INSERT INTO onlinestoredb.department VALUES (
    'D1',
    'D1',
    'INDIA'
);

INSERT INTO onlinestoredb.department VALUES (
    'D2',
    'D2',
    'INDIA'
);

INSERT INTO onlinestoredb.department VALUES (
    'D3',
    'D2',
    'AUSTRIA'
);

INSERT INTO onlinestoredb.order_items VALUES (
    'O1',
    'I1',
    'P1',
    10,
    100000,
    'IP1',
    'W1'
);

INSERT INTO onlinestoredb.order_items VALUES (
    'O2',
    'I1',
    'P1',
    10,
    100000,
    'IP1',
    'W1'
);

INSERT INTO onlinestoredb.order_items VALUES (
    'O3',
    'I2',
    'P2',
    10,
    100000,
    'IP2',
    'W2'
);

INSERT INTO onlinestoredb.orders VALUES (
    'O1',
    'CM1',
    'DELIVERED',
    'S1',
    TO_DATE('20-02-2021', 'DD-MM-YYYY')
);

INSERT INTO onlinestoredb.orders VALUES (
    'O2',
    'CM1',
    'DELIVERED',
    'S1',
    TO_DATE('20-02-2021', 'DD-MM-YYYY')
);

INSERT INTO onlinestoredb.orders VALUES (
    'O3',
    'CM2',
    'DELIVERED',
    'S2',
    TO_DATE('20-02-2021', 'DD-MM-YYYY')
);

INSERT INTO onlinestoredb.contacts VALUES (
    'CONTACT1',
    'CONTACT1',
    'CONTACT1',
    'CONTACT1@gmail.com',
    9888888888,
    'CM1'
);

INSERT INTO onlinestoredb.contacts VALUES (
    'CONTACT2',
    'CONTACT2',
    'CONTACT2',
    'CONTACT2@gmail.com',
    9988888888,
    'CM2'
);

INSERT INTO onlinestoredb.customers VALUES (
    'CM1',
    'CM1',
    'CM1',
    'CM1.com',
    'CM1',
    'CM1',
    988888888
);

INSERT INTO onlinestoredb.customers VALUES (
    'CM2',
    'CM2',
    'CM2',
    'CM2.com',
    'CM2',
    'CM2',
    988888888
);

INSERT INTO onlinestoredb.warehouses VALUES (
    'W2',
    'W2',
    'INDIA'
);

INSERT INTO onlinestoredb.warehouses VALUES (
    'W1',
    'W1',
    'EUROPE'
);

INSERT INTO onlinestoredb.locations VALUES (
    'L1',
    'L1',
    411038,
    'Pune',
    'MH',
    'INDIA'
);

INSERT INTO onlinestoredb.locations VALUES (
    'L2',
    'L2',
    411078,
    'AUSTRIA',
    'MH',
    'AUSTRIA'
);

commit;