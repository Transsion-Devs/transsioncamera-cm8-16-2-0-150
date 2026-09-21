.class Lcom/transsion/camera/app/ui/scroll/DownUp;
.super Lcom/transsion/camera/app/ui/scroll/ScrollMode;
.source "SourceFile"


# instance fields
.field private final mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    return-void
.end method


# virtual methods
.method public down(FF)V
    .registers 3

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->down(FF)V

    return-void
.end method

.method public pulling(FF)Z
    .registers 3

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->pulling(FF)Z

    move-result p0

    return p0
.end method

.method public pushing(FF)Z
    .registers 3

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->pushing(FF)Z

    move-result p0

    return p0
.end method

.method public startPulling()V
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPulling()V

    return-void
.end method

.method public startPushing()V
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPushing()V

    return-void
.end method

.method public startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    return-void
.end method

.method public startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    return-void
.end method

.method public startSpreadingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Z)V
    .registers 3

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startSpreadingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Z)V

    return-void
.end method

.method public startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    return-void
.end method

.method public stopPulling()Z
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->stopPulling()Z

    move-result p0

    return p0
.end method

.method public stopPushing()Z
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/DownUp;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->stopPushing()Z

    move-result p0

    return p0
.end method
