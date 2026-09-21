.class public Lcom/stmobile/facebasejni/common/FaceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;,
        Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;,
        Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pointConfigFromInt(I)Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;
    .registers 2

    .line 103
    sget-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_21:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    .line 121
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_106:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    return-object p0

    .line 118
    :cond_13
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_296:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    return-object p0

    .line 115
    :cond_16
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_240:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    return-object p0

    .line 112
    :cond_19
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_137:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    return-object p0

    .line 109
    :cond_1c
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_106:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    return-object p0

    .line 106
    :cond_1f
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->POINT_COUNT_21:Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    return-object p0
.end method

.method public static resizeConfigFromInt(I)Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;
    .registers 2

    .line 73
    sget-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    packed-switch p0, :pswitch_data_18

    return-object v0

    .line 94
    :pswitch_6
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_1280W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    return-object p0

    .line 91
    :pswitch_9
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_1080W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    return-object p0

    .line 88
    :pswitch_c
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_960W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    return-object p0

    .line 85
    :pswitch_f
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_720W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    return-object p0

    .line 82
    :pswitch_12
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_640W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    return-object p0

    .line 79
    :pswitch_15
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_480W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    return-object p0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static smileConfigFromInt(I)F
    .registers 3

    const/high16 v0, 0x425c0000    # 55.0f

    if-eqz p0, :cond_1d

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_17

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    const/4 v1, 0x4

    if-eq p0, v1, :cond_11

    return v0

    :cond_11
    const/high16 p0, 0x42960000    # 75.0f

    return p0

    :cond_14
    const/high16 p0, 0x428c0000    # 70.0f

    return p0

    :cond_17
    const/high16 p0, 0x42820000    # 65.0f

    return p0

    :cond_1a
    const/high16 p0, 0x42700000    # 60.0f

    return p0

    :cond_1d
    return v0
.end method
