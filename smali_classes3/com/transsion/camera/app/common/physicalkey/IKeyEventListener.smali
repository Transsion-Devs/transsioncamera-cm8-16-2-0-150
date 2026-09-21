.class public interface abstract Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;
    }
.end annotation


# virtual methods
.method public notifyKeyEvent()V
    .registers 2

    .line 9
    sget-object v0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->FROM_BROADCAST:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;->notifyKeyEvent(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;)V

    return-void
.end method

.method public abstract notifyKeyEvent(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;)V
.end method
