.class Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->runViewAnim(ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

.field final synthetic val$isShow:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$rye9VtF7_aRRZmz8QYb7HIlSXlk(Landroid/view/View;Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x4

    .line 1283
    :goto_5
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Landroid/view/View;Z)V
    .registers 4

    .line 1275
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;->val$isShow:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1278
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1279
    invoke-static {}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1280
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_3a

    .line 1281
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;->val$view:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;->val$isShow:Z

    if-eqz p0, :cond_35

    const/4 p0, 0x0

    goto :goto_36

    :cond_35
    const/4 p0, 0x4

    :goto_36
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1283
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;->this$0:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;->val$view:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;->val$isShow:Z

    new-instance v1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
