'reach 0.1';

const Part = {
    getChallenge: Fun([], UInt),
    seeResult: Fun([UInt], Null),
};

export const main = Reach.App(() => {
    const Pat = Participant('Pat', {
        ...Part,

    });
    const Vanna = Participant('Vanna', {
        ...Part

    });
    init();

    Pat.only(() => {
        const challengePat = declassify(interact.getChallenge());
    });

    Vanna.only(() => {
        const challengeVanna = declassify(interact.getChallenge());
    });
});