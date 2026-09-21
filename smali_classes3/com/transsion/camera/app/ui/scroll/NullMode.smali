.class Lcom/transsion/camera/app/ui/scroll/NullMode;
.super Lcom/transsion/camera/app/ui/scroll/ScrollMode;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;-><init>()V

    return-void
.end method


# virtual methods
.method public down(FF)V
    .registers 3

    return-void
.end method

.method public isNull()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public spreadFinishedImmediate(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public startPulling()V
    .registers 1

    return-void
.end method

.method public startPushing()V
    .registers 1

    return-void
.end method
