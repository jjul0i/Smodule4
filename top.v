module top (input mtpx, input mtpy, output mtpz);

    wire a1, b1, a2, b2, a1b1, a2b2;

    ma ia1(
        .mapx(mtpx),
        .mapy(),
        .mapz(a1)
    );

    mb ib1(mtpy, mtpx, b1);

    ma ia2(mtpy, mtpy, a2);

    mb ib2(
        .mbpx(),
        .mbpy(mtpx),
        .mbpz(b2)
    );

    or  (a1b1, a1, b1);
    and (a2b2, a2, b2);
    xor (mtpz, a1b1, a2b2);

endmodule
