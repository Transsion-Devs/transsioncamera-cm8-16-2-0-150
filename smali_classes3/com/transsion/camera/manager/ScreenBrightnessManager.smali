.class public Lcom/transsion/camera/manager/ScreenBrightnessManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;,
        Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;,
        Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sAllHashCodeList:Ljava/util/List;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityHashCode:Ljava/lang/String;

.field private mActivityStartFlow:I

.field private mCurrentBrightness:I

.field private mForceSetMode:Z

.field private mInitialBrightness:I

.field private final mLimitedMaxBrightness:I

.field private mNeedCustomSetBrightness:Z

.field private mPaused:Z

.field private mRingScreenLightMode:Z

.field private final mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

.field private mStopped:Z

.field private final mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;


# direct methods
.method public static synthetic $r8$lambda$0UvNKfmyGHV8CCrMh8Ea7VaZ26Q(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->lambda$setScreenBrightness$2(Landroid/app/Activity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AOhy3ZCUb7cv08y4K9dqml8vubs(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->lambda$resetToFollowSystem$0(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Eg8H0RCIKr6gvf2AOgxjtzVN8Ww(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->lambda$setScreenBrightness$1(Landroid/app/Activity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IOL6qaeZfHztNIfgSxSexOISTgk(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->lambda$setScreenBrightness$3(Landroid/app/Activity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3tXuGcP-vOf4gmlisjPbhNPF7k(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->lambda$setScreenBrightness$4(Landroid/app/Activity;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenBrightnessManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->sAllHashCodeList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 8

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStopped:Z

    .line 38
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityStartFlow:I

    const/16 v1, 0xff

    .line 41
    iput v1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mInitialBrightness:I

    .line 43
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mCurrentBrightness:I

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    .line 58
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isEnhanceScreenBrightnessSupport()Z

    move-result v0

    .line 59
    const-string v1, "enhance_screen_brightness_strategy"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 60
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v2

    .line 61
    sget-object v3, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ScreenBrightnessManager] adbEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", xmlConfig:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isMonkey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_89

    if-eqz v1, :cond_89

    if-eqz v2, :cond_4c

    goto :goto_89

    :cond_4c
    const/4 v0, 0x1

    if-ne v1, v0, :cond_5e

    .line 67
    new-instance v0, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/manager/AutoV1BrightnessStrategy;-><init>(Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    .line 68
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;

    invoke-direct {v0, v3}, Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    goto :goto_97

    .line 70
    :cond_5e
    new-instance v0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;-><init>(Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-le v0, v1, :cond_81

    .line 72
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSystemBacklightV2()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 73
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;

    invoke-direct {v0, v3}, Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    goto :goto_97

    .line 75
    :cond_79
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;

    invoke-direct {v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager$DisplayManagerAPI;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    goto :goto_97

    .line 78
    :cond_81
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;

    invoke-direct {v0, v3}, Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    goto :goto_97

    .line 64
    :cond_89
    :goto_89
    new-instance v0, Lcom/transsion/camera/manager/NullBrightnessStrategy;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/manager/NullBrightnessStrategy;-><init>(Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    .line 65
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;

    invoke-direct {v0, v3}, Lcom/transsion/camera/manager/ScreenBrightnessManager$ActivityWindowAPI;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    .line 82
    :goto_97
    iput-object p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivity:Landroid/app/Activity;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityHashCode:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivity:Landroid/app/Activity;

    const-string v0, "max_enhance_screen_brightness"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xfe

    if-lez p1, :cond_b6

    .line 89
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mLimitedMaxBrightness:I

    return-void

    .line 91
    :cond_b6
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mLimitedMaxBrightness:I

    return-void
.end method

.method private doStop()V
    .registers 6

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityStartFlow:I

    .line 167
    sget-object v1, Lcom/transsion/camera/manager/ScreenBrightnessManager;->sAllHashCodeList:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityHashCode:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    sget-object v2, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doStop, mForceSetMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    invoke-virtual {v2}, Lcom/transsion/camera/manager/BrightnessStrategy;->stop()V

    .line 171
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->resetToDefault(Landroid/app/Activity;ZZ)V

    .line 174
    :cond_3f
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    .line 175
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mRingScreenLightMode:Z

    return-void
.end method

.method private enterForceSetMode(I)V
    .registers 5

    .line 263
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterForceSetMode brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    .line 266
    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->setScreenBrightness(I)V

    return-void
.end method

.method private exitForceSetMode()V
    .registers 4

    .line 270
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitForceSetMode, mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mPaused:Z

    if-nez v0, :cond_23

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    const/4 v0, 0x2

    .line 274
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->resetBrightnessLogic(I)V

    :cond_23
    return-void
.end method

.method private synthetic lambda$resetToFollowSystem$0(Landroid/app/Activity;)V
    .registers 3

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->resetToDefault(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private synthetic lambda$setScreenBrightness$1(Landroid/app/Activity;I)V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    add-int/lit8 p2, p2, -0x1

    iget-boolean p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->setBrightness(Landroid/app/Activity;IZ)V

    return-void
.end method

.method private synthetic lambda$setScreenBrightness$2(Landroid/app/Activity;I)V
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    iget-boolean p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->setBrightness(Landroid/app/Activity;IZ)V

    return-void
.end method

.method private synthetic lambda$setScreenBrightness$3(Landroid/app/Activity;I)V
    .registers 5

    .line 316
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x64

    .line 319
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 320
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setScreenBrightness$4(Landroid/app/Activity;I)V
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    iget-boolean p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->setBrightness(Landroid/app/Activity;IZ)V

    return-void
.end method

.method private resetBrightnessLogic(I)V
    .registers 4

    .line 339
    iget-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    if-eqz v0, :cond_c

    .line 340
    sget-object p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[resetBrightnessLogic] mForceMaxMode already set max brightness."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 343
    :cond_c
    iget-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mNeedCustomSetBrightness:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    invoke-virtual {v0}, Lcom/transsion/camera/manager/BrightnessStrategy;->getSystemBrightness()I

    move-result v0

    const/16 v1, 0x96

    if-le v0, v1, :cond_20

    const/high16 p1, 0x43160000    # 150.0f

    .line 344
    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->updateScreenBrightness(F)V

    return-void

    .line 348
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/BrightnessStrategy;->resetBrightnessLogic(I)V

    return-void
.end method


# virtual methods
.method public enterRingScreenLightMode()V
    .registers 2

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mRingScreenLightMode:Z

    const/16 v0, 0xff

    .line 254
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->enterForceSetMode(I)V

    return-void
.end method

.method public enterScreenFlashMode(I)V
    .registers 3

    .line 236
    iget-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mRingScreenLightMode:Z

    if-eqz v0, :cond_c

    .line 237
    sget-object p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "RingScreenLightMode on, ignore it!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_c
    invoke-direct {p0, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->enterForceSetMode(I)V

    return-void
.end method

.method public enterVideoSavePowerMode()V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->getCurrent(Landroid/app/Activity;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_14

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 210
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mInitialBrightness:I

    goto :goto_1c

    .line 212
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    invoke-virtual {v0}, Lcom/transsion/camera/manager/BrightnessStrategy;->getSystemBrightness()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mInitialBrightness:I

    .line 214
    :goto_1c
    iget v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mInitialBrightness:I

    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mCurrentBrightness:I

    return-void
.end method

.method public exitRingScreenLightMode()V
    .registers 2

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mRingScreenLightMode:Z

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->exitForceSetMode()V

    return-void
.end method

.method public exitScreenFlashMode()V
    .registers 2

    .line 244
    iget-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mRingScreenLightMode:Z

    if-eqz v0, :cond_c

    .line 245
    sget-object p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "RingScreenLightMode on, ignore it!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->exitForceSetMode()V

    return-void
.end method

.method public exitVideoSavePowerMode()V
    .registers 2

    .line 218
    iget-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xff

    .line 219
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->enterForceSetMode(I)V

    return-void

    :cond_a
    const/4 v0, 0x2

    .line 221
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->resetBrightnessLogic(I)V

    return-void
.end method

.method public getCurrentBrightness()I
    .registers 1

    .line 204
    iget p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mCurrentBrightness:I

    return p0
.end method

.method public getGotoGalleryBrightness()F
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;->getCurrent(Landroid/app/Activity;)F

    move-result p0

    return p0
.end method

.method public getInitialBrightness()I
    .registers 1

    .line 200
    iget p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mInitialBrightness:I

    return p0
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityStartFlow:I

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    invoke-virtual {p0}, Lcom/transsion/camera/manager/BrightnessStrategy;->init()V

    return-void
.end method

.method public isForceSetMode()Z
    .registers 1

    .line 280
    iget-boolean p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    return p0
.end method

.method public needCustomSetBrightness(Z)V
    .registers 2

    .line 335
    iput-boolean p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mNeedCustomSetBrightness:Z

    return-void
.end method

.method public onWindowsFocusChanged(Z)V
    .registers 5

    .line 105
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowsFocusChanged, hasFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mStartEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityStartFlow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_46

    .line 108
    iget p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityStartFlow:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_32

    .line 109
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityStartFlow:I

    .line 110
    invoke-direct {p0, v1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->resetBrightnessLogic(I)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    invoke-virtual {p1}, Lcom/transsion/camera/manager/BrightnessStrategy;->start()V

    .line 113
    :cond_32
    iget-boolean p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mNeedCustomSetBrightness:Z

    if-eqz p1, :cond_4f

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    invoke-virtual {p1}, Lcom/transsion/camera/manager/BrightnessStrategy;->getSystemBrightness()I

    move-result p1

    const/16 v0, 0x96

    if-le p1, v0, :cond_4f

    const/high16 p1, 0x43160000    # 150.0f

    .line 115
    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->updateScreenBrightness(F)V

    return-void

    .line 119
    :cond_46
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityStartFlow:I

    .line 120
    iget-boolean p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mNeedCustomSetBrightness:Z

    if-eqz p1, :cond_4f

    .line 121
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->resetToFollowSystem()V

    :cond_4f
    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mPaused:Z

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result p0

    .line 145
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause. isScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p0, :cond_48

    .line 148
    new-instance p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;-><init>()V

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 150
    :try_start_29
    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager;->setTemporaryBrightness(IF)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p0

    .line 152
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemporaryBrightness fail: -1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method public resetToFollowSystem()V
    .registers 4

    .line 285
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetToFollowSystem, mForceSetMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_25

    .line 288
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 292
    :cond_25
    const-string p0, "resetToFollowSystem, activity is null."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public restart()V
    .registers 2

    const/4 v0, 0x1

    .line 101
    iput v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityStartFlow:I

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mPaused:Z

    return-void
.end method

.method public setScreenBrightness(I)V
    .registers 5

    .line 302
    iget v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mLimitedMaxBrightness:I

    if-le p1, v0, :cond_9

    iget-boolean v1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    if-nez v1, :cond_9

    move p1, v0

    .line 305
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mNeedCustomSetBrightness:Z

    if-eqz v0, :cond_12

    const/16 v0, 0x96

    if-le p1, v0, :cond_12

    move p1, v0

    .line 309
    :cond_12
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenBrightness finalBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mForceSetMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_4c

    .line 314
    iget-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mForceSetMode:Z

    if-eqz v0, :cond_43

    .line 315
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;I)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 325
    :cond_43
    new-instance v0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;I)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 330
    :cond_4c
    const-string p0, "setBrightness activity is null."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 4

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStopped:Z

    .line 128
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, sBrightnessAPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mSetBrightnessAPI:Lcom/transsion/camera/manager/ScreenBrightnessManager$SetBrightnessAPI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mActivityHashCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityHashCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mStartEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityStartFlow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->sAllHashCodeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityHashCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityStartFlow:I

    if-nez v0, :cond_43

    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->resetBrightnessLogic(I)V

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    invoke-virtual {p0}, Lcom/transsion/camera/manager/BrightnessStrategy;->start()V

    :cond_43
    return-void
.end method

.method public stop()V
    .registers 4

    .line 158
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop. mStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStopped:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStopped:Z

    .line 161
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->doStop()V

    :cond_22
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 179
    sget-object v0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInit. mStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStopped:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStopped:Z

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->doStop()V

    .line 185
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mStrategy:Lcom/transsion/camera/manager/BrightnessStrategy;

    invoke-virtual {v0}, Lcom/transsion/camera/manager/BrightnessStrategy;->unInit()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivity:Landroid/app/Activity;

    .line 187
    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mActivityHashCode:Ljava/lang/String;

    return-void
.end method

.method public updateScreenBrightness(F)V
    .registers 2

    float-to-int p1, p1

    .line 230
    iput p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager;->mCurrentBrightness:I

    .line 231
    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->setScreenBrightness(I)V

    return-void
.end method
