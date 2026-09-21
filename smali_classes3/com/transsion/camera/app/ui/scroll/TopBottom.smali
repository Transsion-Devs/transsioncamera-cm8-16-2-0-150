.class Lcom/transsion/camera/app/ui/scroll/TopBottom;
.super Lcom/transsion/camera/app/ui/scroll/ScrollMode;
.source "SourceFile"


# instance fields
.field private final mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    return-void
.end method


# virtual methods
.method public down(FF)V
    .registers 3

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->down(FF)V

    return-void
.end method

.method public pulling(FF)Z
    .registers 3

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->pulling(FF)Z

    move-result p0

    return p0
.end method

.method public pushing(FF)Z
    .registers 3

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->pushing(FF)Z

    move-result p0

    return p0
.end method

.method public spreadFinishedImmediate(II)Z
    .registers 4

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_d

    const/16 p1, 0x10e

    if-eq p2, p1, :cond_d

    return v0

    :cond_d
    return p0
.end method

.method public startPulling()V
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPulling()V

    return-void
.end method

.method public startPushing()V
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPushing()V

    return-void
.end method

.method public startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    return-void
.end method

.method public startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    return-void
.end method

.method public startSpreadingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Z)V
    .registers 3

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startSpreadingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Z)V

    return-void
.end method

.method public startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    return-void
.end method

.method public stopPulling()Z
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->stopPulling()Z

    move-result p0

    return p0
.end method

.method public stopPushing()Z
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/TopBottom;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->stopPushing()Z

    move-result p0

    return p0
.end method
