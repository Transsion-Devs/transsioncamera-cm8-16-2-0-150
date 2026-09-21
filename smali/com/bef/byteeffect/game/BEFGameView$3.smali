.class Lcom/bef/byteeffect/game/BEFGameView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/byteeffect/game/BEFGameView;->pauseGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/byteeffect/game/BEFGameView;


# direct methods
.method constructor <init>(Lcom/bef/byteeffect/game/BEFGameView;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView$3;->this$0:Lcom/bef/byteeffect/game/BEFGameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 205
    iget-object p0, p0, Lcom/bef/byteeffect/game/BEFGameView$3;->this$0:Lcom/bef/byteeffect/game/BEFGameView;

    iget-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    .line 206
    invoke-static {v0, v1}, Lcom/bef/byteeffect/game/NativeInterface;->pause(J)I

    :cond_d
    return-void
.end method
