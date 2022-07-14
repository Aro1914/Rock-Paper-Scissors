'reach 0.1';

const Part = {
    seePrice: Fun([], UInt),
    getDescription: Fun([], Bytes(1)),
};

export const main = Reach.App(() => {
    const Creator = Participant('Creator', {
        ...Part,

    });
    const Bidder = Participant('Bidder', {
        ...Part,

    });
    const Buyer = Participant('Buyer', {
        ...Part,

    });
    init();

    Bidder.only(() => {
        const price = declassify(interact.seePrice());

    });
    Bidder.publish(price);
    commit();

    Buyer.only(() => {
        const description = declassify(interact.getDescription());

    });
    Buyer.publish(description);
    commit();
});
