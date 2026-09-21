.class Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V
    .registers 2

    .line 506
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$3;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 509
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    goto :goto_10

    .line 512
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$3;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fputmIsDetailRecyclerMoving(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Z)V

    :goto_10
    return p2
.end method
