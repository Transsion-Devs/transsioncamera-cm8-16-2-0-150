.class Lcom/bef/byteeffect/view/BEFView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/byteeffect/view/BEFView;->setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/byteeffect/view/BEFView;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bef/byteeffect/view/BEFView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 705
    iput-object p1, p0, Lcom/bef/byteeffect/view/BEFView$10;->this$0:Lcom/bef/byteeffect/view/BEFView;

    iput-object p2, p0, Lcom/bef/byteeffect/view/BEFView$10;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/bef/byteeffect/view/BEFView$10;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 708
    iget-object v0, p0, Lcom/bef/byteeffect/view/BEFView$10;->this$0:Lcom/bef/byteeffect/view/BEFView;

    invoke-virtual {v0}, Lcom/bef/byteeffect/view/BEFView;->getNativeInited()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 709
    iget-object v0, p0, Lcom/bef/byteeffect/view/BEFView$10;->this$0:Lcom/bef/byteeffect/view/BEFView;

    iget-wide v0, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    iget-object v2, p0, Lcom/bef/byteeffect/view/BEFView$10;->val$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/bef/byteeffect/view/BEFView$10;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/bef/byteeffect/view/ViewControllerInterface;->setRenderCacheTexture(JLjava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method
