.class public interface abstract Lcom/transsion/campostalgo/ITZCaptureCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/campostalgo/ITZCaptureCallback$_Parcel;,
        Lcom/transsion/campostalgo/ITZCaptureCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTZCapAllDone()Z
.end method

.method public abstract onTZCaptureCompleted(Landroid/os/ParcelFileDescriptor;JII)Z
.end method

.method public abstract onTZSGetBatteryLevel()I
.end method

.method public abstract onTZSGetPackageName()Ljava/lang/String;
.end method

.method public abstract onTZSGetUserID()I
.end method
