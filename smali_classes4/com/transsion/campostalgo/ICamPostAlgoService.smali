.class public interface abstract Lcom/transsion/campostalgo/ICamPostAlgoService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/campostalgo/ICamPostAlgoService$_Parcel;,
        Lcom/transsion/campostalgo/ICamPostAlgoService$Stub;
    }
.end annotation


# virtual methods
.method public abstract configStream([Lcom/transsion/campostalgo/FeatureConfig;Lcom/transsion/campostalgo/ICamPostAlgoCallback;)Lcom/transsion/campostalgo/FeatureResult;
.end method

.method public abstract disconnect(I)I
.end method

.method public abstract flush(IJ)I
.end method

.method public abstract setBatteryState(I)I
.end method

.method public abstract setMappingInfo(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setTZCapConfig(JII)I
.end method

.method public abstract setTZCaptureCallback(Lcom/transsion/campostalgo/ITZCaptureCallback;)I
.end method
