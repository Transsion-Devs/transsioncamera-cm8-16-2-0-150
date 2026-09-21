.class Lcom/bef/effectsdk/view/BEFView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/effectsdk/view/BEFView;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/effectsdk/view/BEFView;


# direct methods
.method constructor <init>(Lcom/bef/effectsdk/view/BEFView;)V
    .registers 2

    .line 636
    iput-object p1, p0, Lcom/bef/effectsdk/view/BEFView$6;->this$0:Lcom/bef/effectsdk/view/BEFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 639
    iget-object v0, p0, Lcom/bef/effectsdk/view/BEFView$6;->this$0:Lcom/bef/effectsdk/view/BEFView;

    # getter for: Lcom/bef/effectsdk/view/BEFView;->mParams:Lcom/bef/effectsdk/view/BEFView$Builder$Params;
    invoke-static {v0}, Lcom/bef/effectsdk/view/BEFView;->access$1200(Lcom/bef/effectsdk/view/BEFView;)Lcom/bef/effectsdk/view/BEFView$Builder$Params;

    move-result-object v0

    # getter for: Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mSceneKey:Lcom/bef/effectsdk/view/BEFView$BEFViewSceneKey;
    invoke-static {v0}, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->access$600(Lcom/bef/effectsdk/view/BEFView$Builder$Params;)Lcom/bef/effectsdk/view/BEFView$BEFViewSceneKey;

    move-result-object v0

    sget-object v1, Lcom/bef/effectsdk/view/BEFView$BEFViewSceneKey;->GAME:Lcom/bef/effectsdk/view/BEFView$BEFViewSceneKey;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/bef/effectsdk/view/BEFView$6;->this$0:Lcom/bef/effectsdk/view/BEFView;

    # getter for: Lcom/bef/effectsdk/view/BEFView;->mParams:Lcom/bef/effectsdk/view/BEFView$Builder$Params;
    invoke-static {v0}, Lcom/bef/effectsdk/view/BEFView;->access$1200(Lcom/bef/effectsdk/view/BEFView;)Lcom/bef/effectsdk/view/BEFView$Builder$Params;

    move-result-object v0

    # getter for: Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mKeepStatusAtPause:Z
    invoke-static {v0}, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->access$800(Lcom/bef/effectsdk/view/BEFView$Builder$Params;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_22

    .line 642
    :cond_1c
    iget-object p0, p0, Lcom/bef/effectsdk/view/BEFView$6;->this$0:Lcom/bef/effectsdk/view/BEFView;

    # invokes: Lcom/bef/effectsdk/view/BEFView;->destoryRender()V
    invoke-static {p0}, Lcom/bef/effectsdk/view/BEFView;->access$1300(Lcom/bef/effectsdk/view/BEFView;)V

    return-void

    .line 640
    :cond_22
    :goto_22
    iget-object p0, p0, Lcom/bef/effectsdk/view/BEFView$6;->this$0:Lcom/bef/effectsdk/view/BEFView;

    iget-wide v0, p0, Lcom/bef/effectsdk/view/BEFView;->mHandle:J

    invoke-static {v0, v1}, Lcom/bef/effectsdk/view/ViewControllerInterface;->onPause(J)V

    return-void
.end method
