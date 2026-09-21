.class public Lcom/transsion/camera/feature/setting/asd/AsdAlgoType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALGO_TYPE_HDR:I = 0x1

.field public static final ALGO_TYPE_LOW_LIGHT_HDR:I = 0x2

.field public static final ALGO_TYPE_MFLL:I = 0x65

.field public static final ALGO_TYPE_MIDDLE_NIGHT:I = 0x5

.field public static final ALGO_TYPE_NIGHT_LIGHT:I = 0x3

.field public static final ALGO_TYPE_NONE:I = 0x0

.field public static final ALGO_TYPE_SUPERAIRAW_FASTNIGHT:I = 0xf

.field public static final ALGO_TYPE_SUPERAIRAW_HDR:I = 0xd

.field public static final ALGO_TYPE_SUPERAIRAW_HDSR:I = 0x11

.field public static final ALGO_TYPE_SUPERAIRAW_MFNR:I = 0xe

.field public static final ALGO_TYPE_SUPERAIRAW_SR:I = 0x10

.field public static final ALGO_TYPE_SUPER_RESOLUTION:I = 0x6

.field public static final ALGO_TYPE_TRAN_NIGHT:I = 0x4

.field public static final ALGO_TYPE_TURBO_FUSION_FN:I = 0xc

.field public static final ALGO_TYPE_TURBO_FUSION_HDR:I = 0x7

.field public static final ALGO_TYPE_TURBO_FUSION_HDSR:I = 0xb

.field public static final ALGO_TYPE_TURBO_FUSION_MFNR:I = 0x8

.field public static final ALGO_TYPE_TURBO_FUSION_SN:I = 0x9

.field public static final ALGO_TYPE_TURBO_FUSION_SR:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x65

    if-eq p0, v0, :cond_42

    packed-switch p0, :pswitch_data_46

    .line 73
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :pswitch_c
    const-string p0, "TURBO_AIRAW_HDSR"

    return-object p0

    .line 65
    :pswitch_f
    const-string p0, "TURBO_AIRAW_SR"

    return-object p0

    .line 63
    :pswitch_12
    const-string p0, "TURBO_AIRAW_FASTNIGHT"

    return-object p0

    .line 61
    :pswitch_15
    const-string p0, "TURBO_AIRAW_MFNR"

    return-object p0

    .line 59
    :pswitch_18
    const-string p0, "TURBO_AIRAW_HDR"

    return-object p0

    .line 57
    :pswitch_1b
    const-string p0, "TURBO_FUSION_FN"

    return-object p0

    .line 55
    :pswitch_1e
    const-string p0, "TURBO_FUSION_HDSR"

    return-object p0

    .line 53
    :pswitch_21
    const-string p0, "TURBO_FUSION_SR"

    return-object p0

    .line 51
    :pswitch_24
    const-string p0, "TURBO_FUSION_SN"

    return-object p0

    .line 49
    :pswitch_27
    const-string p0, "TURBO_FUSION_MFNR"

    return-object p0

    .line 47
    :pswitch_2a
    const-string p0, "TURBO_FUSION_HDR"

    return-object p0

    .line 45
    :pswitch_2d
    const-string p0, "SUPER_RESOLUTION"

    return-object p0

    .line 43
    :pswitch_30
    const-string p0, "MIDDLE_NIGHT"

    return-object p0

    .line 41
    :pswitch_33
    const-string p0, "TRAN_NIGHT"

    return-object p0

    .line 39
    :pswitch_36
    const-string p0, "NIGHT_LIGHT"

    return-object p0

    .line 37
    :pswitch_39
    const-string p0, "LOW_LIGHT_HDR"

    return-object p0

    .line 35
    :pswitch_3c
    const-string p0, "HDR"

    return-object p0

    .line 71
    :pswitch_3f
    const-string p0, "NONE"

    return-object p0

    .line 69
    :cond_42
    const-string p0, "MFLL"

    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method
