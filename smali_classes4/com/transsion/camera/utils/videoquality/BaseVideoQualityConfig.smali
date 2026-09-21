.class public abstract Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;
    }
.end annotation


# static fields
.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field final BACK_CAMERA_KEY:Ljava/lang/String;

.field final DEFAULT_QUALITY:I

.field final FRONT_CAMERA_KEY:Ljava/lang/String;

.field protected final backCameraPictureSizeConfigs:Ljava/util/Map;

.field protected final backCameraProfileConfigs:Ljava/util/Map;

.field protected final frontCameraPictureSizeConfigs:Ljava/util/Map;

.field protected final frontCameraProfileConfigs:Ljava/util/Map;

.field protected final mCustomVideoQuality:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoQualityConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 22
    iput v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->DEFAULT_QUALITY:I

    .line 23
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->BACK_CAMERA_KEY:Ljava/lang/String;

    .line 24
    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->FRONT_CAMERA_KEY:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->loadCustomVideoQuality()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->mCustomVideoQuality:Ljava/util/Map;

    .line 28
    invoke-virtual {p0}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->loadBackCameraProfileConfigs()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->backCameraProfileConfigs:Ljava/util/Map;

    .line 29
    invoke-virtual {p0}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->loadFrontCameraProfileConfigs()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->frontCameraProfileConfigs:Ljava/util/Map;

    .line 30
    invoke-virtual {p0}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->loadBackCameraPictureSizeConfigs()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->backCameraPictureSizeConfigs:Ljava/util/Map;

    .line 31
    invoke-virtual {p0}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->loadFrontCameraPictureSizeConfigs()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->frontCameraPictureSizeConfigs:Ljava/util/Map;

    return-void
.end method

.method private applyConfig(Landroid/media/CamcorderProfile;Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;)V
    .registers 3

    .line 85
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->duration:I

    iput p0, p1, Landroid/media/CamcorderProfile;->duration:I

    .line 86
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->quality:I

    iput p0, p1, Landroid/media/CamcorderProfile;->quality:I

    .line 87
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->fileFormat:I

    iput p0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 88
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->videoCodec:I

    iput p0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 89
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->videoBitRate:I

    iput p0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 90
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->videoFrameRate:I

    iput p0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 91
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->videoFrameWidth:I

    iput p0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 92
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->videoFrameHeight:I

    iput p0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 93
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->audioCodec:I

    iput p0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 94
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->audioBitRate:I

    iput p0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 95
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->audioSampleRate:I

    iput p0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 96
    iget p0, p2, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;->audioChannels:I

    iput p0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    return-void
.end method

.method private loadCustomVideoQuality()Ljava/util/Map;
    .registers 9

    const/4 v0, 0x6

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 35
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomVideoQuality:[Ljava/lang/String;

    .line 36
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-string v4, "1"

    const-string v5, "0"

    if-eqz v2, :cond_37

    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_37

    const/4 v1, 0x0

    .line 39
    aget-object v1, v2, v1

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->parseQualityOrDefault(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 40
    aget-object v1, v2, v1

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->parseQualityOrDefault(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 42
    :cond_37
    sget-object p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Invalid custom video quality configuration. Using default values."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_44
    sget-object p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Custom VideoQuality value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v3
.end method

.method private parseQualityOrDefault(Ljava/lang/String;I)I
    .registers 6

    .line 52
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 54
    sget-object v0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid custom video quality value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Using default value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method


# virtual methods
.method public getPictureForVideoQuality(ILjava/lang/String;)Landroid/util/Size;
    .registers 7

    .line 101
    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->isFrontCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->frontCameraPictureSizeConfigs:Ljava/util/Map;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->backCameraPictureSizeConfigs:Ljava/util/Map;

    .line 102
    :goto_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    if-nez v0, :cond_40

    .line 104
    sget-object v1, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported video quality for picture size, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->isFrontCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "front"

    goto :goto_2e

    :cond_2c
    const-string p0, "back"

    :goto_2e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " camera: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_40
    return-object v0
.end method

.method public isFrontCamera(Ljava/lang/String;)Z
    .registers 2

    .line 125
    const-string p0, "1"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isSupportCustomVideoQuality(ILjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x6

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoQuality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cameraId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    const-string v1, "1"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "0"

    if-nez v2, :cond_35

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    return v3

    .line 115
    :cond_35
    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->isFrontCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->mCustomVideoQuality:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_4c

    .line 117
    :cond_44
    iget-object p0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->mCustomVideoQuality:Ljava/util/Map;

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 115
    :goto_4c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p1, p0, :cond_53

    return v3

    .line 121
    :cond_53
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected abstract loadBackCameraPictureSizeConfigs()Ljava/util/Map;
.end method

.method protected abstract loadBackCameraProfileConfigs()Ljava/util/Map;
.end method

.method protected abstract loadFrontCameraPictureSizeConfigs()Ljava/util/Map;
.end method

.method protected abstract loadFrontCameraProfileConfigs()Ljava/util/Map;
.end method

.method protected abstract setPlatformSpecificConfigs(Landroid/media/CamcorderProfile;I)V
.end method

.method public setProfileConfigure(Landroid/media/CamcorderProfile;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x6

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_7d

    if-nez p2, :cond_b

    goto/16 :goto_7d

    .line 66
    :cond_b
    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->isFrontCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->frontCameraProfileConfigs:Ljava/util/Map;

    goto :goto_16

    :cond_14
    iget-object v2, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->backCameraProfileConfigs:Ljava/util/Map;

    .line 69
    :goto_16
    iget-object v3, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->mCustomVideoQuality:Ljava/util/Map;

    if-eqz v3, :cond_40

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_40

    .line 70
    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->isFrontCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->mCustomVideoQuality:Ljava/util/Map;

    const-string v3, "1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_3c

    .line 72
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->mCustomVideoQuality:Ljava/util/Map;

    const-string v3, "0"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 70
    :goto_3c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    :cond_40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;

    if-eqz v1, :cond_53

    .line 77
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->applyConfig(Landroid/media/CamcorderProfile;Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;)V

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->setPlatformSpecificConfigs(Landroid/media/CamcorderProfile;I)V

    return-void

    .line 80
    :cond_53
    sget-object p1, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video quality for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->isFrontCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_68

    const-string p0, "front"

    goto :goto_6a

    :cond_68
    const-string p0, "back"

    :goto_6a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " camera: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_7d
    :goto_7d
    sget-object p0, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Invalid input: profile or cameraId is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
