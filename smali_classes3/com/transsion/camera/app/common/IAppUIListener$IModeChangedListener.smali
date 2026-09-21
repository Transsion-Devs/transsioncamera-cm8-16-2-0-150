.class public interface abstract Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onSwitchMode(Ljava/lang/String;)V
.end method

.method public queryCameraModeState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 43
    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0
.end method
