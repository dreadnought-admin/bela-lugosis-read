require 'faker'
require 'byebug'

puts "Seeding data..."

User.destroy_all
Poem.destroy_all
Book.destroy_all

u1 = User.create(username: "Peter Steele", email: Faker::Internet.email, password_digest: "password", avatar: nil)
u2 = User.create(username: "Robert Smith", email: Faker::Internet.email, password_digest: "itsfridayiminlove", avatar: nil)
u3 = User.create(username: "Siouxsie Sioux", email: Faker::Internet.email, password_digest: "arabiannights3", avatar: nil)
u4 = User.create(username: "Bela Lugosi", email: Faker::Internet.email, password_digest: "imdeadimdeadimdead", avatar: nil)


p1 = Poem.create(user_id: u1.id, title: "Alone", author: "Edgar Allan Poe", poem_type: "AABB", genre: "Gothic", year_published: 1829, poem_txt: "From childhood’s hour I have not been
    As others were—I have not seen
    As others saw—I could not bring
    My passions from a common spring—
    From the same source I have not taken
    My sorrow—I could not awaken
    My heart to joy at the same tone—
    And all I lov’d—I lov’d alone—
    Then—in my childhood—in the dawn
    Of a most stormy life—was drawn
    From ev’ry depth of good and ill
    The mystery which binds me still—
    From the torrent, or the fountain—
    From the red cliff of the mountain—
    From the sun that ’round me roll’d
    In its autumn tint of gold—
    From the lightning in the sky
    As it pass’d me flying by—
    From the thunder, and the storm—
    And the cloud that took the form
    (When the rest of Heaven was blue)
    Of a demon in my view—
    ")

p2 = Poem.create(user_id: u2.id, title: "The Haunted Palace", author: "Edgar Allan Poe", poem_type: "ABABCDCD", genre: "Gothic", year_published: 1839, poem_txt: "In the greenest of our valleys
    By good angels tenanted,
    Once a fair and stately palace—
    Radiant palace—reared its head.
    In the monarch Thought’s dominion,
    It stood there!
    Never seraph spread a pinion
    Over fabric half so fair!
    
    Banners yellow, glorious, golden,
    On its roof did float and flow
    (This—all this—was in the olden
    Time long ago)
    And every gentle air that dallied,
    In that sweet day,
    Along the ramparts plumed and pallid,
    A wingèd odor went away.
    
    Wanderers in that happy valley,
    Through two luminous windows, saw
    Spirits moving musically
    To a lute’s well-tunèd law,
    Round about a throne where, sitting,
    Porphyrogene!
    In state his glory well befitting,
    The ruler of the realm was seen.
    
    And all with pearl and ruby glowing
    Was the fair palace door,
    Through which came flowing, flowing, flowing
    And sparkling evermore,
    A troop of Echoes, whose sweet duty
    Was but to sing,
    In voices of surpassing beauty,
    The wit and wisdom of their king.
    
    But evil things, in robes of sorrow,
    Assailed the monarch’s high estate;
    (Ah, let us mourn!—for never morrow
    Shall dawn upon him, desolate!)
    And round about his home the glory
    That blushed and bloomed
    Is but a dim-remembered story
    Of the old time entombed.
    
    And travellers, now, within that valley,
    Through the red-litten windows see
    Vast forms that move fantastically
    To a discordant melody;
    While, like a ghastly rapid river,
    Through the pale door
    A hideous throng rush out forever,
    And laugh—but smile no more."
    )

p3 = Poem.create(user_id: u1.id, title: "Lady Lazarus", author: "Sylvia Plath", poem_type: "Free Verse", genre: "Gothic", year_published: 1965, poem_txt: "I have done it again.   
    One year in every ten   
    I manage it——

    A sort of walking miracle, my skin   
    Bright as a Nazi lampshade,   
    My right foot

    A paperweight,
    My face a featureless, fine   
    Jew linen.

    Peel off the napkin   
    O my enemy.   
    Do I terrify?——

    The nose, the eye pits, the full set of teeth?   
    The sour breath
    Will vanish in a day.

    Soon, soon the flesh
    The grave cave ate will be   
    At home on me

    And I a smiling woman.   
    I am only thirty.
    And like the cat I have nine times to die.

    This is Number Three.   
    What a trash
    To annihilate each decade.

    What a million filaments.   
    The peanut-crunching crowd   
    Shoves in to see

    Them unwrap me hand and foot——
    The big strip tease.   
    Gentlemen, ladies

    These are my hands   
    My knees.
    I may be skin and bone,

    Nevertheless, I am the same, identical woman.   
    The first time it happened I was ten.   
    It was an accident.

    The second time I meant
    To last it out and not come back at all.   
    I rocked shut

    As a seashell.
    They had to call and call
    And pick the worms off me like sticky pearls.

    Dying
    Is an art, like everything else.   
    I do it exceptionally well.

    I do it so it feels like hell.   
    I do it so it feels real.
    I guess you could say I’ve a call.

    It’s easy enough to do it in a cell.
    It’s easy enough to do it and stay put.   
    It’s the theatrical

    Comeback in broad day
    To the same place, the same face, the same brute   
    Amused shout:

    ‘A miracle!’
    That knocks me out.   
    There is a charge

    For the eyeing of my scars, there is a charge   
    For the hearing of my heart——
    It really goes.

    And there is a charge, a very large charge   
    For a word or a touch   
    Or a bit of blood

    Or a piece of my hair or my clothes.   
    So, so, Herr Doktor.   
    So, Herr Enemy.

    I am your opus,
    I am your valuable,   
    The pure gold baby

    That melts to a shriek.   
    I turn and burn.
    Do not think I underestimate your great concern.

    Ash, ash—
    You poke and stir.
    Flesh, bone, there is nothing there——

    A cake of soap,   
    A wedding ring,   
    A gold filling.

    Herr God, Herr Lucifer   
    Beware
    Beware.

    Out of the ash
    I rise with my red hair   
    And I eat men like air."
    )

p4 = Poem.create(user_id: u4.id, title: "Ariel", author: "Sylvia Plath", poem_type: "Free Verse", genre: "Gothic", year_published: 1965, poem_txt: "Stasis in darkness.
    Then the substanceless blue   
    Pour of tor and distances.

    God’s lioness,   
    How one we grow,
    Pivot of heels and knees!—The furrow

    Splits and passes, sister to   
    The brown arc
    Of the neck I cannot catch,

    Nigger-eye   
    Berries cast dark   
    Hooks—

    Black sweet blood mouthfuls,   
    Shadows.
    Something else

    Hauls me through air—
    Thighs, hair;
    Flakes from my heels.

    White
    Godiva, I unpeel—
    Dead hands, dead stringencies.

    And now I
    Foam to wheat, a glitter of seas.   
    The child’s cry

    Melts in the wall.   
    And I
    Am the arrow,

    The dew that flies
    Suicidal, at one with the drive   
    Into the red

    Eye, the cauldron of morning."
    )

b1 = Book.create!(user_id: u4.id, title: "Dracula", author: "Bram Stoker", year_published: 1897, genre: "Gothic", cover_img: "https://wendyvancamp.files.wordpress.com/2014/10/dracula-book-cover.jpg", 
    summary: "Dracula is a novel by Bram Stoker, published in 1897. 
    An epistolary novel, the narrative is related through letters, diary entries, and newspaper articles. 
    It has no single protagonist, but opens with solicitor Jonathan Harker taking a 
    business trip to stay at the castle of a Transylvanian nobleman, Count Dracula."
)


puts b1.user_id


puts 'Seeding favorite poems...'




puts "✅ Done seeding!"