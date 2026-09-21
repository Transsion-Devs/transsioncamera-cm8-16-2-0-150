.class public abstract Lcom/transsion/camera/app/common/AppUIState;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static stateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_36

    .line 68
    :pswitch_3
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

    .line 66
    :pswitch_1a
    const-string p0, "state_vlog_recording"

    return-object p0

    .line 64
    :pswitch_1d
    const-string p0, "state_voice"

    return-object p0

    .line 62
    :pswitch_20
    const-string p0, "state_gesture"

    return-object p0

    .line 60
    :pswitch_23
    const-string p0, "state_movie_recording"

    return-object p0

    .line 58
    :pswitch_26
    const-string p0, "state_smile"

    return-object p0

    .line 56
    :pswitch_29
    const-string p0, "state_continuous_shot"

    return-object p0

    .line 54
    :pswitch_2c
    const-string p0, "state_saving"

    return-object p0

    .line 52
    :pswitch_2f
    const-string p0, "state_processing"

    return-object p0

    .line 50
    :pswitch_32
    const-string p0, "state_idle"

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
        :pswitch_3
        :pswitch_1a
    .end packed-switch
.end method
