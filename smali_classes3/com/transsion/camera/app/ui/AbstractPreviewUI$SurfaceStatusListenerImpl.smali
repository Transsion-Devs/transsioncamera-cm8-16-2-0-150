.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceStatusListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 2

    .line 1725
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void
.end method


# virtual methods
.method public surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .registers 6

    .line 1728
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    if-ne v0, p1, :cond_9

    .line 1729
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mupdateAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    .line 1731
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_1c

    .line 1732
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_1c
    return-void
.end method

.method public surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .registers 6

    .line 1738
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    if-ne v0, p1, :cond_9

    .line 1739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mupdateAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    .line 1741
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1742
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_1a
    return-void
.end method

.method public surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V
    .registers 4

    .line 1756
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1757
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public surfaceDrawn()V
    .registers 2

    .line 1768
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1769
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDrawn()V

    .line 1771
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_1a

    .line 1772
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->inflate()V

    :cond_1a
    return-void
.end method

.method public surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V
    .registers 3

    return-void
.end method

.method public surfaceUpdated(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V
    .registers 3

    .line 1748
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/camera/app/common/IPrivacyCallback;

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/IPrivacyCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1749
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmResetPrivacyMode(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1750
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmResetPrivacyMode(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_36
    return-void
.end method
