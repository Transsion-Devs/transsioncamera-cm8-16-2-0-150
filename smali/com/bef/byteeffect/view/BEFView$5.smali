.class Lcom/bef/byteeffect/view/BEFView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/byteeffect/view/BEFView;->dealWithTouches(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/byteeffect/view/BEFView;

.field final synthetic val$idsParam:[I

.field final synthetic val$pointerCount:I

.field final synthetic val$xsParam:[F

.field final synthetic val$ysParam:[F


# direct methods
.method constructor <init>(Lcom/bef/byteeffect/view/BEFView;[I[F[FI)V
    .registers 6

    .line 584
    iput-object p1, p0, Lcom/bef/byteeffect/view/BEFView$5;->this$0:Lcom/bef/byteeffect/view/BEFView;

    iput-object p2, p0, Lcom/bef/byteeffect/view/BEFView$5;->val$idsParam:[I

    iput-object p3, p0, Lcom/bef/byteeffect/view/BEFView$5;->val$xsParam:[F

    iput-object p4, p0, Lcom/bef/byteeffect/view/BEFView$5;->val$ysParam:[F

    iput p5, p0, Lcom/bef/byteeffect/view/BEFView$5;->val$pointerCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 587
    iget-object v0, p0, Lcom/bef/byteeffect/view/BEFView$5;->this$0:Lcom/bef/byteeffect/view/BEFView;

    iget-wide v1, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    iget-object v3, p0, Lcom/bef/byteeffect/view/BEFView$5;->val$idsParam:[I

    iget-object v4, p0, Lcom/bef/byteeffect/view/BEFView$5;->val$xsParam:[F

    iget-object v5, p0, Lcom/bef/byteeffect/view/BEFView$5;->val$ysParam:[F

    iget v6, p0, Lcom/bef/byteeffect/view/BEFView$5;->val$pointerCount:I

    invoke-static/range {v1 .. v6}, Lcom/bef/byteeffect/view/ViewControllerInterface;->touchEndEvent(J[I[F[FI)I

    return-void
.end method
