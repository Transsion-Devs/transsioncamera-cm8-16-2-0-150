.class public Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;,
        Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;,
        Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;,
        Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;
    }
.end annotation


# static fields
.field public static final sCapabilityMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapabilityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInited:Z

.field private mStrategy:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->sCapabilityMetadataMap:Ljava/util/Map;

    const/16 v1, 0x8

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->DEPTH_OUTPUT:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->MANUAL_3A:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;->LOGICAL_MULTI_CAMERA:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mIsInited:Z

    return-void
.end method


# virtual methods
.method public addCapability(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$CapabilityDescription;)V
    .registers 2

    .line 29
    iget-object p0, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mCapabilityList:Ljava/util/List;

    if-eqz p0, :cond_7

    .line 30
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public getDataType(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;)Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;
    .registers 2

    .line 40
    iget-object p0, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mStrategy:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;

    invoke-interface {p0, p1}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;->getDataType(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$Capability;)Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$DataType;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;)V
    .registers 3

    .line 16
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mIsInited:Z

    if-nez v0, :cond_18

    .line 17
    iget-object v0, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mCapabilityList:Ljava/util/List;

    if-nez v0, :cond_f

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mCapabilityList:Ljava/util/List;

    .line 21
    :cond_f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mStrategy:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;

    if-nez v0, :cond_15

    .line 22
    iput-object p1, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mStrategy:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;

    :cond_15
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mIsInited:Z

    :cond_18
    return-void
.end method

.method public upload()V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mStrategy:Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mCapabilityList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector$ITECameraCapabilityUploadStrategy;->upload(Ljava/util/List;)V

    .line 36
    iget-object p0, p0, Lcom/ss/android/ttvecamera/cameracapabilitycollector/TECameraCapabilityCollector;->mCapabilityList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
