.class Lcom/transsion/camera/app/ui/scroll/LeftRight;
.super Lcom/transsion/camera/app/ui/scroll/ScrollMode;
.source "SourceFile"


# instance fields
.field private final mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    return-void
.end method


# virtual methods
.method public down(FF)V
    .registers 3

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->down(FF)V

    return-void
.end method

.method public pulling(FF)Z
    .registers 3

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->pulling(FF)Z

    move-result p0

    return p0
.end method

.method public spreadFinishedImmediate(II)Z
    .registers 3

    const/4 p0, 0x1

    if-ne p1, p0, :cond_c

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_c

    const/16 p1, 0x10e

    if-eq p2, p1, :cond_c

    const/4 p0, 0x0

    :cond_c
    return p0
.end method

.method public startPulling()V
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPulling()V

    return-void
.end method

.method public startPushing()V
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPushing()V

    return-void
.end method

.method public stopPulling()Z
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->stopPulling()Z

    move-result p0

    return p0
.end method
