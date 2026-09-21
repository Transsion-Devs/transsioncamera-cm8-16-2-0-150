.class public Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;
    }
.end annotation


# instance fields
.field mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 14
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$1;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;
    .registers 1

    .line 25
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;->INSTANCE:Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;->getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    move-result-object v0

    return-object v0
.end method

.method private native nativeGetEnableRemuxErrorCode()I
.end method

.method private native nativeIsCanRemuxVideo()Z
.end method

.method private native nativeIsUseFilterProcess()Z
.end method

.method private native nativeSetEditorStatus(J)I
.end method

.method private native nativeSetVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;J)I
.end method

.method private native nativeUpdateVideoEncodeSettings()V
.end method


# virtual methods
.method public getEnableRemuxErrorCode()I
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->nativeGetEnableRemuxErrorCode()I

    move-result p0

    return p0
.end method

.method public isEnableRemuxVideo()Z
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->nativeIsCanRemuxVideo()Z

    move-result p0

    return p0
.end method

.method public isUseFilterProcess()Z
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->nativeIsUseFilterProcess()Z

    move-result p0

    return p0
.end method

.method public setVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;J)I
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->nativeSetVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;J)I

    move-result p2

    if-eqz p2, :cond_7

    return p2

    .line 55
    :cond_7
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    const/4 p0, 0x0

    return p0
.end method

.method public updateVideoEncodeSettings()Lcom/ss/android/vesdk/VEVideoEncodeSettings;
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->nativeIsCanRemuxVideo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->setEnableRemuxVideo(Z)V

    .line 87
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->nativeUpdateVideoEncodeSettings()V

    .line 89
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    return-object p0
.end method
