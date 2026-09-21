.class Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;


# direct methods
.method public static synthetic $r8$lambda$NIYLimz_-ouVAzuBEMRhZrZOQoc(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;->lambda$onTransfer$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTransfer$0()V
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$mwrapDrawable(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    return-void
.end method


# virtual methods
.method public onTransfer(Z)V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$fgetmOldValue(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Z

    move-result v0

    if-eq p1, v0, :cond_19

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->-$$Nest$fputmOldValue(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;Z)V

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method
