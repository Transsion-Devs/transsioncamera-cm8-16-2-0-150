.class public interface abstract Lcom/transsion/campostalgo/ICamPostAlgoCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/campostalgo/ICamPostAlgoCallback$_Parcel;,
        Lcom/transsion/campostalgo/ICamPostAlgoCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNextCapture(I)V
.end method

.method public abstract processPreview(J)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract processResult(Lcom/transsion/campostalgo/FeatureParam;)V
.end method
