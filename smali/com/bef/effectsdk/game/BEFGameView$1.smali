.class Lcom/bef/effectsdk/game/BEFGameView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/effectsdk/game/BEFGameView;->setGameBundlePath(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/effectsdk/game/BEFGameView;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bef/effectsdk/game/BEFGameView;Ljava/lang/String;)V
    .registers 3

    .line 141
    iput-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView$1;->this$0:Lcom/bef/effectsdk/game/BEFGameView;

    iput-object p2, p0, Lcom/bef/effectsdk/game/BEFGameView$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView$1;->this$0:Lcom/bef/effectsdk/game/BEFGameView;

    iget-object v0, v0, Lcom/bef/effectsdk/game/BEFGameView;->mGameBundlePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/bef/effectsdk/game/BEFGameView$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_28

    .line 147
    :cond_d
    iget-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView$1;->this$0:Lcom/bef/effectsdk/game/BEFGameView;

    iget-object v1, p0, Lcom/bef/effectsdk/game/BEFGameView$1;->val$path:Ljava/lang/String;

    iput-object v1, v0, Lcom/bef/effectsdk/game/BEFGameView;->mGameBundlePath:Ljava/lang/String;

    .line 148
    invoke-virtual {v0}, Lcom/bef/effectsdk/game/BEFGameView;->getNativeInited()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 149
    iget-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView$1;->this$0:Lcom/bef/effectsdk/game/BEFGameView;

    iget-wide v0, v0, Lcom/bef/effectsdk/game/BEFGameView;->mHandle:J

    iget-object v2, p0, Lcom/bef/effectsdk/game/BEFGameView$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bef/effectsdk/game/NativeInterface;->setGameBundlePath(JLjava/lang/String;)I

    .line 150
    iget-object p0, p0, Lcom/bef/effectsdk/game/BEFGameView$1;->this$0:Lcom/bef/effectsdk/game/BEFGameView;

    const/4 v0, 0x1

    # setter for: Lcom/bef/effectsdk/game/BEFGameView;->mFirstLoopGuard:Z
    invoke-static {p0, v0}, Lcom/bef/effectsdk/game/BEFGameView;->access$102(Lcom/bef/effectsdk/game/BEFGameView;Z)Z

    :cond_28
    :goto_28
    return-void
.end method
