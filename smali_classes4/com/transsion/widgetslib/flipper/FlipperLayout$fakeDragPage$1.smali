.class final Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;->fakeDragPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 197
    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;->invoke(Landroid/animation/ValueAnimator;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->setAnimator$widgetsLib_release(Landroid/animation/ValueAnimator;)V

    .line 199
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$fakeDragPage$1;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    # invokes: Lcom/transsion/widgetslib/flipper/FlipperLayout;->playFakeDragAnim()V
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$playFakeDragAnim(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method
