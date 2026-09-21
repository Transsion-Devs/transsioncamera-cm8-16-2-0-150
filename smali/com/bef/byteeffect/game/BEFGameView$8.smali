.class Lcom/bef/byteeffect/game/BEFGameView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/byteeffect/game/BEFGameView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/byteeffect/game/BEFGameView;

.field final synthetic val$idsParam:[I

.field final synthetic val$xsParam:[F

.field final synthetic val$ysParam:[F


# direct methods
.method constructor <init>(Lcom/bef/byteeffect/game/BEFGameView;[I[F[F)V
    .registers 5

    .line 485
    iput-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView$8;->this$0:Lcom/bef/byteeffect/game/BEFGameView;

    iput-object p2, p0, Lcom/bef/byteeffect/game/BEFGameView$8;->val$idsParam:[I

    iput-object p3, p0, Lcom/bef/byteeffect/game/BEFGameView$8;->val$xsParam:[F

    iput-object p4, p0, Lcom/bef/byteeffect/game/BEFGameView$8;->val$ysParam:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 488
    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView$8;->this$0:Lcom/bef/byteeffect/game/BEFGameView;

    iget-wide v0, v0, Lcom/bef/byteeffect/game/BEFGameView;->mHandle:J

    iget-object v2, p0, Lcom/bef/byteeffect/game/BEFGameView$8;->val$idsParam:[I

    iget-object v3, p0, Lcom/bef/byteeffect/game/BEFGameView$8;->val$xsParam:[F

    iget-object p0, p0, Lcom/bef/byteeffect/game/BEFGameView$8;->val$ysParam:[F

    invoke-static {v0, v1, v2, v3, p0}, Lcom/bef/byteeffect/game/NativeInterface;->touchesMove(J[I[F[F)I

    return-void
.end method
