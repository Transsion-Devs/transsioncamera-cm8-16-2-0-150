.class public interface abstract Lvendor/transsion/hardware/camera/tzservice/ITZService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 421
    const-string v2, "vendor$transsion$hardware$camera$tzservice$ITZService"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/transsion/hardware/camera/tzservice/ITZService;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getOffPeakModeSupportCfg()[I
.end method

.method public abstract setAppIOOperationStart(II)I
.end method

.method public abstract setMappingInfo(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setPhoneWorkingState(II)I
.end method

.method public abstract setTZCapConfig(JII)I
.end method

.method public abstract setTZCaptureCallback(ILvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;)I
.end method

.method public abstract setTZCaptureJpegCallback(ILvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;)I
.end method
