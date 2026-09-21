.class public Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;
.super Lcom/transsion/camera/manager/BrightnessStrategy;
.source "SourceFile"


# static fields
.field private static final BRIGHTNESS_RANGE_SOURCE:[I

.field private static final BRIGHTNESS_RANGE_TARGET:[I


# instance fields
.field private mBrightnessSpline:Lcom/transsion/camera/utils/LinearSpline;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x26

    const/16 v2, 0x28

    const/16 v3, 0x96

    const/16 v4, 0xff

    .line 9
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;->BRIGHTNESS_RANGE_SOURCE:[I

    const/16 v0, 0x5a

    const/16 v1, 0xc3

    const/16 v2, 0xe

    const/16 v3, 0x46

    .line 10
    filled-new-array {v2, v3, v0, v1, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;->BRIGHTNESS_RANGE_TARGET:[I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;Landroid/app/Activity;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/manager/BrightnessStrategy;-><init>(Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;Landroid/app/Activity;)V

    return-void
.end method

.method private calcEnhancedBrightness(I)I
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;->mBrightnessSpline:Lcom/transsion/camera/utils/LinearSpline;

    if-nez v0, :cond_f

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/LinearSpline;

    sget-object v1, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;->BRIGHTNESS_RANGE_SOURCE:[I

    sget-object v2, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;->BRIGHTNESS_RANGE_TARGET:[I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/LinearSpline;-><init>([I[I)V

    iput-object v0, p0, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;->mBrightnessSpline:Lcom/transsion/camera/utils/LinearSpline;

    .line 43
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;->mBrightnessSpline:Lcom/transsion/camera/utils/LinearSpline;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/LinearSpline;->interpolate(I)I

    move-result v0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calcEnhancedBrightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " --> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private enhanceScreenBrightness()V
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/transsion/camera/manager/BrightnessStrategy;->getSystemBrightness()I

    move-result v0

    .line 33
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;->calcEnhancedBrightness(I)I

    move-result v0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mBrightnessControl:Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;

    if-eqz p0, :cond_f

    .line 35
    invoke-interface {p0, v0}, Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;->setScreenBrightness(I)V

    :cond_f
    return-void
.end method


# virtual methods
.method public init()V
    .registers 1

    .line 19
    invoke-super {p0}, Lcom/transsion/camera/manager/BrightnessStrategy;->init()V

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;->enhanceScreenBrightness()V

    return-void
.end method

.method public resetBrightnessLogic(I)V
    .registers 3

    .line 25
    invoke-super {p0, p1}, Lcom/transsion/camera/manager/BrightnessStrategy;->resetBrightnessLogic(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;->enhanceScreenBrightness()V

    :cond_9
    return-void
.end method
