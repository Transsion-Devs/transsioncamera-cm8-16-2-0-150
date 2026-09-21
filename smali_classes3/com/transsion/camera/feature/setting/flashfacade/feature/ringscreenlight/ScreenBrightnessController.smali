.class Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController$MainHandler;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_FLASH_END:I = 0x2

.field private static final MSG_SCREEN_FLASH_START:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBrighten:Z

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$mhandleScreenFlashEnd(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->handleScreenFlashEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleScreenFlashStart(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->handleScreenFlashStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenBrightnessController"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController$MainHandler;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private handleScreenFlashEnd()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    goto :goto_21

    .line 95
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 96
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->invalidContext(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_21

    .line 100
    :cond_12
    instance-of p0, v0, Lcom/transsion/camera/app/QuickActivity;

    if-eqz p0, :cond_21

    .line 101
    check-cast v0, Lcom/transsion/camera/app/QuickActivity;

    invoke-virtual {v0}, Lcom/transsion/camera/app/QuickActivity;->getScreenBrightnessManager()Lcom/transsion/camera/manager/ScreenBrightnessManager;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->exitRingScreenLightMode()V

    :cond_21
    :goto_21
    return-void
.end method

.method private handleScreenFlashStart()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    goto :goto_21

    .line 78
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 79
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->invalidContext(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_21

    .line 83
    :cond_12
    instance-of p0, v0, Lcom/transsion/camera/app/QuickActivity;

    if-eqz p0, :cond_21

    .line 84
    check-cast v0, Lcom/transsion/camera/app/QuickActivity;

    invoke-virtual {v0}, Lcom/transsion/camera/app/QuickActivity;->getScreenBrightnessManager()Lcom/transsion/camera/manager/ScreenBrightnessManager;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->enterRingScreenLightMode()V

    :cond_21
    :goto_21
    return-void
.end method

.method private invalidContext(Landroid/content/Context;)Z
    .registers 3

    const/4 p0, 0x1

    if-nez p1, :cond_b

    .line 64
    sget-object p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "context is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 67
    :cond_b
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_17

    .line 68
    sget-object p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "context is not instanceof Activity"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method brightenScreen(Z)V
    .registers 3

    .line 54
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mBrighten:Z

    if-eq v0, p1, :cond_14

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mBrighten:Z

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mMainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x2

    :goto_d
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_14
    return-void
.end method

.method init(Landroid/content/Context;)V
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method unInit()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
