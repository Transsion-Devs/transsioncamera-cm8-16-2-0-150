.class public Lcom/transsion/camera/utils/tuning/ScreenShot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;


# static fields
.field public static final SHOT_TITLES:[Ljava/lang/String;

.field public static final SHOT_VALUES:[Ljava/lang/String;


# instance fields
.field private mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    const-string v0, "Preview"

    const-string v1, "Screen"

    const-string v2, "OFF"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/tuning/ScreenShot;->SHOT_TITLES:[Ljava/lang/String;

    .line 15
    const-string v0, "PREVIEW"

    const-string v1, "SCREEN"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/tuning/ScreenShot;->SHOT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenShotTitle()Ljava/lang/String;
    .registers 2

    .line 52
    sget-object v0, Lcom/transsion/camera/utils/tuning/ScreenShot;->SHOT_VALUES:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/ScreenShot;->getScreenShotValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_11

    .line 55
    sget-object v0, Lcom/transsion/camera/utils/tuning/ScreenShot;->SHOT_TITLES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 57
    :cond_11
    const-string p0, "OFF"

    return-object p0
.end method

.method public getScreenShotValue()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/ScreenShot;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .registers 3

    .line 21
    const-string v0, "screen_shot"

    const-string v1, "OFF"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/tuning/TuningFeatureStateHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/tuning/ScreenShot;->mState:Ljava/lang/String;

    return-void
.end method

.method public isEnable()Z
    .registers 2

    .line 37
    const-string v0, "OFF"

    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/ScreenShot;->mState:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPreview()Z
    .registers 2

    .line 42
    const-string v0, "PREVIEW"

    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/ScreenShot;->mState:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isScreen()Z
    .registers 2

    .line 47
    const-string v0, "SCREEN"

    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/ScreenShot;->mState:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public restoreDefault()V
    .registers 2

    .line 26
    const-string v0, "OFF"

    iput-object v0, p0, Lcom/transsion/camera/utils/tuning/ScreenShot;->mState:Ljava/lang/String;

    .line 27
    const-string p0, "screen_shot"

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/tuning/TuningFeatureStateHelper;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenShotState(Ljava/lang/String;)V
    .registers 3

    .line 64
    const-string v0, "screen_shot"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/tuning/TuningFeatureStateHelper;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/utils/tuning/ScreenShot;->mState:Ljava/lang/String;

    return-void
.end method
