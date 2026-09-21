.class public Lcom/transsion/camera/utils/dfx/impl/ExInjection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/dfx/inter/IExInjection;


# static fields
.field private static final DEFAULT_MAX_EX_MEMORY_MAPS:Ljava/util/Map;


# instance fields
.field private mAcquirePhotoTimeout:I

.field private mAssetsCopyTimeout:I

.field private mMaxExMemory:I

.field private mMaxExTemperature:I

.field private mMinDrawFrames:I

.field private mSaverTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/dfx/impl/ExInjection$1;

    invoke-direct {v0}, Lcom/transsion/camera/utils/dfx/impl/ExInjection$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->DEFAULT_MAX_EX_MEMORY_MAPS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxExTemperature()I
    .registers 1

    .line 72
    iget p0, p0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->mMaxExTemperature:I

    return p0
.end method

.method public getMinDrawFrames()I
    .registers 1

    .line 104
    iget p0, p0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->mMinDrawFrames:I

    return p0
.end method

.method public getPhotoTimeout()I
    .registers 1

    .line 77
    iget p0, p0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->mAcquirePhotoTimeout:I

    return p0
.end method

.method public getSaverTimeout()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->mSaverTimeout:I

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 52
    const-string p1, "debug.cam.dfx.saver_timeout"

    const/16 v0, 0xbb8

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->mSaverTimeout:I

    .line 53
    const-string p1, "debug.cam.dfx.max_ex_temperature"

    const/16 v0, 0x35

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->mMaxExTemperature:I

    .line 54
    const-string p1, "debug.cam.dfx.acquire_photo_timeout"

    const/16 v0, 0x2710

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->mAcquirePhotoTimeout:I

    .line 55
    const-string p1, "debug.cam.dfx.assets_copy_timeout"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->mAssetsCopyTimeout:I

    .line 56
    const-string p1, "debug.cam.dfx.max_ex_memory"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->mMaxExMemory:I

    .line 57
    const-string p1, "debug.cam.dfx.min_draw_frame"

    const/16 v0, 0xd

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;->mMinDrawFrames:I

    return-void
.end method
