.class public Lcom/ss/android/vesdk/VEBeautyParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEBeautyParam$VEBeautyType;
    }
.end annotation


# static fields
.field public static final BEAUTY_BLUSHER:I = 0x12

.field public static final BEAUTY_BRIGHTEN:I = 0x1

.field public static final BEAUTY_LIPSTICK:I = 0x11

.field public static final BEAUTY_NASOLABIAL:I = 0x13

.field public static final BEAUTY_NIGHT_CONTRASTB:I = 0xf

.field public static final BEAUTY_NIGHT_CONTRASTK:I = 0xe

.field public static final BEAUTY_NIGHT_GAMMA:I = 0xd

.field public static final BEAUTY_POUCH:I = 0x14

.field public static final BEAUTY_RESHAPE_CHEEK:I = 0x5

.field public static final BEAUTY_RESHAPE_EYE:I = 0x4

.field public static final BEAUTY_SHARP:I = 0x9

.field public static final BEAUTY_SMOOTH:I = 0x2

.field public static final BEF_INTENSITY_TYPE_CORNER_EYE:I = 0x22

.field public static final BEF_INTENSITY_TYPE_CUT_FACE:I = 0x1d

.field public static final BEF_INTENSITY_TYPE_DRAG_LIPS:I = 0x21

.field public static final BEF_INTENSITY_TYPE_FACE_SMOOTH:I = 0x25

.field public static final BEF_INTENSITY_TYPE_FAR_EYE:I = 0x15

.field public static final BEF_INTENSITY_TYPE_LIP_ENHANCE:I = 0x23

.field public static final BEF_INTENSITY_TYPE_MOVE_CHIN:I = 0x1b

.field public static final BEF_INTENSITY_TYPE_MOVE_MOUTH:I = 0x1a

.field public static final BEF_INTENSITY_TYPE_MOVE_NOSE:I = 0x18

.field public static final BEF_INTENSITY_TYPE_POINTY_CHIN:I = 0x24

.field public static final BEF_INTENSITY_TYPE_ROTATE_EYE:I = 0x16

.field public static final BEF_INTENSITY_TYPE_SMALL_FACE:I = 0x1e

.field public static final BEF_INTENSITY_TYPE_ZOOM_CHEEK_BONE:I = 0x20

.field public static final BEF_INTENSITY_TYPE_ZOOM_FOREHEAD:I = 0x1c

.field public static final BEF_INTENSITY_TYPE_ZOOM_JAW_BONE:I = 0x1f

.field public static final BEF_INTENSITY_TYPE_ZOOM_MOUTH:I = 0x19

.field public static final BEF_INTENSITY_TYPE_ZOOM_NOSE:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describle(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_28

    const/4 v0, 0x5

    if-eq p0, v0, :cond_25

    const/16 v0, 0x9

    if-eq p0, v0, :cond_22

    packed-switch p0, :pswitch_data_32

    .line 151
    const-string p0, ""

    return-object p0

    .line 149
    :pswitch_16
    const-string p0, "beauty_pouch"

    return-object p0

    .line 147
    :pswitch_19
    const-string p0, "beauty_nasolabial"

    return-object p0

    .line 145
    :pswitch_1c
    const-string p0, "beauty_blusher"

    return-object p0

    .line 143
    :pswitch_1f
    const-string p0, "beauty_lipstick"

    return-object p0

    .line 137
    :cond_22
    const-string p0, "sharp"

    return-object p0

    .line 141
    :cond_25
    const-string p0, "reshape cheek"

    return-object p0

    .line 139
    :cond_28
    const-string p0, "reshape_eye"

    return-object p0

    .line 135
    :cond_2b
    const-string p0, "beauty_smooth"

    return-object p0

    .line 133
    :cond_2e
    const-string p0, "beauty_brighten"

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x11
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method
