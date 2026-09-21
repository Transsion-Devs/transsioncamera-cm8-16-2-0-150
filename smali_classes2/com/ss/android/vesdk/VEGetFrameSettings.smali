.class public Lcom/ss/android/vesdk/VEGetFrameSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEGetFrameSettings$Builder;,
        Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;,
        Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;,
        Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;,
        Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;,
        Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;,
        Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;,
        Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;,
        Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;
    }
.end annotation


# instance fields
.field private mDirectBitmap:Landroid/graphics/Bitmap;

.field private mDrawToScreen:Z

.field private mEffectRotation:I

.field private mEffectType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

.field private mFileCacheDir:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFitMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

.field private mFrameInterval:I

.field private mGetFrameCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

.field private mGetFrameType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

.field private mGetOriginFrameCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;

.field private mMirrorMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

.field private mNeedDelay:Z

.field private mNeedProcessAsCameraFrame:Z

.field private mOnInfoCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;

.field private mResultType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

.field private mRotation:I

.field private mTargetResolution:Lcom/ss/android/vesdk/VESize;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NORMAL_GET_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetFrameType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    .line 115
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/16 v1, 0x240

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mTargetResolution:Lcom/ss/android/vesdk/VESize;

    .line 117
    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;->NO_EFFECT:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    .line 121
    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFitMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    .line 129
    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;->NO_MIRROR:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mMirrorMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedProcessAsCameraFrame:Z

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectRotation:I

    .line 137
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedDelay:Z

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileName:Ljava/lang/String;

    .line 141
    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;->RGBA_ARRAY:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mResultType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    .line 145
    iput-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileCacheDir:Ljava/lang/String;

    const/4 v0, -0x1

    .line 147
    iput v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFrameInterval:I

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mDirectBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/VEGetFrameSettings$1;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/ss/android/vesdk/VEGetFrameSettings;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedProcessAsCameraFrame:Z

    return p1
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetFrameType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/ss/android/vesdk/VEGetFrameSettings;I)I
    .registers 2

    .line 9
    iput p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectRotation:I

    return p1
.end method

.method static synthetic access$1202(Lcom/ss/android/vesdk/VEGetFrameSettings;I)I
    .registers 2

    .line 9
    iput p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mRotation:I

    return p1
.end method

.method static synthetic access$1302(Lcom/ss/android/vesdk/VEGetFrameSettings;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedDelay:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/ss/android/vesdk/VEGetFrameSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileCacheDir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/ss/android/vesdk/VEGetFrameSettings;I)I
    .registers 2

    .line 9
    iput p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFrameInterval:I

    return p1
.end method

.method static synthetic access$1602(Lcom/ss/android/vesdk/VEGetFrameSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mResultType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/ss/android/vesdk/VEGetFrameSettings;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mDirectBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mTargetResolution:Lcom/ss/android/vesdk/VESize;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    return-object p1
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/VEGetFrameSettings;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mDrawToScreen:Z

    return p1
.end method

.method static synthetic access$502(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetFrameCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    return-object p1
.end method

.method static synthetic access$602(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetOriginFrameCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;

    return-object p1
.end method

.method static synthetic access$702(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;)Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mOnInfoCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;

    return-object p1
.end method

.method static synthetic access$802(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFitMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    return-object p1
.end method

.method static synthetic access$902(Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mMirrorMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_77

    .line 505
    instance-of v1, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;

    if-eqz v1, :cond_77

    .line 506
    iget-object v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetFrameType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    check-cast p1, Lcom/ss/android/vesdk/VEGetFrameSettings;

    iget-object v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetFrameType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    if-ne v1, v2, :cond_77

    iget-object v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    iget-object v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    if-ne v1, v2, :cond_77

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mDrawToScreen:Z

    iget-boolean v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mDrawToScreen:Z

    if-ne v1, v2, :cond_77

    iget-object v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFitMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    iget-object v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFitMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    if-ne v1, v2, :cond_77

    iget-object v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mTargetResolution:Lcom/ss/android/vesdk/VESize;

    iget-object v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mTargetResolution:Lcom/ss/android/vesdk/VESize;

    .line 510
    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VESize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFitMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    iget-object v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFitMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    if-ne v1, v2, :cond_77

    iget-object v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mMirrorMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    iget-object v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mMirrorMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    if-ne v1, v2, :cond_77

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedProcessAsCameraFrame:Z

    iget-boolean v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedProcessAsCameraFrame:Z

    if-ne v1, v2, :cond_77

    iget v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectRotation:I

    iget v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectRotation:I

    if-ne v1, v2, :cond_77

    iget v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mRotation:I

    iget v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mRotation:I

    if-ne v1, v2, :cond_77

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedDelay:Z

    iget-boolean v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedDelay:Z

    if-ne v1, v2, :cond_77

    iget-object v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileName:Ljava/lang/String;

    iget-object v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileName:Ljava/lang/String;

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mResultType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    iget-object v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mResultType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    if-ne v1, v2, :cond_77

    iget-object v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileCacheDir:Ljava/lang/String;

    iget-object v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileCacheDir:Ljava/lang/String;

    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget v1, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFrameInterval:I

    iget v2, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFrameInterval:I

    if-ne v1, v2, :cond_77

    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mDirectBitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/ss/android/vesdk/VEGetFrameSettings;->mDirectBitmap:Landroid/graphics/Bitmap;

    if-ne p0, p1, :cond_77

    const/4 p0, 0x1

    return p0

    :cond_77
    return v0
.end method

.method public getDirectBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 301
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mDirectBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getEffectRotation()I
    .registers 1

    .line 238
    iget p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectRotation:I

    return p0
.end method

.method public getEffectType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mEffectType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameEffectType;

    return-object p0
.end method

.method public getFileCacheDir()Ljava/lang/String;
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileCacheDir:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFitMode()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFitMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameFitMode;

    return-object p0
.end method

.method public getFrameInterval()I
    .registers 1

    .line 278
    iget p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mFrameInterval:I

    return p0
.end method

.method public getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetFrameCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    return-object p0
.end method

.method public getGetFrameOnInfoCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mOnInfoCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameOnInfoCallback;

    return-object p0
.end method

.method public getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetFrameType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    return-object p0
.end method

.method public getGetOriginFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mGetOriginFrameCallback:Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;

    return-object p0
.end method

.method public getMirrorMode()Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mMirrorMode:Lcom/ss/android/vesdk/VEGetFrameSettings$VEMirrorMode;

    return-object p0
.end method

.method public getNeedDelay()Z
    .registers 1

    .line 262
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedDelay:Z

    return p0
.end method

.method public getNeedProcessAsCameraFrame()Z
    .registers 1

    .line 230
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mNeedProcessAsCameraFrame:Z

    return p0
.end method

.method public getResultType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mResultType:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    return-object p0
.end method

.method public getRotation()I
    .registers 1

    .line 246
    iget p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mRotation:I

    return p0
.end method

.method public getTargetResolution()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mTargetResolution:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public isDrawToScreen()Z
    .registers 1

    .line 190
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEGetFrameSettings;->mDrawToScreen:Z

    return p0
.end method
