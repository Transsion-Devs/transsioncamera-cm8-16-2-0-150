.class public interface abstract Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/ConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallBack"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public onCheckedChanged(Z)V
    .registers 2

    return-void
.end method

.method public abstract onConfirm()V
.end method

.method public abstract onDismiss()V
.end method
