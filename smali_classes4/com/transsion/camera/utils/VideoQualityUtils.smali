.class public abstract Lcom/transsion/camera/utils/VideoQualityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final config:Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;

.field private static mCameraId:Ljava/lang/String;

.field private static mCurrentModeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoQualityUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 16
    invoke-static {}, Lcom/transsion/camera/utils/videoquality/VideoQualityConfigFactory;->getConfig()Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->config:Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->mCurrentModeName:Ljava/lang/String;

    .line 18
    const-string v0, "0"

    sput-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public static getPictureForVideoQuality(I)Landroid/util/Size;
    .registers 4

    .line 39
    :try_start_0
    sget-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->config:Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;

    sget-object v1, Lcom/transsion/camera/utils/VideoQualityUtils;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;->getPictureForVideoQuality(ILjava/lang/String;)Landroid/util/Size;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 41
    sget-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get picture size for video quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSupportCustomVideoQuality(I)Z
    .registers 5

    .line 47
    sget-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    sget-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    .line 48
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 52
    :cond_16
    :try_start_16
    sget-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->config:Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;

    sget-object v2, Lcom/transsion/camera/utils/VideoQualityUtils;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0, v2}, Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;->isSupportCustomVideoQuality(ILjava/lang/String;)Z

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    move-exception p0

    .line 54
    sget-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check video quality support: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static setCameraFacing(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 25
    sput-object p0, Lcom/transsion/camera/utils/VideoQualityUtils;->mCameraId:Ljava/lang/String;

    .line 26
    sput-object p1, Lcom/transsion/camera/utils/VideoQualityUtils;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public static varargs setPlatformSpecificConfigs(Ljava/util/ArrayList;[Ljava/lang/Object;)V
    .registers 3

    .line 61
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p1

    if-nez p1, :cond_2b

    if-eqz p0, :cond_2b

    .line 62
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 63
    sget-object p1, Lcom/transsion/camera/utils/VideoQualityUtils;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    sget-object p1, Lcom/transsion/camera/utils/VideoQualityUtils;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    .line 64
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    :cond_22
    const/16 p1, 0xb

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2b
    return-void
.end method

.method public static setProfileConfigure(Landroid/media/CamcorderProfile;)V
    .registers 4

    .line 31
    :try_start_0
    sget-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->config:Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;

    sget-object v1, Lcom/transsion/camera/utils/VideoQualityUtils;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;->setProfileConfigure(Landroid/media/CamcorderProfile;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 33
    sget-object v0, Lcom/transsion/camera/utils/VideoQualityUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set profile configure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
