.class Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# instance fields
.field private final managerWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .registers 3

    .line 229
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 230
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;->managerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;->managerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-nez p0, :cond_b

    goto :goto_19

    .line 239
    :cond_b
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    :goto_19
    return-void

    .line 248
    :cond_1a
    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$mfadeOutPreviewCover(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    return-void

    .line 245
    :cond_1e
    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$mhidePreviewCover(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    return-void

    .line 241
    :cond_22
    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$mdrawBlackPreviewCover(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    return-void
.end method
