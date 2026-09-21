.class public interface abstract Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/tzservice/TZService$ICommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/tzservice/TZService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICaptureCallback"
.end annotation


# virtual methods
.method public abstract getBatteryLevel()I
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getSystemUserID()I
.end method

.method public abstract onCaptureAllDone()Z
.end method
