.class public Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;
.super Lcom/transsion/camera/manager/BrightnessStrategy;
.source "SourceFile"


# static fields
.field private static final BRIGHTNESS_RANGE_SOURCE:[I

.field private static final BRIGHTNESS_RANGE_TARGET:[I


# instance fields
.field private mBrightnessHandler:Landroid/os/Handler;

.field private final mBrightnessModeUri:Landroid/net/Uri;

.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBrightnessSpline:Lcom/transsion/camera/utils/LinearSpline;

.field private final mBrightnessUri:Landroid/net/Uri;

.field private final mManualToAutoRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$monBrightnessAuto(Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->onBrightnessAuto(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSystemBrightnessChange(Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;ZLandroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->onSystemBrightnessChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x26

    const/16 v2, 0x28

    const/16 v3, 0x96

    const/16 v4, 0xff

    .line 25
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->BRIGHTNESS_RANGE_SOURCE:[I

    const/16 v0, 0x5a

    const/16 v1, 0xc3

    const/16 v2, 0xe

    const/16 v3, 0x46

    .line 26
    filled-new-array {v2, v3, v0, v1, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->BRIGHTNESS_RANGE_TARGET:[I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;Landroid/app/Activity;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/manager/BrightnessStrategy;-><init>(Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;Landroid/app/Activity;)V

    .line 18
    const-string p1, "screen_brightness"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessUri:Landroid/net/Uri;

    .line 19
    const-string p1, "screen_brightness_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessModeUri:Landroid/net/Uri;

    .line 88
    new-instance p1, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$2;-><init>(Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;)V

    iput-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mManualToAutoRunnable:Ljava/lang/Runnable;

    .line 32
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CamAp_Brightness"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 34
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessHandler:Landroid/os/Handler;

    .line 35
    new-instance p1, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$1;

    iget-object p2, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$1;-><init>(Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private calcEnhancedBrightness(I)I
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessSpline:Lcom/transsion/camera/utils/LinearSpline;

    if-nez v0, :cond_f

    .line 163
    new-instance v0, Lcom/transsion/camera/utils/LinearSpline;

    sget-object v1, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->BRIGHTNESS_RANGE_SOURCE:[I

    sget-object v2, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->BRIGHTNESS_RANGE_TARGET:[I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/LinearSpline;-><init>([I[I)V

    iput-object v0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessSpline:Lcom/transsion/camera/utils/LinearSpline;

    .line 165
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessSpline:Lcom/transsion/camera/utils/LinearSpline;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/LinearSpline;->interpolate(I)I

    move-result v0

    .line 166
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

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private onBrightnessAuto(I)V
    .registers 3

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->calcEnhancedBrightness(I)I

    move-result p1

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mBrightnessControl:Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;

    if-eqz p0, :cond_b

    .line 146
    invoke-interface {p0, p1}, Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;->setScreenBrightness(I)V

    .line 148
    :cond_b
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setScreenBrightness(II)V

    return-void
.end method

.method private onBrightnessManual(IZ)V
    .registers 3

    if-eqz p2, :cond_9

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mBrightnessControl:Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;

    if-eqz p0, :cond_9

    .line 155
    invoke-interface {p0}, Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;->resetToFollowSystem()V

    .line 158
    :cond_9
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setScreenBrightness(II)V

    return-void
.end method

.method private onSystemBrightnessChange(ZLandroid/net/Uri;)V
    .registers 10

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSystemBrightnessChange mBrightnessHandler is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mBrightnessControl:Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;

    if-eqz v1, :cond_23

    invoke-interface {v1}, Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;->isForceSetMode()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mManualToAutoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onSystemBrightnessChange] mForceMaxMode already set max brightness."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 113
    const-string v2, "screen_brightness"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 114
    const-string v4, "screen_brightness_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 115
    iget-object v4, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onSystemBrightnessChange] selfChange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", uri:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", brightness:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mode:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_87

    if-ne v1, v4, :cond_83

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mManualToAutoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onSystemBrightnessChange] has mManualToAutoRunnable, wait it done."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_7f
    invoke-direct {p0, v2}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->onBrightnessAuto(I)V

    return-void

    .line 127
    :cond_83
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->onBrightnessManual(IZ)V

    return-void

    .line 129
    :cond_87
    iget-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessModeUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mManualToAutoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v1, :cond_99

    .line 133
    invoke-direct {p0, v2, v4}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->onBrightnessManual(IZ)V

    :cond_99
    if-ne v1, v4, :cond_a9

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[onSystemBrightnessChange] postDelayed mManualToAutoRunnable."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mManualToAutoRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a9
    return-void
.end method


# virtual methods
.method public resetBrightnessLogic(I)V
    .registers 6

    .line 76
    invoke-super {p0, p1}, Lcom/transsion/camera/manager/BrightnessStrategy;->resetBrightnessLogic(I)V

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/manager/BrightnessStrategy;->getSystemBrightness()I

    move-result p1

    .line 79
    invoke-virtual {p0}, Lcom/transsion/camera/manager/BrightnessStrategy;->getSystemBrightnessMode()I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetBrightnessLogic brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->onBrightnessAuto(I)V

    return-void

    .line 84
    :cond_30
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->onBrightnessManual(IZ)V

    return-void
.end method

.method public start()V
    .registers 5

    .line 46
    invoke-super {p0}, Lcom/transsion/camera/manager/BrightnessStrategy;->start()V

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessModeUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 54
    invoke-super {p0}, Lcom/transsion/camera/manager/BrightnessStrategy;->stop()V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 62
    invoke-super {p0}, Lcom/transsion/camera/manager/BrightnessStrategy;->unInit()V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 70
    iput-object v1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->mBrightnessHandler:Landroid/os/Handler;

    :cond_29
    return-void
.end method
