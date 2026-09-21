.class Lcom/bef/byteeffect/view/BEFView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/byteeffect/view/BEFView;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/byteeffect/view/BEFView;


# direct methods
.method constructor <init>(Lcom/bef/byteeffect/view/BEFView;)V
    .registers 2

    .line 657
    iput-object p1, p0, Lcom/bef/byteeffect/view/BEFView$7;->this$0:Lcom/bef/byteeffect/view/BEFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 660
    iget-object v0, p0, Lcom/bef/byteeffect/view/BEFView$7;->this$0:Lcom/bef/byteeffect/view/BEFView;

    invoke-virtual {v0}, Lcom/bef/byteeffect/view/BEFView;->getNativeInited()Z

    move-result v0

    if-nez v0, :cond_e

    .line 661
    iget-object p0, p0, Lcom/bef/byteeffect/view/BEFView$7;->this$0:Lcom/bef/byteeffect/view/BEFView;

    # invokes: Lcom/bef/byteeffect/view/BEFView;->initRender()V
    invoke-static {p0}, Lcom/bef/byteeffect/view/BEFView;->access$1400(Lcom/bef/byteeffect/view/BEFView;)V

    return-void

    .line 663
    :cond_e
    iget-object p0, p0, Lcom/bef/byteeffect/view/BEFView$7;->this$0:Lcom/bef/byteeffect/view/BEFView;

    iget-wide v0, p0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    invoke-static {v0, v1}, Lcom/bef/byteeffect/view/ViewControllerInterface;->onResume(J)V

    return-void
.end method
