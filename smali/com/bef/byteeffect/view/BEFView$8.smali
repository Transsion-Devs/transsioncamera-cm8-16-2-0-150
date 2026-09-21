.class Lcom/bef/byteeffect/view/BEFView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/byteeffect/view/BEFView;->onDestroy()V
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

    .line 676
    iput-object p1, p0, Lcom/bef/byteeffect/view/BEFView$8;->this$0:Lcom/bef/byteeffect/view/BEFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 679
    iget-object p0, p0, Lcom/bef/byteeffect/view/BEFView$8;->this$0:Lcom/bef/byteeffect/view/BEFView;

    # invokes: Lcom/bef/byteeffect/view/BEFView;->destoryRender()V
    invoke-static {p0}, Lcom/bef/byteeffect/view/BEFView;->access$1300(Lcom/bef/byteeffect/view/BEFView;)V

    return-void
.end method
