.class public interface abstract Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/isphidl/IISPHidlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IISPHidlServiceCallback"
.end annotation


# virtual methods
.method public abstract onCaptureAllDone()V
.end method

.method public abstract onCompleted(Lcom/transsion/camera/app/common/tzservice/TZEvent;)V
.end method

.method public abstract onServiceDied()V
.end method

.method public abstract processPreview(J)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract reConnect()V
.end method
