.class public abstract Lcom/transsion/camera/app/common/motioncapture/MotionCaptureModeRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getSmartDenoiseRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 5

    .line 41
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v1, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "off"

    const-string v2, "on"

    if-eqz p0, :cond_f

    move-object v3, v2

    goto :goto_10

    :cond_f
    move-object v3, v1

    :goto_10
    if-eqz p0, :cond_13

    move-object v1, v2

    .line 42
    :cond_13
    const-string p0, "key_setting_smart_denoise"

    invoke-virtual {v0, p0, v3, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method
