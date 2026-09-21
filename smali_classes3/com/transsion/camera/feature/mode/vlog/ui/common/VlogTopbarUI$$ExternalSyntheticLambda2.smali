.class public final synthetic Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->$r8$lambda$oPfsXKBHZXtlxnBe1HojvVvFHJM(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
