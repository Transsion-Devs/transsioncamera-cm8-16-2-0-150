.class Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShoulderButtonCallback"
.end annotation


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 3

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onKeyEvent(IIIII)V
    .registers 6

    .line 342
    invoke-static {}, Lcom/transsion/camera/utils/FlagUtil;->getInstance()Lcom/transsion/camera/utils/FlagUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/FlagUtil;->mIsHealthMonitorButtonSupport:Z

    if-nez p3, :cond_1e

    const/16 p3, 0x2e2

    if-eq p1, p3, :cond_14

    const/16 p3, 0x2e3

    if-eq p1, p3, :cond_14

    const/16 p3, 0x2e4

    if-ne p1, p3, :cond_1e

    .line 346
    :cond_14
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onKeyEvent return, health monitor button flag is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 349
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/BaseCameraActivity;

    if-eqz p0, :cond_4f

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_4f

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p3

    if-eqz p3, :cond_35

    goto :goto_4f

    .line 353
    :cond_35
    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmPhysicalKeyManager(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    move-result-object p3

    if-eqz p3, :cond_4f

    .line 355
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->doShoulderButtonAction(IIII)V

    const/16 p2, 0x2d7

    if-eq p1, p2, :cond_4f

    const/16 p2, 0x2e1

    if-eq p1, p2, :cond_4f

    .line 358
    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isKeyNeedProcess(I)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 359
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onUserInteraction()V

    :cond_4f
    :goto_4f
    return-void
.end method
