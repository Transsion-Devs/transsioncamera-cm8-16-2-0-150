.class public Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BaseRenderSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final RATIO_16_9:D = 1.7777777910232544

.field protected static final RATIO_1_1:D = 1.0

.field protected static final RATIO_4_3:D = 1.3333333730697632

.field protected static final RATIO_SPEC_16_9:Ljava/lang/String; = "16_9"

.field protected static final RATIO_SPEC_1_1:Ljava/lang/String; = "1_1"

.field protected static final RATIO_SPEC_4_3:Ljava/lang/String; = "4_3"

.field protected static final RATIO_SPEC_FULL:Ljava/lang/String; = "full"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getRatioSpec(II)Ljava/lang/String;
    .registers 6

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double p0, p0

    div-double/2addr v0, p0

    .line 32
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 33
    const-string p0, "1_1"

    return-object p0

    :cond_f
    const-wide p0, 0x3ff5555560000000L    # 1.3333333730697632

    .line 34
    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 35
    const-string p0, "4_3"

    return-object p0

    :cond_1d
    const-wide p0, 0x3ffc71c720000000L    # 1.7777777910232544

    .line 36
    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 37
    const-string p0, "16_9"

    return-object p0

    .line 40
    :cond_2b
    const-string p0, "full"

    return-object p0
.end method
