.class final Lcom/bef/byteeffect/GPUProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bef/byteeffect/message/MessageCenter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/byteeffect/GPUProcessor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(IIILjava/lang/String;)V
    .registers 5

    .line 17
    # getter for: Lcom/bef/byteeffect/GPUProcessor;->sListener:Lcom/bef/byteeffect/GPUProcessor$Listener;
    invoke-static {}, Lcom/bef/byteeffect/GPUProcessor;->access$000()Lcom/bef/byteeffect/GPUProcessor$Listener;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 18
    # getter for: Lcom/bef/byteeffect/GPUProcessor;->sListener:Lcom/bef/byteeffect/GPUProcessor$Listener;
    invoke-static {}, Lcom/bef/byteeffect/GPUProcessor;->access$000()Lcom/bef/byteeffect/GPUProcessor$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bef/byteeffect/GPUProcessor$Listener;->onMessageReceived(IIILjava/lang/String;)V

    :cond_d
    return-void
.end method
