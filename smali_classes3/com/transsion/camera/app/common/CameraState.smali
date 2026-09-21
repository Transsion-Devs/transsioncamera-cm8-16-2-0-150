.class public abstract Lcom/transsion/camera/app/common/CameraState;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static stateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_36

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN STATE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :pswitch_1a
    const-string p0, "closing"

    return-object p0

    .line 32
    :pswitch_1d
    const-string p0, "recording"

    return-object p0

    .line 30
    :pswitch_20
    const-string p0, "capturing"

    return-object p0

    .line 28
    :pswitch_23
    const-string p0, "previewed"

    return-object p0

    .line 26
    :pswitch_26
    const-string p0, "startPreviewing"

    return-object p0

    .line 24
    :pswitch_29
    const-string p0, "modeOpened"

    return-object p0

    .line 22
    :pswitch_2c
    const-string p0, "opened"

    return-object p0

    .line 20
    :pswitch_2f
    const-string p0, "opening"

    return-object p0

    .line 18
    :pswitch_32
    const-string p0, "closed"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method
