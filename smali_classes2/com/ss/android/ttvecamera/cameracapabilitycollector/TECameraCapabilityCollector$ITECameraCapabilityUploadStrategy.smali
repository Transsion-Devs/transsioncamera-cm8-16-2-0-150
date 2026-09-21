.class public interface abstract Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITECameraCapabilityUploadStrategy"
.end annotation


# virtual methods
.method public abstract getDataType(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;)Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;
.end method

.method public abstract upload(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;",
            ">;)V"
        }
    .end annotation
.end method
