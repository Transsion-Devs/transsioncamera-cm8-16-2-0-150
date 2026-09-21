.class public abstract Lcom/transsion/camera/app/ui/scroll/ScrollMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract down(FF)V
.end method

.method public isNull()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public pulling(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public spreadFinishedImmediate(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public stopPulling()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
