.class Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->startProcessStepAnim(Landroid/util/Size;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

.field final synthetic val$previewCoverLayoutParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$2;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$2;->val$previewCoverLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$2;->this$0:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->-$$Nest$fgetmPreviewCover(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$2;->val$previewCoverLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
