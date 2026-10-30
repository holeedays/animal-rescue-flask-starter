-- STUDENT TASK: add at least three fictional dogs and three fictional cats.
-- Write INSERT INTO statements below, listing the column names explicitly.
-- All records in this starter represent animals available for adoption.
--
-- Run initialization once after adding your records.
-- Running this file again will run your INSERT statements again too.




-- clear the existing seeded data

DELETE FROM cats;
DELETE FROM dogs;

----------------------- cats items creation

INSERT INTO cats (name, age, breed, description)
VALUES 
(
    "Bertha", 
    12, 
    "Ragdoll", 
    "
        She's an old and fat cat, but she's very reliable. She spends her days basking in the sun
        and surveying people as they go about their lives. She's nicknamed 'the chubby sentinel'.
    "
),
(
    "Tabby", 
    3, 
    "European Shorthair", 
    "
        She is young and spry, eager to have fun with anyone who wants to play with her. She's super
        energetic, sometimes a little bit too hyper... Her hyper energy is infectious. If you're having a 
        bad day, she will definitely make you feel a little better.
    "
),
(
    "Charlotte", 
    2, 
    "Havana Brown", 
    "
        She's a princess cat! In royalty like fashion, she likes to be treated with dignity and respect 
        and does not give attention to just anyone. A pet here and some kibble there will definitely get 
        on her good side.
    "
),
(
    "Yara", 
    7, 
    "Chatreux", 
    "
        Destined to be a bull, born as a cat. She's rowdy and super strong! In any of the brawls that 
        she's had with the other cats, she has always come up as the victor. However, there's no need
        to be afraid of her... she's a little baby at heart.
    "
),
(
    "Talawa", 
    7, 
    "Devon Rex", 
    "
        He's a nimble and sneaky fella. Much like a panther or apex cat, he prowls and stalks his prey,
        waiting for the right chance to do a surprise nibble attack. Watch out for the shadowy assassin!
    "
),
(
    "Arden", 
    4, 
    "Asian",
    "
        Arguably the smartest of the bunch. Nicknamed the 'Professional Door Opener' among the cats, put
        him in any room and he'll probably find a way to break out of it... or in. He's also a natural
        with learning tricks.
    "
);

-- this insert is for cats that don't have any description (will be set into the default value specified in the table schema)
INSERT INTO cats (name, age, breed)
VALUES ("Jaeger", 1, "Havana Brown");

-- -----------------------  dog items creation

INSERT INTO dogs (name, age, breed, description)
VALUES 
(
    "Miranda", 
    7, 
    "Dalmatian", 
    "
        She's an old head. Without her morning kibble and cup of water, she gets a little cranky and sluggish. 
        However, don't be deterred by her crankiness — she's actually a sweetheart at heart. She just
        needs a little love... and food.
    "
),
(
    "Ziglia",
    3, 
    "Norrbottenspets", 
    "
        One of the youngster bunch, she's bold and adventurous. However, she's a little too bold at times,
        often getting in trouble for doing some questionable and dangerous stuff. Nicknamed the 'Daredevil' 
        among the dogs, you can bet that she'll be doing something outrageous.
    "
),
(
    "Charlemagne", 
    5, 
    "Daschund", 
    "
        He's a big, elegant boy — a very big boy. Though his size is daunting, he's really a gentle giant.
        Give him a pat on his head or a scatch to his chin and he'll probably be rendered on the floor 
        immobile. 
    "
),
(
    "Riordan", 
    7, 
    "Alaskan Malamute", 
    "
        Loyal but indecisive, he's not the best to consult during times of need. However, you can be sure
        that he'll be there during the hardest of days. Just don't make sure you don't let him make the
        decisions for you.
    "
),
(
    "Bjor", 
    2, 
    "Alaskan Malamute",
    "
        The polar opposite to Riordan's — his big brother — personality, this little rascal is the most
        devious dog here. Nicknamed the 'Joker', don't expect him to take any orders, or else you might 
        end up getting more than what you bargained for.
    "
),
(
    "Ryleigh", 
    11, 
    "Finnish Spitz", 
    "
        Like a well maintained automobile from the 90s, he's fast, efficient, and strong for his age. 
        Though age hasn't been the best for his physical appearance, be rest assured that this old yeller
        could outpace some of the more athletic and younger dogs.
    "
);

-- -- same structure as initializing dogs with no description
INSERT INTO dogs (name, age, breed)
VALUES ("Mari", 1, "Beagle");