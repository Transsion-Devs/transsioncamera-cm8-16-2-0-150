.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;
.super Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;
    }
.end annotation


# static fields
.field private static final AE_STABLE_COUNT:I = 0x7

.field private static final EXTEND_DURATION:J = 0x2bcL

.field private static final STABLE_BV_THRESHOLD:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAEState:I

.field private mBVCount:I

.field private mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

.field private mBrightnessForPrint:I

.field private mCapturing:Z

.field private mDisplayTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;

.field private final mFacingTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

.field private mFirstStableBV:I

.field private mNextReadyTime:J

.field private final mNormalDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;

.field private mPreAEState:I

.field private mResumed:Z

.field private mStableAECount:I

.field private mStableBV:I

.field private final mStableDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStableBV(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableBV:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BrightnessValueMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .registers 6

    .line 74
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    .line 65
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    const/4 v1, -0x1

    .line 67
    iput v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mPreAEState:I

    .line 68
    iput v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mAEState:I

    .line 71
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableAECount:I

    .line 75
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mFacingTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

    .line 76
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mNormalDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;

    .line 77
    new-instance v2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;

    .line 78
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 81
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mResetBrightnessMonitorWhenDisplayChange:Z

    if-eqz p1, :cond_44

    .line 82
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;

    invoke-direct {p1, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mDisplayTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;

    :cond_44
    return-void
.end method

.method private capturing()Z
    .registers 7

    .line 168
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mCapturing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 171
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 172
    iget-wide v4, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mNextReadyTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_1a

    const-wide/16 v4, 0x2bc

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1a

    return v1

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private getStableBV(ZZ[I)V
    .registers 5

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->isFlashOff()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0x64

    .line 241
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableBV:I

    return-void

    .line 245
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->ringScreenLightOn()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_2f

    :cond_12
    const/4 v0, 0x0

    if-nez p1, :cond_18

    .line 250
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableAECount:I

    return-void

    :cond_18
    const/4 p1, 0x1

    if-nez p2, :cond_22

    .line 255
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableAECount:I

    .line 256
    aget p1, p3, v0

    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mFirstStableBV:I

    return-void

    .line 260
    :cond_22
    iget p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableAECount:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableAECount:I

    const/16 p1, 0xa

    if-le p2, p1, :cond_2f

    .line 262
    iget p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mFirstStableBV:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableBV:I

    :cond_2f
    :goto_2f
    return-void
.end method

.method private isAEStable(Ljava/lang/Integer;)Z
    .registers 3

    const/4 p0, 0x2

    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p0, v0, :cond_11

    const/4 p0, 0x4

    .line 178
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private printCurrentBrightness([I)V
    .registers 5

    .line 267
    const-string v0, "onFrameResult current brightness: "

    if-eqz p1, :cond_30

    array-length v1, p1

    if-gtz v1, :cond_8

    goto :goto_30

    :cond_8
    const/4 v1, 0x0

    .line 270
    aget p1, p1, v1

    .line 271
    iget v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    if-eq v1, p1, :cond_2f

    .line 272
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    :cond_2f
    return-void

    .line 268
    :cond_30
    :goto_30
    sget-object p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateDetector()V
    .registers 3

    .line 127
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->ringScreenLightSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;

    if-eq v0, v1, :cond_21

    .line 129
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->reset()V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    goto :goto_21

    .line 133
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mNormalDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;

    if-eq v0, v1, :cond_21

    .line 134
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->reset()V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mNormalDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    .line 138
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mFacingTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->-$$Nest$mfacingChanged(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mDisplayTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;

    if-eqz v0, :cond_3f

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->-$$Nest$mdisplayChanged(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 139
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->reset()V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;

    if-eqz p0, :cond_3f

    .line 141
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;->resetBrightness()V

    :cond_3f
    return-void
.end method


# virtual methods
.method public captureStart()V
    .registers 2

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mCapturing:Z

    return-void
.end method

.method public facingDetect()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mFacingTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->facingFront()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->-$$Nest$mfacingDetect(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->reset()V

    :cond_11
    return-void
.end method

.method public lowLight()Z
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->lowLight()Z

    move-result p0

    return p0
.end method

.method public nextCaptureReady()V
    .registers 3

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mCapturing:Z

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mNextReadyTime:J

    return-void
.end method

.method protected onFrameResultLocked(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    .line 191
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mResumed:Z

    if-nez p2, :cond_6

    goto/16 :goto_80

    .line 194
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->capturing()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->correctTime()V

    return-void

    .line 199
    :cond_12
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isShutterProcessing()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->correctTime()V

    return-void

    .line 204
    :cond_20
    sget-object p2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->BRIGHTNESS_VALUE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    if-eq p2, v0, :cond_27

    goto :goto_80

    :cond_27
    if-nez p1, :cond_2a

    goto :goto_80

    .line 211
    :cond_2a
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    .line 213
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->printCurrentBrightness([I)V

    if-eqz p2, :cond_80

    .line 215
    array-length p3, p2

    if-gtz p3, :cond_37

    goto :goto_80

    .line 219
    :cond_37
    iget p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    const/4 v0, 0x7

    if-ge p3, v0, :cond_41

    add-int/lit8 p3, p3, 0x1

    .line 220
    iput p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    return-void

    .line 224
    :cond_41
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mUpdateRingScreenLightOutBvSupport:Z

    if-eqz p3, :cond_70

    .line 225
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mAEState:I

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->isAEStable(Ljava/lang/Integer;)Z

    move-result p1

    .line 227
    iget p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mPreAEState:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->isAEStable(Ljava/lang/Integer;)Z

    move-result p3

    .line 228
    invoke-direct {p0, p1, p3, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->getStableBV(ZZ[I)V

    .line 229
    iget p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mAEState:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mPreAEState:I

    .line 232
    :cond_70
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    const/4 p3, 0x0

    aget p2, p2, p3

    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->detect(I)Z

    move-result p1

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;

    if-eqz p0, :cond_80

    .line 235
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;->onBrightnessDetected(Z)V

    :cond_80
    :goto_80
    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mResumed:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mCapturing:Z

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mResumed:Z

    return-void
.end method

.method public startMonitor()V
    .registers 3

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mResumed:Z

    .line 120
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->BRIGHTNESS_VALUE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->updateDetector()V

    .line 122
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    .line 123
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->startMonitor()V

    return-void
.end method

.method public stopMonitor()V
    .registers 3

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    .line 149
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->NONE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    .line 150
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mFacingTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

    if-eqz v0, :cond_14

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->facingFront()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->-$$Nest$mfacingDetect(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;Z)Z

    .line 155
    :cond_14
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->stopMonitor()V

    return-void
.end method

.method public updateScreenFromType(I)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mDisplayTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;

    if-eqz v0, :cond_16

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->-$$Nest$mdisplayDetect(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;I)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->reset()V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;

    if-eqz p0, :cond_16

    .line 106
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;->resetBrightness()V

    :cond_16
    return-void
.end method
