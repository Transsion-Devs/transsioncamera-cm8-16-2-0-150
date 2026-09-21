.class Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/screenflash/IScreenController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ$MainHandler;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_FLASH_END:I = 0x2

.field private static final MSG_SCREEN_FLASH_START:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mMainHandler:Landroid/os/Handler;

.field private mOriginalBrightness:F


# direct methods
.method static bridge synthetic -$$Nest$monScreenFlashEndImpl(Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->onScreenFlashEndImpl(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monScreenFlashStartImpl(Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->onScreenFlashStartImpl(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenControllerImplQ"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 36
    iput v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->mOriginalBrightness:F

    .line 41
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ$MainHandler;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkCondition(Landroid/content/Context;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_b

    .line 62
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "context is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 65
    :cond_b
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_17

    .line 66
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "context is not instanceof Activity"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method private getScreenBrightness(Landroid/app/Activity;)F
    .registers 2

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_11

    .line 96
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "window is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 99
    :cond_11
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 100
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    return p0
.end method

.method private onScreenFlashEndImpl(Landroid/content/Context;)V
    .registers 5

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->checkCondition(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 87
    :cond_7
    check-cast p1, Landroid/app/Activity;

    .line 89
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFlashEnd mOriginalBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->mOriginalBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->mOriginalBrightness:F

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->setScreenBrightness(Landroid/app/Activity;F)V

    return-void
.end method

.method private onScreenFlashStartImpl(Landroid/content/Context;)V
    .registers 5

    .line 73
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->checkCondition(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 76
    :cond_7
    check-cast p1, Landroid/app/Activity;

    .line 78
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->getScreenBrightness(Landroid/app/Activity;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->mOriginalBrightness:F

    .line 79
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFlashStart mOriginalBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->mOriginalBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->setScreenBrightness(Landroid/app/Activity;F)V

    return-void
.end method

.method private sendMessage(Landroid/content/Context;I)V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setScreenBrightness(Landroid/app/Activity;F)V
    .registers 3

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_f

    .line 106
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "window is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_f
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 110
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 111
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onScreenFlashEnd(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x2

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->sendMessage(Landroid/content/Context;I)V

    return-void
.end method

.method public onScreenFlashStart(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;->sendMessage(Landroid/content/Context;I)V

    return-void
.end method
