.class Lcom/bef/byteeffect/message/MessageCenter$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/message/MessageCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 214
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 219
    # invokes: Lcom/bef/byteeffect/message/MessageCenter;->handleMessage(Landroid/os/Message;)V
    invoke-static {p1}, Lcom/bef/byteeffect/message/MessageCenter;->access$000(Landroid/os/Message;)V

    return-void
.end method
