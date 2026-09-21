.class Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 348
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1300(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
