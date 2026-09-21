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

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onKeyEvent(IIIII)V
    .registers 6

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ShoulderButtonCallback;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/BaseCameraActivity;

    if-eqz p0, :cond_31

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_31

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p3

    if-eqz p3, :cond_17

    goto :goto_31

    .line 341
    :cond_17
    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmPhysicalKeyManager(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    move-result-object p3

    if-eqz p3, :cond_31

    .line 343
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->doShoulderButtonAction(IIII)V

    const/16 p2, 0x2d7

    if-eq p1, p2, :cond_31

    const/16 p2, 0x2e1

    if-eq p1, p2, :cond_31

    .line 346
    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isKeyNeedProcess(I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 347
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onUserInteraction()V

    :cond_31
    :goto_31
    return-void
.end method
