.class public final Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEGetFrameSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Lcom/ss/android/vesdk/VEGetFrameSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VEGetFrameSettings;-><init>(Lcom/ss/android/vesdk/VEGetFrameSettings$1;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VEGetFrameSettings;)V
    .registers 2

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/vesdk/VEGetFrameSettings;
    .registers 1

    .line 498
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    return-object p0
.end method

.method public setDirectBitmap(Landroid/graphics/Bitmap;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 489
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mDirectBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$1802(Lcom/ss/android/vesdk/VEGetFrameSettings;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setDrawToScreen(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mDrawToScreen:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$402(Lcom/ss/android/vesdk/VEGetFrameSettings;Z)Z

    return-object p0
.end method

.method public setEffectRotation(I)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectRotation:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$1102(Lcom/ss/android/vesdk/VEGetFrameSettings;I)I

    return-object p0
.end method

.method public setEffectType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$302(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    return-object p0
.end method

.method public setFileCacheDir(Ljava/lang/String;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileCacheDir:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$1402(Lcom/ss/android/vesdk/VEGetFrameSettings;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 471
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$1602(Lcom/ss/android/vesdk/VEGetFrameSettings;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFitMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 397
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mFitMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$802(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    return-object p0
.end method

.method public setFrameInterval(I)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mFrameInterval:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$1502(Lcom/ss/android/vesdk/VEGetFrameSettings;I)I

    return-object p0
.end method

.method public setGetFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetFrameCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$502(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    return-object p0
.end method

.method public setGetFrameOnInfoCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mOnInfoCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$702(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;

    return-object p0
.end method

.method public setGetFrameType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetFrameType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$102(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    return-object p0
.end method

.method public setGetOriginFrameCallback(Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetOriginFrameCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$602(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;

    return-object p0
.end method

.method public setMirrorMode(Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mMirrorMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$902(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    return-object p0
.end method

.method public setNeedDelay(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedDelay:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$1302(Lcom/ss/android/vesdk/VEGetFrameSettings;Z)Z

    return-object p0
.end method

.method public setNeedProcessAsCameraFrame(Z)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedProcessAsCameraFrame:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$1002(Lcom/ss/android/vesdk/VEGetFrameSettings;Z)Z

    return-object p0
.end method

.method public setResultType(Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mResultType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$1702(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    return-object p0
.end method

.method public setRotation(I)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mRotation:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$1202(Lcom/ss/android/vesdk/VEGetFrameSettings;I)I

    return-object p0
.end method

.method public setTargetResolution(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    # setter for: Lcom/ss/android/vesdk/VEGetFrameSettings;->mTargetResolution:Lcom/ss/android/vesdk/VESize;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->access$202(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method
