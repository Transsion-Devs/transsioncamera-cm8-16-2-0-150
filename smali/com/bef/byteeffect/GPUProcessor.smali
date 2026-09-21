.class public Lcom/bef/byteeffect/GPUProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/byteeffect/GPUProcessor$Listener;
    }
.end annotation


# static fields
.field private static sListener:Lcom/bef/byteeffect/GPUProcessor$Listener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/bef/byteeffect/GPUProcessor$Listener;
    .registers 1

    .line 5
    sget-object v0, Lcom/bef/byteeffect/GPUProcessor;->sListener:Lcom/bef/byteeffect/GPUProcessor$Listener;

    return-object v0
.end method

.method public static destroy()V
    .registers 1

    .line 25
    invoke-static {}, Lcom/bef/byteeffect/message/MessageCenter;->destroy()V

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/bef/byteeffect/GPUProcessor;->sListener:Lcom/bef/byteeffect/GPUProcessor$Listener;

    return-void
.end method

.method public static init()V
    .registers 1

    .line 13
    invoke-static {}, Lcom/bef/byteeffect/message/MessageCenter;->init()V

    .line 14
    new-instance v0, Lcom/bef/byteeffect/GPUProcessor$1;

    invoke-direct {v0}, Lcom/bef/byteeffect/GPUProcessor$1;-><init>()V

    invoke-static {v0}, Lcom/bef/byteeffect/message/MessageCenter;->setListener(Lcom/bef/byteeffect/message/MessageCenter$Listener;)V

    return-void
.end method

.method public static setListener(Lcom/bef/byteeffect/GPUProcessor$Listener;)V
    .registers 1

    .line 30
    sput-object p0, Lcom/bef/byteeffect/GPUProcessor;->sListener:Lcom/bef/byteeffect/GPUProcessor$Listener;

    return-void
.end method
